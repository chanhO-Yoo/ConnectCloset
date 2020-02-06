package com.connectcloset.cc.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.kakao.KakaoAPI;
import com.connectcloset.cc.member.model.service.MemberService;
import com.connectcloset.cc.member.model.service.UserMailSendService;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.member.naver.bo.NaverLoginBO;
import com.github.scribejava.core.model.OAuth2AccessToken;

/*value로 지정한 이름의 변수들은 session에 담아둔다.*/
@SessionAttributes(value= {"memberLoggedIn"})
@Controller
public class MemberController {
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	/*카카오 api*/
	 @Autowired
	 private KakaoAPI kakao;
	
	//slf4j 추상체로 로깅
	private final static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private UserMailSendService mailsender;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	@RequestMapping(value = "/member/login-register.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
	/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
	String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
	//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
	//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
	logger.debug("네이버:",naverAuthUrl);
	//네이버
	model.addAttribute("url", naverAuthUrl);

	
	return "member/login-register";
	
	}
	//카카오 로그인
	 @RequestMapping(value="/kakaologin")
	 public String login(@RequestParam("code") String code, HttpSession session){
		 	//카카오
			String access_Token = kakao.getAccessToken(code);
			
			HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
			
			logger.debug("카카오 토큰:",access_Token);
			
			//클라이언트 이메일이 존재할때 세션에 이메일과 토큰 등록
			  if (userInfo.get("email") != null) {
			        //session.setAttribute("userId", userInfo.get("email"));
			        session.setAttribute("userName", userInfo.get("nickname"));

			        session.setAttribute("access_Token", access_Token);
			    }
	        return "/member/login-register";
	    }
	
	
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
	logger.debug("여기는 callback");
	OAuth2AccessToken oauthToken;
	oauthToken = naverLoginBO.getAccessToken(session, code, state);
	//1. 로그인 사용자 정보를 읽어온다.
	apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
	logger.debug("유져정보={}",apiResult);
	/** apiResult json 구조
	{"resultcode":"00",
	"message":"success",
	"response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
	**/
	//2. String형식인 apiResult를 json형태로 바꿈
	JSONParser parser = new JSONParser();
	Object obj = parser.parse(apiResult);
	JSONObject jsonObj = (JSONObject) obj;
	//3. 데이터 파싱
	//Top레벨 단계 _response 파싱
	JSONObject response_obj = (JSONObject)jsonObj.get("response");
	//response의 nickname값 파싱
	String nickname = (String)response_obj.get("name");
	logger.debug("nickname={}",nickname);
	//4.파싱 닉네임 세션으로 저장
	session.setAttribute("sessionId",nickname); //세션 생성
	model.addAttribute("result", apiResult);
	return "/member/login-register";
	}
	
	
	//로그아웃
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session, SessionStatus sessionStatus)throws IOException {
	System.out.println("여기는 logout");
//	if(session!=null) {
//		
//		session.invalidate();
//	}
	
	if(!sessionStatus.isComplete()) {
		sessionStatus.setComplete();
	}
	//카카오
	if(session!=null) {
		
	  kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	    session.removeAttribute("access_Token");
	    session.removeAttribute("userId");
	}
	return "redirect:/";
	}
	
	

	
	@PostMapping("/member/enrollMember.do")
	public String enrollMember(Model model, Member m, HttpServletRequest request) {
		logger.debug("회원등록요청");
		String rawPwd = m.getMemberPassword();
		logger.debug("Member={}",m);
		logger.debug("rawPwd={}",rawPwd);
		String encryptPwd = bcryptPasswordEncoder.encode(rawPwd);
		
		m.setMemberPassword(encryptPwd);
		
		int result = memberService.enrollMember(m);
		logger.debug("result= {}",result);
		
		mailsender.mailSendWithUserKey(m.getMemberEmail(),m.getMemberEmail(),request);
		
		model.addAttribute("msg", result>0?"회원가입 성공. 이메일 인증을 해주세요.":"등록실패. 다시 시도해주세요.");
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	
	// e-mail 인증 컨트롤러
	@RequestMapping(value = "member/validateKey.do", method = RequestMethod.GET)
	public ModelAndView key_alterConfirm(@RequestParam String memberEmail, @RequestParam String validateKey, ModelAndView mav) {

		int result = mailsender.alter_userKey_service(memberEmail, validateKey); // mailsender의 경우 @Autowired
		
		String msg = "";
		String loc = "/";
		
		if(result>0) {
			msg = "회원가입에 성공했습니다. 홈페이지로 이동합니다.";
		}
		else {
			msg = "회원가입에 실패했습니다.";
		}
		mav.addObject("msg",msg);
		mav.addObject("loc",loc);

		mav.setViewName("common/msg");
		
		return mav;
	}
	
	
	@PostMapping("/member/loginMember.do")
	public ModelAndView loginMember(ModelAndView mav, @RequestParam String memberEmail, @RequestParam String password, HttpSession session) {
		logger.debug("로그인 시도");
		Member m = memberService.selectOneMember(memberEmail);
		
		String msg = "";
		String loc = "/";
		
		if(m==null) {
			msg="존재하지 않는 아이디입니다.";
		}
		else {
			logger.debug("Validate Key = {}",m.getMemberValidateKey());
			logger.debug("boolean = {}",m.getMemberValidateKey());
			if(!m.getMemberValidateKey().equals("Y")) {
				msg="이메일 인증을 해주세요.";
			}
			else {
				logger.debug("여기까지는 들어왔다@@@@@@@@@@@@@@@");
				if(bcryptPasswordEncoder.matches(password, m.getMemberPassword())) {
					msg="로그인성공! "+m.getMemberName()+"님 환영합니다.";
					
					//세션에 로그인 객체 저장  
					mav.addObject("memberLoggedIn",m);
				}
				else {
					msg="비밀번호가 틀렸습니다.";
				}
			}
		}
		
		mav.addObject("msg",msg);
		mav.addObject("loc",loc);
		
		mav.setViewName("common/msg");
		
		
		return mav;
	}
	
	@RequestMapping("/etc/contact-us.do")
	public void contactUs() {
		
	}
	
	@RequestMapping("/shop/checkout.do")
	public void checkout() {		
		System.out.println("test★★★★★★★");
	}
	
	@RequestMapping("/shop/cart-page.do")
	public void cartPage() {
		
	}
	
	@RequestMapping("/etc/about-us.do")
	public void aboutUs() {
		
	}
	//회원 수정 주영시작
	
	@RequestMapping("/member/memberUpdateForm.do")
	public void memberUpdateForm() {
		
	}
	@RequestMapping("/member/memberUpdate.do")
   	public ModelAndView memberUpdate(ModelAndView mav, Member member){
   		
   		logger.debug("member={}",member);
   		
   		String rawPwd = member.getMemberPassword();
		logger.debug("rawPwd={}",rawPwd);
		String encryptPwd = bcryptPasswordEncoder.encode(rawPwd);
		
		member.setMemberPassword(encryptPwd);
   		
		logger.debug("member={}",member);
   		//1.비지니스로직 실행
   		int result = memberService.updateMember(member);
   		
   		logger.debug("회원수정 결과@@@@@@@@@={}",result);
   		//2.처리결과에 따라 view단 분기처리
   		String loc = "/"; 
   		String msg = "";
   		if(result>0){ 
   			msg="회원정보수정성공!";
   			mav.addObject("memberLoggedIn", member);
   		}
   		else msg="회원정보수정실패!";
   		
   		mav.addObject("msg", msg);
   		mav.addObject("loc", loc);
   		mav.setViewName("common/msg");
   		
   		return mav;
   	}
	// 주영 끝
	
	//수업자료 ============
	
	
	/*//리턴 주소와 매핑주소가 가아 return타입을 void로 지정
	@RequestMapping("/member/memberEnroll.do")
	public void memberEnroll() {
		
		
	}
	
	@RequestMapping(value="/member/memberEnrollEnd.do", method=RequestMethod.POST)
	@PostMapping("/member/memberEnrollEnd.do")
	public String memberEnrollEnd(Model model, Member member) {
		logger.debug("회원등록요청");
		String rawPassword = member.getPassword();
		String encryptedPassword = bcryptPasswordEncoder.encode(rawPassword);
		logger.debug("rawPassword={}"+rawPassword);
		logger.debug("encryptedPassword={}"+encryptedPassword);
		
		//비밀번호 암호화 처리
		member.setPassword(encryptedPassword);
		
		
		int result = memberService.insertMember(member);
		logger.debug("result@Controller={}"+result);
		
		//3.view model : view에서 참조할 수 있는 Map객체
		model.addAttribute("msg", result>0?"등록성공":"등록실패");
		model.addAttribute("loc","/");
		
		return "common/msg";
	}
	
	*//**
	 * Model은 mvc패턴의 m(model)이 아니라 viewModel을 가리킨다.
	 * view단에서 처리할 데이터저장소, 하나의 Map 객체.(key - value형식)
	 * 
	 * ModelAndView : viewName과 model을 한번에 처리하는 객체
	 * ModelMap : viewName을 리턴
	 * Model : viewName을 리턴
 	 * 
	 *//*
	@PostMapping("/member/memberLogin.do")
	public String memberLogin(@RequestParam String memberId, @RequestParam String password, Model model, HttpSession session) {
	
		//1. 업무로직
		Member m = memberService.selectOneMember(memberId);
		System.out.println("m@controller="+m);
		
		String msg = "";
		String loc = "/";
		//로그인 분기 처리
		if(m==null) {
			msg="존재하지 않는 아이디입니다.";
		}
		else {
			//DB의 비밀번호와 입력한 비밀번호의 일치여부 확인
			if(bcryptPasswordEncoder.matches(password, m.getPassword())) {
				msg="로그인 성공!";
				
				//세션에 로그인한 Member객체 저장
				//session.setAttribute("memberLoggedIn", m);
				//model에 로그이한 Member객체 저장(로그인 성공이 뜨고 로그인이 풀려있다. = requset에 담겨있기 때문에 풀린다.)
				model.addAttribute("memberLoggedIn", m);
			}
			else {
				msg="비밀번호가 틀렸습니다.";
			}
		}
		
		//2. view모델 처리
		
		model.addAttribute("msg",msg);
		model.addAttribute("loc",loc);
		
		return "common/msg";
	}
	
	ModelAndView객체로 처리
	@PostMapping("/member/memberLogin.do")
	public ModelAndView memberLogin(@RequestParam String memberId, @RequestParam String password, ModelAndView mav, HttpSession session) {
	
		try {
			//1. 업무로직
			Member m = memberService.selectOneMember(memberId);
			logger.debug("m={}",m);
			
			String msg = "";
			String loc = "/";
			//로그인 분기 처리
			if(m==null) {
				msg="존재하지 않는 아이디입니다.";
			}
			else {
				//DB의 비밀번호와 입력한 비밀번호의 일치여부 확인
				if(bcryptPasswordEncoder.matches(password, m.getPassword())) {
					msg="로그인 성공!";
					
					//세션에 로그인한 Member객체 저장
					//session.setAttribute("memberLoggedIn", m);
					//model에 로그이한 Member객체 저장(로그인 성공이 뜨고 로그인이 풀려있다. = requset에 담겨있기 때문에 풀린다.)
					mav.addObject("memberLoggedIn", m);
				}
				else {
					msg="비밀번호가 틀렸습니다.";
				}
			}
			
			//2. view모델 처리
			mav.addObject("msg",msg);
			mav.addObject("loc",loc);
			
			//viewName지정
			mav.setViewName("common/msg");
			
//			if(true) throw new RuntimeException("내가 던진 로그인 오류");
			
		} catch(Exception e) {
			logger.error("로그인 오류!",e);
			
			throw new MemberException("회원관리 오류!",e);
		}
		
		return mav;
	}
	
	
	
	
	*//**
	 * @SessionAttribute를 이용해서 모델에 속성을 저장한 경우는
	 * SessionStatus객체의 setComplete메서드를 통해 세션 폐기.
	 * 
	 * 기존방식 HttpSession.setAttribute한 경우에는
	 * HttpSession.invalidate메서드로 세션 폐기한다.
	 * 
	 *//*
	
	@RequestMapping("/member/memberLogout.do")
	public String memberLogout(SessionStatus sessionStatus) {
		
		//session invalidate사용했었다.
		//setComplete 메서드 호출로 해당 세션 폐기
		if(!sessionStatus.isComplete()) {
			sessionStatus.setComplete();
		}
		
		//index페이지로 redirect처리
		return "redirect:/";
	}
	
//	@RequestMapping(value="/member/memberView.do", method= {RequestMethod.POST, RequestMethod.GET})
	@RequestMapping("/member/memberView.do")
	public String memberView(@RequestParam String memberId, Model model) {
		
		logger.debug("memberId={}"+memberId);
		Member m = memberService.selectOneMember(memberId);
		
		model.addAttribute("m",m);
		
		return "member/memberView";
	}
	
	@PostMapping("/member/memberUpdate.do")
	public String memberUpdate(Model model, Member member) {
		logger.debug("member={}"+member);
		
		int result = memberService.updateMember(member);
		logger.debug("updateResult={}"+result);
		
		Member m = memberService.selectOneMember(member.getMemberId());
		
		model.addAttribute("m",m);
		
		return "member/memberView";
	}*/
	
}
