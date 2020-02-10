package com.connectcloset.cc.mypage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.mypage.model.service.MyPageService;

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
}
