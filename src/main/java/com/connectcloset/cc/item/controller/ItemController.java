package com.connectcloset.cc.item.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;

@Controller
public class ItemController {
	
	private final static Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	@Autowired
	ItemService itemService;
	
	//===================희진 시작======================
	
	//타입별 상품 나열
	
	//새로 나온 상품
	@GetMapping("/newItem.do")
	@ResponseBody
	public List<Item> newItem(Item item) {
		List<Item> list = itemService.newItemList(item);
		return list;
	}
	
	//마지막 블로그 글
	//@GetMapping("/latestBlog.do")
	//@ResponseBody
	//public List<Blog> latestBlog(Blog blog) {
	//	List<Blog> blog = blogService.latestBlogList(blog);
		
	//	return blog;
	//}
	
	//===================희진 끝======================
}
