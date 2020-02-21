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
	public ModelAndView checkout(ModelAndView mav,
								@RequestParam int itemNo 
								,@RequestParam int orderCount 
								,@RequestParam("orderColor") String orderColor
								,@RequestParam("orderSize") String orderSize) {		
		
		//int itemNo = 41;
		//logger.info("itemNo={}",itemNo);
		
		List<Item> item = itemService.selectItemNumber(itemNo);
		//logger.debug("itemNo={}",itemNo);
		
		
		mav.addObject("itemList",item);
		mav.addObject("orderCount",orderCount);
		mav.addObject("orderSize",orderSize);
		mav.addObject("orderColor",orderColor);
		mav.setViewName("/shop/checkout");
		return mav;
		
	}
	
	//결제 db등록하기
	//@RequestMapping("/order/paymentsComplete")
	@RequestMapping("/order/paymentsComplete.do")
	public void paymentsComplete(Model model, HttpServletRequest request ) {
		
		
		String orderId = (String)request.getParameter("orderId"); 
		String orderPayMethod = (String)request.getParameter("payMethod");
		int orderTotalPrice = Integer.parseInt(request.getParameter("orderTotalPrice"));
		int OrderItemCount = Integer.parseInt(request.getParameter("OrderItemCount"));
		String impUid = (String)request.getParameter("imp_uid");
		String orderItemColor = (String)request.getParameter("orderItemColor");
		String orderItemSize = (String)request.getParameter("orderItemSize");
		String[] itemNoList = (String[])request.getParameterValues("itemNoList");
		int memberNo = Integer.parseInt(request.getParameter("memberNo"));
		
		
		
		logger.debug("itemNoList.length={}",itemNoList.length);
		logger.debug("OrderItemCount!@#!={}",OrderItemCount);
		logger.debug("orderItemColor!@#={}",orderItemColor);
		logger.debug("orderItemSize!@#={}",orderItemSize);
		
		for(int i=0;i<itemNoList.length;i++) {
			logger.debug("@@@@@@itemNoList[]={}",itemNoList[i]);
			
			int orderItemNo = Integer.parseInt(itemNoList[i]);
			
			OrderProduct op = new OrderProduct();
			
			op.setOrderId(orderId);
			op.setOrderItemNo(orderItemNo);
			op.setOrderItemCount(OrderItemCount);
			op.setOrderPayMethod(orderPayMethod);
			op.setOrderTotalPrice(orderTotalPrice);
			op.setOrderItemColor(orderItemColor);
			op.setOrderItemSize(orderItemSize);
			op.setImpUid(impUid);
			op.setItemNo(orderItemNo);
			op.setMemberNo(memberNo);
			
			
			logger.debug("orderProduct={}",op);
			
			int result = orderService.enrollOrderProduct(op);
			logger.debug("@@@result={}",result);
		}
		
		
		
		model.addAttribute("itemNoList={}",itemNoList);
		
		
	}
	
	
	//결제 db등록하기
	//@RequestMapping("/order/paymentsComplete")
	@RequestMapping("/shop/orderEnd.do")
	public ModelAndView paymentsComplete(ModelAndView mav, OrderProduct order) {
		
		logger.debug("order={}"+order);
		logger.debug("결제정보저장");
		Map<String, String> map = new HashMap<>();
		
		orderService.insertOrder(map);
		mav.setViewName("redirect:/cc");
		
		return mav;
	}
	
	
	
	
	
/*	//결제 후 이동
	@RequestMapping("/shop/orderEnd.do")
	*/
	
	//================하은 끝======================
}
