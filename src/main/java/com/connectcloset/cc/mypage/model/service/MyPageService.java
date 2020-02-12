package com.connectcloset.cc.mypage.model.service;

import java.util.List;

import org.springframework.core.annotation.Order;

import com.connectcloset.cc.member.model.vo.Point;

public interface MyPageService {

	//-----------주영 포인트 시작--------------
	
	List<Point> selectListPoint(int memberNo);
	//-----------주영 포인트 끝--------------

	//------------주영 리뷰 시작 -----------
	List<Order> selectListReview(int memberNo);
	//------------주영 리뷰 끝 -----------


}
