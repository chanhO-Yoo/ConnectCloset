package com.connectcloset.cc.order.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.controller.MemberController;
import com.connectcloset.cc.member.model.service.MemberService;
import com.connectcloset.cc.order.model.service.OrderService;
import com.connectcloset.cc.order.model.vo.OrderProduct;

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
	
	@Autowired
	OrderService orderService;

	//================하은 시작======================
	@RequestMapping("/shop/checkout.do")
	public ModelAndView checkout(ModelAndView mav,  @RequestParam int itemNo) {		
		
		//int itemNo = 41;
		//logger.info("itemNo={}",itemNo);
		
		List<Item> item = itemService.selectItemNumber(itemNo);
		//logger.debug("itemNo={}",itemNo);
		
		mav.addObject("itemList",item);
		mav.setViewName("/shop/checkout");
		return mav;
		
	}
	
	//결제 db등록하기
	//@RequestMapping("/order/paymentsComplete")
	@PostMapping("/order/paymentsComplete.do")
	public ModelAndView paymentsComplete(ModelAndView mav, OrderProduct order) {
		
		logger.debug("order={}"+order);
/*		logger.debug("orderId={}"+orderId);*/
		logger.debug("결제정보저장");
		Map<String, String> map = new HashMap<>();
		
		//List<OrderProduct> order_product = orderService.
		//map.put("order", order);
/*		map.put("orderId", orderId);*/
		orderService.insertOrder(map);
		mav.setViewName("redirect:/cc");
		
		return mav;
	}
	
	
/*	//결제 후 이동
	@RequestMapping("/shop/orderEnd.do")
	*/
	
	//================하은 끝======================
}
