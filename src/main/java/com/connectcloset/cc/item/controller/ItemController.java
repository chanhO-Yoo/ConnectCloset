package com.connectcloset.cc.item.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;

@Controller
public class ItemController {
	
	private final static Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	@Autowired
	ItemService itemService;
	
	@RequestMapping(value="/main/*")
	public void item() {
		
	}
	
	//===================희진 시작======================
	
	//새로 나온 상품
	@PostMapping("/newItem.do")
	@ResponseBody
	public List<Item> newItem(Item item) {
		List<Item> list = itemService.newItemList(item);
		return list;
	}
	
	//===================희진 끝======================
	
	@RequestMapping("/shop/shop-fullwide-sidebar.do")
	public void shoppage() {
		
	}
	//===================시작 끝======================
	@RequestMapping("/shop/single-product.do")
	public ModelAndView singleproduct(ModelAndView mav ,@RequestParam("itemNo") int itmeNo){

//		Item item
//		= itemService.selectOneitem(itmeNo);
//		
//	List<ItemImage> attachmentList 
//		= itemService.selectitemImagetList(itmeNo);
	
		logger.debug("itmeNo={}", itmeNo);
		
		ItemAndImageVO itemImage
		=itemService.selectOneitemImage(itmeNo);
		
//		List<ItemAndImageVO> itemImage
//		=itemService.listitemImage(itmeNo);
		
//		mav.addObject("item",item);
//		mav.addObject("attachmentList",attachmentList);
		mav.addObject("itemImage",itemImage);

		logger.debug("itemImage={}", itemImage);
		mav.setViewName("/shop/single-product");
		
		return mav;
		}
	
	//===================주영 끝======================
}
