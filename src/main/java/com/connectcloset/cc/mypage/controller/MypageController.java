package com.connectcloset.cc.mypage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.member.controller.MemberController;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.mypage.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	MypageService mypageService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	//slf4j 추상체로 로깅
		private final static Logger logger = LoggerFactory.getLogger(MemberController.class);
		
		
		

	
		
}
