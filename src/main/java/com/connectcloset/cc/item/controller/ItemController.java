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
import org.springframework.web.bind.annotation.ResponseBody;

import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;

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
	
	
	
}
