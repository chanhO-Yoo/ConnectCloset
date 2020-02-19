package com.connectcloset.cc.order.controller;


import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.controller.MemberController;
import com.connectcloset.cc.member.model.service.MemberService;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.order.model.service.OrderService;
import com.connectcloset.cc.order.model.vo.OrderProduct;
import com.fasterxml.jackson.annotation.JsonFormat;

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
	@ResponseBody
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
	@RequestMapping("/order/paymentsComplete.do")
	public void paymentsComplete(Model model, HttpServletRequest request ) {
		
		

		String itemNoList = (String)request.getParameter("itemNoList");
		String member = (String)request.getParameter("member");
		JSONObject json = (JSONObject)JSONValue.parse(member);
		
		
		logger.debug("itemNoList={}",itemNoList);
		logger.debug("json={}",json);
		
			
		/*String orderNo = null;
		String orderId  = request.getParameter("orderId");	
		Date orderDate = null;
		
		int orderItemNo  =  Integer.parseInt(request.getParameter("orderItemNo"));
		int orderItemCount  =  Integer.parseInt(request.getParameter("orderItemCount"));
		String orderPayMethod  = request.getParameter("orderPayMethod");
		String orderPayStatus  = request.getParameter("orderPayStatus");

		int orderTotalPrice  =  Integer.parseInt(request.getParameter("orderTotalPrice"));
		int orderUsePoint  =  Integer.parseInt(request.getParameter("orderUsePoint"));
		int orderCouponNo  =  Integer.parseInt(request.getParameter("orderCouponNo"));

		String orderReviewYN  = request.getParameter("orderReviewYN");
		String orderItemColor  = request.getParameter("orderItemColor");
		String orderItemSize  = request.getParameter("orderItemSize");
		
		
		String impUid  = request.getParameter( "impUid");
		int itemNo  =  Integer.parseInt(request.getParameter("itemNo"));
		int memberNo  =  Integer.parseInt(request.getParameter("memberNo"));
		String orderStatusNo  = request.getParameter("orderStatusNo");
		String deliveryNo  = request.getParameter("deliveryNo");
 
		String itemName  = request.getParameter("itemName");
		String orderStatus  = request.getParameter("orderStatus");*/
		
		
//		OrderProduct order = new OrderProduct(orderNo, orderId, orderDate, orderItemNo, orderItemCount, orderPayMethod, orderPayStatus, orderTotalPrice, orderUsePoint, orderCouponNo, orderReviewYN, orderItemColor, orderItemSize, impUid, itemNo, memberNo, orderStatusNo, deliveryNo, itemName, orderStatus);
//		OrderProduct order = orderService.selectOneOrderPaymentsComplete(orderNo);

		
		
		
		model.addAttribute("itemNoList={}",itemNoList);
//		logger.debug("order={}",order);
//		model.addAttribute("order",order);
		
	}
	
	
	//결제 db등록하기
	//@RequestMapping("/order/paymentsComplete")
	@RequestMapping("/shop/orderEnd.do")
	public ModelAndView paymentsComplete(ModelAndView mav, OrderProduct order) {
		
		logger.debug("order={}"+order);
		logger.debug("결제정보저장");
		Map<String, String> map = new HashMap<>();
		
		orderService.insertOrder(map);
		mav.setViewName("redirect:/shop/checkout");
		
		return mav;
	}
	
	
	
	
	
/*	//결제 후 이동
	@RequestMapping("/shop/orderEnd.do")
	*/
	
	//================하은 끝======================
}
