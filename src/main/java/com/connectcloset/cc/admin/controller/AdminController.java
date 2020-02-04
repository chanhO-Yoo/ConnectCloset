package com.connectcloset.cc.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.connectcloset.cc.admin.model.service.AdminService;
import com.connectcloset.cc.item.controller.ItemController;
import com.connectcloset.cc.item.model.vo.Item;

@Controller
public class AdminController {

	private final static Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/admin/enrollItem.do")
	public void enrollItem() {
		
	}
	
	//===================찬호 시작===================
	@PostMapping("/admin/enrollItemEnd.do")
	public String enrollItemEnd(Model model, Item item) {
		logger.debug("아이템 등록 요청!!");
		logger.debug("item={}",item);
		
		int result = adminService.enrollItemEnd(item);
		logger.debug("result={}",result);
		
		model.addAttribute("msg",result>0?"등록성공":"등록실패");
		model.addAttribute("loc","/");
		
		return "common/msg";
	}
	
	//===================찬호 끝===================
}
