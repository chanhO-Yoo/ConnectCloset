package com.connectcloset.cc.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {

	/**
	 * @실습문제 : 로그인하지 않은 경우, common/msg.jsp를 통해 "로그인 후 이용하세요" 경고창 출력 후 index페이지로 이동시킨다.
	 * 
	 * 
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//현재 member객체 없어서 주석처리해둠
/*		HttpSession session = request.getSession();
		Member memberLoggedIn = (Member)session.getAttribute("memberLoggedIn");
		
		logger.debug("memberLoggedIn={}",memberLoggedIn);
		
		if(memberLoggedIn == null) {
			String msg = "로그인 후 이용하세요.";
			String loc = "/";
			
			request.setAttribute("msg", msg);
			request.setAttribute("loc", loc);
			
			request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp").forward(request, response);
			
			return false;
		}*/
		
		return super.preHandle(request, response, handler);
	}



}
