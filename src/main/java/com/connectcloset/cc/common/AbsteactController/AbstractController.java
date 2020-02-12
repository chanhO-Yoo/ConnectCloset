package com.connectcloset.cc.common.AbsteactController;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * forwarding 처리: view
 * redirect 처리: isRedirect
 *
 */

public abstract class AbstractController {
	
	private boolean isRedirect; // redirect여부
	private String view; // forwarding하는 경우 view단 jsp파일 경로
	
	public AbstractController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public AbstractController(boolean isRedirect, String view) {
		super();
		this.isRedirect = isRedirect;
		this.view = view;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	
	
	
	@Override
	public String toString() {
		return "AbstractController [isRedirect=" + isRedirect + ", view=" + view + "]";
	}

	// controller단에서 실행할 공통메소드
	public abstract void execute(HttpServletRequest request, 
							       HttpServletResponse response) throws IOException;
	
}
