package com.connectcloset.cc.mypage.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.model.service.MemberService;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.mypage.model.service.MyPageService;
import com.connectcloset.cc.order.model.service.OrderService;
import com.connectcloset.cc.order.model.vo.OrderProduct;

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
	
	//좋아요
	
	//마이 사이즈

	
	
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
}
