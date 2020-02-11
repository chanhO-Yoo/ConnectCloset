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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.cart.model.service.CartService;
import com.connectcloset.cc.cart.model.vo.Cart;
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
		List<Cart> list = cartService.cartList(memberNo);
	
		mav.addObject("list",list);
		mav.setViewName("shop/cartList");
		System.out.println("+++++++++++++++++++++++++++++++++++++++++++" + list);
		return mav;
		
	}

	// 장바구니 목록 추가
	@RequestMapping("cartInsert.do")
	public ModelAndView cartInsert(ModelAndView mav,HttpSession session,@RequestParam int itemNo, @RequestParam(defaultValue = "1" ) int item_quantity) {
		
		logger.debug("@@@@@@@@@session={}",session.getAttribute("memberLoggedIn"));
		Member member = (Member)session.getAttribute("memberLoggedIn");
		logger.debug("@@@@@@@@@memberNo={}",member.getMemberNo());
		
		logger.debug("memberNo = {adasdsadasdasdasdasdadasdasdasdasd}");
		int memberNo = member.getMemberNo();
		
		System.out.println("__" +memberNo);
		
		Map<String, Integer> map = new HashMap<>();
		
		map.put("memberNo", memberNo);
		map.put("itemNo", itemNo);
		map.put("item_quantity", item_quantity);
		
		System.out.println("============================================================");
		System.out.println(memberNo);
		System.out.println(itemNo);
		System.out.println(item_quantity);
		
		cartService.cartInsert(map);
		logger.debug("map++++++++++++++++" + map);
		
		mav.setViewName("redirect:/shop/cartList.do");
		
		return mav;
		
		
		
	}
	
	
	
	/*
	
	@RequestMapping("/shop/cartinsert.do")
	public String cartinsert(Model model ,Cart cart) {
		
		int result = cartService.cartinsert(cart);
		logger.debug("cartinsert == {}" + cart);
		
		model.addAttribute("msg",result>0?"추가성공!":"추가실패!");
		model.addAttribute("loc","/");
		
		return "common/msg";
		
	}*/
	
	
	

	/*@GetMapping("shop/cart-page.do")
	public String cartpage(Model model , @RequestParam int memberNo ,HttpSession session, HttpServletRequest request) {
		 
	
		List<Cart> cartList = new ArrayList<>();
		cartList = cartService.getCartList(memberNo);
	
		model.addAttribute("Cartlist", cartList);
		System.out.println("dsdsdsdsdsd" + cartList);
		return "shop/cart-page";
	}

	@RequestMapping("/shop/insertcart.do")
	public ModelAndView CartInsert(HttpServletRequest request, @RequestParam int itemNo, @RequestParam int itemStock) {
		
		
		ModelAndView mav = new ModelAndView();
		int memberNo = 45;
		Cart cart = new Cart();
		cart.setMemberNo(memberNo);
		cart.setItemNo(itemNo);
		cart.setItem_quantity(itemStock);
		
		int result = cartService.insertCart(cart);
		
		String loc = "/";
		String msg = "";
	
		if(result>0) {
		msg = "장바구니 추가 성공 !";
			mav.addObject("cart",cart);
		}else msg = "장바구니 추가 실패!";
		
		mav.addObject("msg" , msg);
		mav.addObject("loc", loc);
		mav.setViewName("shop/cart-page");
		
	return mav;

	}

*/
}
