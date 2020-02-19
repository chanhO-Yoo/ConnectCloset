package com.connectcloset.cc.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.model.service.MemberService;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.service.MyPageService;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;
import com.connectcloset.cc.order.model.service.OrderService;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;


@Controller
public class MyPageController {
	
	private final static Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@Autowired
	MyPageService myPageService;
	
	@Autowired
	OrderService orderService;

	@Autowired
	MemberService memberService;
	
	//구매후기
	
	//상품문의
	
	//1:1문의
	
	//최근 본 상품
	@GetMapping("/mypage/viewed_items.do")
	@ResponseBody
	public void viewedItems() {
		
	}
	
	//좋아요
	
	//마이 사이즈
	@PostMapping("/mypage/mysize.do")
	@ResponseBody
	public void mySize() {
		
	}
	
	
	//=================희진 시작===================
	
	//주문 내역 조회
	@RequestMapping("/mypage/mypage-order.do")
	public ModelAndView orderDetail(ModelAndView mav, @RequestParam int memberNo) {

		logger.info("member={}", memberNo);

//		List<OrderProduct> orderProduct = myPageService.selectOrderByMemberNo(memberNo);
//		logger.debug("orderProduct={}",orderProduct);
//		mav.addObject("orderProduct", orderProduct);
		Member m = myPageService.selectOrderByMemberNo(memberNo);
		logger.debug("member={}",m);
		mav.addObject("member", m);
		mav.setViewName("/mypage/mypage-order");
		return mav;
	}

	
	//=================희진 끝=====================
	
	//----------------주영  포인트 시작 -----------------
	@RequestMapping("/mypage/mypage-point.do")
	public ModelAndView pointView(ModelAndView mav , @RequestParam("memberNo") int memberNo) {
		
		logger.debug("memberNo@@@@@@={}", memberNo);
		
		List<Point> point
		= myPageService.selectListPoint(memberNo);
		

		mav.addObject("point",point);

		logger.debug("point@@@@@@={}", point);
		mav.setViewName("/mypage/mypage-point");
		
		
		return mav;
	}
	//----------------주영 포인트 끝-----------------
	
	//---------------주영 리뷰 시작------------------
	@RequestMapping("/mypage/mypage-review.do")
	public ModelAndView review(ModelAndView mav ,@RequestParam("memberNo") int memberNo ,@RequestParam("reviewWriter") String reviewWriter) {
		logger.debug("memberNo@@@@@@={}", memberNo);
		
		List<ReviewOrederList> orderReviewList =
				myPageService.selectListReview(memberNo);
		
		logger.debug("OrderReviewList@@@@@@={}", orderReviewList);

		List<ReviewList> reviewList
		=myPageService.selectReviewList(reviewWriter);
		
		logger.debug("reviewList@@@@@@={}", reviewList);
		
		mav.addObject("orderReviewList",orderReviewList);
		mav.addObject("reviewList",reviewList);
		 
		mav.setViewName("/mypage/mypage-review");
		return mav;
	}
	
	@GetMapping("/mypage/mypage-reviewEnroll.do")
	public ModelAndView reviewEnroll(ModelAndView mav,@RequestParam("orderNo") int orderNo ) {
		
		ReviewOrederList selectOnditemReview 
		=myPageService.selectOnditemReview(orderNo);
		
		mav.addObject("selectOnditemReview",selectOnditemReview);
		

		logger.debug("selectOnditemReview@@@@@@={}", selectOnditemReview);
		
		mav.setViewName("/mypage/mypage-reviewEnroll");
		
		return mav;
	}
	@PostMapping("/mypage/mypage-reviewEnrollEnd.do")
	public ModelAndView reviewEnrollEnd(ModelAndView mav ,Review re,@RequestParam(value="upFile",required=false) MultipartFile[] upFile,
										HttpServletRequest request ,@RequestParam("memberNo") int memberNo ,@RequestParam("reviewWriter") String reviewWriter) {
		logger.debug("게시물 등록 요청!");	
		logger.debug("re@@@@@@={}", re);
		String saveDirectory = request.getSession()
				  .getServletContext()
				  .getRealPath("/resources/upload/review");
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false)
			dir.mkdir();
		
		for(MultipartFile f : upFile) {
			if(!f.isEmpty()) {
				//파일명 재생성
				String originalFileName = f.getOriginalFilename();
				String ext = originalFileName.substring(originalFileName.lastIndexOf("."));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
				int rndNum = (int)(Math.random()*1000);
				
				//서버컴퓨터에 파일저장
				try {   
					f.transferTo(new File(saveDirectory+"/"+originalFileName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				
				re.setReviewImage(originalFileName);
			}
		}
				
			    
				int result = myPageService.insertReview(re);
				
				//3. view단 처리		
			
				mav.setViewName("redirect:/mypage/mypage-review.do?memberNo="+memberNo+"&"+"reviewWriter="+reviewWriter);
		
		
		
	
		return mav;
	}
	@PostMapping("/mypage/mypage-reviewDelete.do")
	public ModelAndView reviewDelete(ModelAndView mav ,@RequestParam("reviewNo") int reviewNo,@RequestParam("memberNo") int memberNo ,@RequestParam("reviewWriter") String reviewWriter) {
		
		
		
		int result =myPageService.deleteReview(reviewNo);

		
		//3. view단 처리		
	
		mav.setViewName("redirect:/mypage/mypage-review.do?memberNo="+memberNo+"&"+"reviewWriter="+reviewWriter);
		
		
		
		
		return mav;
	}
	
	
	//---------------주영 리뷰  끝 ------------------
	//---------------주영 1:1 문의  시작 ------------------
	
	

	
	@RequestMapping("/mypage/mypage-pQnA.do")
	public ModelAndView mypagepQnAList(ModelAndView mav ,@RequestParam(defaultValue="1") int cPage,@RequestParam("memberNo") int memberNo) {
		
	final int numPerPage = 10;
		
		List<PersonalQna> list = myPageService.selectMypagePQnaList(cPage,numPerPage,memberNo);
		logger.debug("list={}",list);
		
		int totalContents = myPageService.selectMypagePQnaListCount(memberNo);
		logger.debug("totalBoardCount={}",totalContents);
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.setViewName("/mypage/mypage-pQnA");
		
		return mav;
	}
	
	@RequestMapping("mypage/mypage-pQnAForm.do")
	public ModelAndView mypagepQnAForm(ModelAndView mav) {
		
		
		mav.setViewName("/mypage/mypage-pQnAForm");
		return mav;
	}
	
	@PostMapping("/mypage/mypage-pQnAFormEnd.do")
	public ModelAndView mypagepQnAFormEnd(ModelAndView mav ,PersonalQna pQnA ,@RequestParam("memberNo") int memberNo) {
		
		logger.debug("pQnA={}",pQnA);
		int result
		=myPageService.mypagepQnAFormEnd(pQnA);
		
		
		logger.debug("result={}",result);
		
		mav.addObject("result", result);
		mav.setViewName("redirect:/mypage/mypage-pQnA.do?memberNo="+memberNo);
		return mav;
	}
	
	
	@PostMapping("/mypage/mypage-pQnADelete.do")
	public ModelAndView pQnADelete(ModelAndView mav ,@RequestParam("pQnaNo") int pQnaNo,@RequestParam("memberNo") int memberNo  ) {
		
		
		int result=
		 myPageService.deletepQnA(pQnaNo);
		mav.addObject("result", result);
		
		//3. view단 처리		
		logger.debug("result={}",result);
		mav.setViewName("redirect:/mypage/mypage-pQnA.do?memberNo="+memberNo);
		
		
		
		
		return mav;
	}
	
	@RequestMapping("/mypage/mypage-pQnAEnroll.do")
	public ModelAndView pQnAEnroll(ModelAndView mav ,@RequestParam("pQnaNo") int pQnaNo ,PersonalQna pQnA ) {
		
		
		
		pQnA =myPageService.selectOneEnrollQnA(pQnaNo);

		
		//3. view단 처리		
	
		
		mav.addObject("pQnA", pQnA);
		
		mav.setViewName("/mypage/mypage-pQnAEnroll");
		
		return mav;
	}
	@PostMapping("/mypage/mypage-pQnAEnrollEnd.do")
	public ModelAndView pQnAEnrollEnd(ModelAndView mav ,@RequestParam("memberNo") int memberNo ,PersonalQna pQnA  ) {
		
		
		int result=
		 myPageService.pQnAEnrollEnd(pQnA);
		
		mav.addObject("result", result);
		
		//3. view단 처리		
	
		
		mav.setViewName("redirect:/mypage/mypage-pQnA.do?memberNo="+memberNo);
		
		
		
		
		return mav;
	}
	
	@RequestMapping("/mypage/mypage-pQnAans.do")
	public ModelAndView mypagePQnaAns(ModelAndView mav, @RequestParam int pQnaNo) {
		
		PersonalQna pQna = myPageService.selectOneEnrollQnA(pQnaNo);
		logger.debug("pQna={}",pQna);
		
		List<PersonalQnaAns> pQnaAnsList = myPageService.mypagePQnaAns(pQnaNo);
		logger.debug("pQnaAnsList={}",pQnaAnsList);
		
		mav.addObject("pQna",pQna);
		mav.addObject("pQnaAnsList",pQnaAnsList);
		
		mav.setViewName("/mypage/mypage-pQnAans");
		
		return mav;
	}
	
	//---------------주영 1:1 문의  끝 ------------------
}
