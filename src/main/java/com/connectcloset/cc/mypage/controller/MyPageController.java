package com.connectcloset.cc.mypage.controller;

import java.util.List;

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
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.service.MyPageService;
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
	//---------------주영 끝 시작------------------
}
