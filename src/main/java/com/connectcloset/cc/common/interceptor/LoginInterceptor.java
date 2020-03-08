package com.connectcloset.cc.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.connectcloset.cc.cart.controller.CartController;
import com.connectcloset.cc.member.model.vo.Member;


public class LoginInterceptor extends HandlerInterceptorAdapter {

	
	private final static Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//현재 member객체 없어서 주석처리해둠
		HttpSession session = request.getSession();
		Member memberLoggedIn = (Member)session.getAttribute("memberLoggedIn");
		
		logger.debug("memberLoggedIn={}",memberLoggedIn);
		
		if(memberLoggedIn == null) {
			String msg = "로그인 후 이용하세요.";
			String loc = "/";
			
			request.setAttribute("msg", msg);
			request.setAttribute("loc", loc);
			
			request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp").forward(request, response);
			
			return false;
		}
		
		return super.preHandle(request, response, handler);
	}



}
