package com.connectcloset.cc.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.model.exception.MemberException;
import com.connectcloset.cc.member.model.service.MemberService;
import com.connectcloset.cc.member.model.service.UserMailSendService;
import com.connectcloset.cc.member.model.vo.Member;

import oracle.jdbc.proxy.annotation.Post;

/*value로 지정한 이름의 변수들은 session에 담아둔다.*/
@SessionAttributes(value= {"memberLoggedIn"})
@Controller
public class MemberController {
	
	//slf4j 추상체로 로깅
	private final static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private UserMailSendService mailsender;

	@RequestMapping("/member/login-register.do")
	public void memberLogin() {
		
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
		
		mailsender.mailSendWithUserKey(m.getMemberEmail(),m.getMemberId(),request);
		
		model.addAttribute("msg", result>0?"등록성공":"등록실패");
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	
	// e-mail 인증 컨트롤러
	@RequestMapping(value = "member/validateKey.do", method = RequestMethod.GET)
	public ModelAndView key_alterConfirm(@RequestParam String memberId, @RequestParam String validateKey, ModelAndView mav) {

		int result = mailsender.alter_userKey_service(memberId, validateKey); // mailsender의 경우 @Autowired
		
		String msg = "";
		String loc = "";
		
		if(result>0) {
			msg = "회원가입에 성공했습니다. 홈페이지로 이동합니다.";
		}
		else {
			msg = "회원가입에 실패했습니다.";
		}
		mav.addObject("msg",msg);
		mav.addObject("loc","/");

		mav.setViewName("common/msg");
		
		return mav;
	}
	
	
	@PostMapping("/member/loginMember.do")
	public ModelAndView loginMember(ModelAndView mav, @RequestParam String memberId, @RequestParam String password, HttpSession session) {
		logger.debug("로그인 시도");
		Member m = memberService.selectOneMember(memberId);
		
		String msg = "";
		String loc = "/";
		
		if(m==null) {
			msg="존재하지 않는 아이디입니다.";
		}
		else {
			if(bcryptPasswordEncoder.matches(password, m.getMemberPassword())) {
				msg="로그인성공! "+m.getMemberName()+"님 환영합니다.";
				
				//세션에 로그인 객체 저장
				mav.addObject("memberLoggedIn",m);
			}
			else {
				msg="비밀번호가 틀렸습니다.";
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
		
	}
	
	@RequestMapping("/shop/cart-page.do")
	public void cartPage() {
		
	}
	
	@RequestMapping("/etc/about-us.do")
	public void aboutUs() {
		
	}
	
	
	
	
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
