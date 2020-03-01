package com.connectcloset.cc.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.cart.model.service.CartService;
import com.connectcloset.cc.cart.model.vo.Cart2;
import com.connectcloset.cc.member.model.vo.Member;

@Controller
@RequestMapping("/shop/*")
public class CartController {

	private final static Logger logger = LoggerFactory.getLogger(CartController.class);

	@Autowired
	CartService cartService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 장바구니 목록 조회
	@RequestMapping("cartList.do")
	public ModelAndView cartList(HttpSession session, ModelAndView mav) {
		
		logger.debug("@@@@@@@@@session={}",session.getAttribute("memberLoggedIn"));
		Member member = (Member)session.getAttribute("memberLoggedIn");
		logger.debug("@@@@@@@@@memberNo={}",member.getMemberNo());
		
		logger.debug("memberNo = {adasdsadasdasdasdasdadasdasdasdasd}");
		int memberNo = member.getMemberNo();
		logger.debug("memberNo = {}" + memberNo);
		Map<String , Object> map = new HashMap<>();
		List<Cart2> list = cartService.cartList(memberNo);
	
		mav.addObject("list",list);
		mav.setViewName("shop/cartList");
		System.out.println("+++++++++++++++++++++++++++++++++++++++++++" + list);
		return mav;
		
	}

	// 장바구니 목록 추가
	@RequestMapping("cartInsert.do")
	public ModelAndView cartInsert(ModelAndView mav,HttpSession session,@RequestParam int itemNo, @RequestParam(defaultValue = "1" ) int item_quantity) {
		
		Member member = (Member)session.getAttribute("memberLoggedIn");
		
		int memberNo = member.getMemberNo();
		
		System.out.println("__intsert" +memberNo);
		
		Map<String, Integer> map = new HashMap<>();
		
		map.put("memberNo", memberNo);
		map.put("itemNo", itemNo);
		map.put("item_quantity", item_quantity);
	
		cartService.cartInsert(map);
		
		mav.setViewName("redirect:/shop/cartList.do");
		
		return mav;
		
		
		
	}
	
	//장바구니 목록 삭제
	@RequestMapping("cartDelete.do")
	public ModelAndView cartDelete( ModelAndView mav,HttpSession session,@RequestParam int cartNo) {
		
		logger.debug("@@@@@@@@@session={}",session.getAttribute("memberLoggedIn"));
		Member member = (Member)session.getAttribute("memberLoggedIn");
		logger.debug("@@@@@@@@@memberNo={}",member.getMemberNo());
		
		int memberNo = member.getMemberNo();
		
		Map<String, Integer> map = new HashMap<>();
		map.put("memberNo", memberNo);
		map.put("cartNo", cartNo);
		
		cartService.cartDelete(map);
		logger.debug("map++++++++++++++++" + map);
		mav.setViewName("redirect:/shop/cartList.do");
			
		return mav;
			
	}



	
	
	
	
	
	
	
}
