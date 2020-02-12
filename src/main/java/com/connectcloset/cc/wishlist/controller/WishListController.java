package com.connectcloset.cc.wishlist.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.wishlist.model.service.WishListService;
import com.connectcloset.cc.wishlist.model.vo.WishList;

@Controller
@RequestMapping("/shop/*")
public class WishListController {
	
	private final static Logger logger = LoggerFactory.getLogger(WishListController.class);
	
	@Autowired
	WishListService wishlistService;
	
	//위시리스트 목록 조회
	@RequestMapping("wishlist.do") 
	public ModelAndView wishlist(HttpSession session, ModelAndView mav ) {
		
		logger.debug("@@@@@@@@@session={}",session.getAttribute("memberLoggedIn"));
		Member member = (Member)session.getAttribute("memberLoggedIn");
		logger.debug("@@@@@@@@@memberNo={}",member.getMemberNo());
		
		logger.debug("memberNo = {adasdsadasdasdasdasdadasdasdasdasd}");
		int memberNo = member.getMemberNo();
		
		Map<String , Object> map = new HashMap<>();
		List<WishList> list = wishlistService.wishlist(memberNo);
		
		mav.addObject("list",list);
		mav.setViewName("shop/wishlist");
		System.out.println("+++++++++++++++++++++++++++++++++++++++++++" + list);
		
		return mav;
		
	}
	
	//위시리스트 목록 추가
	@RequestMapping("wishlistInsert.do")
	public ModelAndView wishlistInsert(ModelAndView mav, HttpSession session, @RequestParam int itemNo) {
	
		logger.debug("@@@@@@@@@session={}",session.getAttribute("memberLoggedIn"));
		Member member = (Member)session.getAttribute("memberLoggedIn");
		logger.debug("@@@@@@@@@memberNo={}",member.getMemberNo());
		
		logger.debug("memberNo = {}");
		int memberNo = member.getMemberNo();
		
		System.out.println("__" +memberNo);
		
		Map<String, Integer> map = new HashMap<>();
		map.put("memberNo", memberNo);
		map.put("itemNo", itemNo);
		
		System.out.println(memberNo);
		System.out.println(itemNo);
		
		wishlistService.wishlistInsert(map);
		
		logger.debug("map++++++++++++++++" + map);
		
		mav.setViewName("redirect:/shop/wishlist.do");
		
		return mav;	
	}
	


}
