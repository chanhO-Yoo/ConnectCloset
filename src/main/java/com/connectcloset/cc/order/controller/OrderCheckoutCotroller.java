package com.connectcloset.cc.order.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.controller.MemberController;
import com.connectcloset.cc.member.model.service.MemberService;

/*value로 지정한 이름의 변수들은 session에 담아둔다.*/
@SessionAttributes(value= {"memberLoggedIn"})
//@RequestMapping("/shop")
//@RestController //이 클래스의 모든 메소드는 @ResponseBody로 처리한다.
@Controller
public class OrderCheckoutCotroller {

	
	private final static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	ItemService itemService;
	
	//==하은시작
	@RequestMapping("/shop/checkout.do")
	public ModelAndView checkout(ModelAndView mav) {		
		int itemNo = 41;
		
		logger.info("itemNo={}",itemNo);
		
		List<Item> item = itemService.selectItemNumber(itemNo);
		//Item item = null;
		mav.addObject("itemList",item);
		
		/* if(item==null)
			 item =(List<Item>) new Item();
		*/
	
		mav.setViewName("/shop/checkout");
		return mav;
		
	}
	
	//==하은 끝
}
