package com.connectcloset.cc.order.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.controller.MemberController;
import com.connectcloset.cc.member.model.service.MemberService;
import com.connectcloset.cc.member.model.vo.Member;

/*value로 지정한 이름의 변수들은 session에 담아둔다.*/
@SessionAttributes(value= {"memberLoggedIn"})
@Controller

public class OrderCheckoutCotroller {

	
	private final static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	

	/*@RequestMapping("/shop/checkout.do")
	public ModelAndView checkOut(@RequestParam("memberId") 
	
		String memberId, Model model,
			ModelAndView mav,HttpSession session) {
		
		model.addAttribute("memberid",memberId);
		
		System.out.println("오더컨트롤러모델"+memberId);

		//ModelAndView mav = new ModelAndView();
		
		System.out.println("오더컨트롤러MAV"+memberId);
		
		mav.addObject("member",memberService.selectOneMember(memberId));
		mav.setViewName("/shop/checkout.do");
		return mav;
		
	}*/
	
/*	@RequestMapping("/shop/checkout.do")
	public String checkOut(@RequestParam("memberId") String memberId, Model model) {
		
		Member member = new Member();
		member.setMemberId(memberId);
		model.addAttribute("memberid",memberId);
		System.out.println("오더컨트롤러모델"+memberId);
		return "/shop/checkout.do";
	}*/
	
	
	/*@RequestMapping("/shop/checkout.do")
	public ModelAndView memberView(@RequestParam String memberId){
		ModelAndView mav = new ModelAndView();
		mav.addObject("member",memberService.selectOneMember(memberId));
		mav.setViewName("member/memberView");
		return mav;
	}*/
	
	/*@RequestMapping(value="/order/checkout.do",method=RequestMethod.POST)
	public void checkout(Model model, @RequestParam("orderNo") int orderNo) {
		
		logger.debug("요청");			
	}*/
	
}
