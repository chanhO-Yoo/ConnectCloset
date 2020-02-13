package com.connectcloset.cc.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.service.MyPageService;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;


@Controller
public class MyPageController {
	
	private final static Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@Autowired
	MyPageService myPageSerivce;
	
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
	@PostMapping("/mypage/order/detail.do")
	public ModelAndView orderDetail(ModelAndView mav, Order order) {
		return mav;
	}
	
	//=================희진 끝=====================
	
	//----------------주영  포인트 시작 -----------------
	@RequestMapping("/mypage/mypage-point.do")
	public ModelAndView pointView(ModelAndView mav , @RequestParam("memberNo") int memberNo) {
		
		logger.debug("memberNo@@@@@@={}", memberNo);
		
		List<Point> point
		= myPageSerivce.selectListPoint(memberNo);
		

		mav.addObject("point",point);

		logger.debug("point@@@@@@={}", point);
		mav.setViewName("/mypage/mypage-point");
		
		
		return mav;
	}
	//----------------주영 포인트 끝-----------------
	
	//---------------주영 리뷰 시작------------------
	@RequestMapping("/mypage/mypage-review.do")
	public ModelAndView review(ModelAndView mav ,@RequestParam("memberNo") int memberNo) {
		logger.debug("memberNo@@@@@@={}", memberNo);
		
		List<ReviewOrederList> orderReviewList =
				myPageSerivce.selectListReview(memberNo);
		
		logger.debug("OrderReviewList@@@@@@={}", orderReviewList);
		
		mav.addObject("orderReviewList",orderReviewList);
		 
		mav.setViewName("/mypage/mypage-review");
		return mav;
	}
	
	@GetMapping("/mypage/mypage-reviewEnroll.do")
	public ModelAndView reviewEnroll(ModelAndView mav,@RequestParam("orderNo") int orderNo ) {
		
		ReviewOrederList selectOnditemReview 
		=myPageSerivce.selectOnditemReview(orderNo);
		
		mav.addObject("selectOnditemReview",selectOnditemReview);
		

		logger.debug("selectOnditemReview@@@@@@={}", selectOnditemReview);
		
		mav.setViewName("/mypage/mypage-reviewEnroll");
		
		return mav;
	}
	@PostMapping("/mypage/mypage-reviewEnrollEnd.do")
	public ModelAndView reviewEnrollEnd(ModelAndView mav ,Review re,@RequestParam(value="upFile",required=false) MultipartFile[] upFile,
										HttpServletRequest request) {
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
					f.transferTo(new File(saveDirectory));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				
				re.setReviewImage(originalFileName);
			}
		}
				
			    
				int result = myPageSerivce.insertReview(re);
				
				//3. view단 처리		
				mav.addObject("msg", result>0?"게시물등록 성공!":"게시물등록 실패!");
				mav.addObject("loc", "/mypage/mypage-review.do");
				mav.setViewName("common/msg");
		
		
		
	
		return mav;
	}
	
	
	//---------------주영 끝 시작------------------
}
