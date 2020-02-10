package com.connectcloset.cc.item.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.admin.model.service.AdminService;
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
	
	
	
	//===================윤지 시작=====================
	@RequestMapping("/shop/shopItemList.do")
	public ModelAndView itemList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {

		final int numPerPage = 9;
		
		List<ItemAndImageVO> list = itemService.selectItemAndImageList(cPage, numPerPage);
		logger.debug("list={}", list);
		
		int totalContents = itemService.selectItemCount();
		logger.debug("totalBoardCount={}", totalContents);
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.setViewName("shop/shopItemList");
		
		return mav;
	
	}
	
	
	//===================윤지 끝=====================
}
