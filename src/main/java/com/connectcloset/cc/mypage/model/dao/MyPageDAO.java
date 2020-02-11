package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import com.connectcloset.cc.member.model.vo.Point;

public interface MyPageDAO {

	//-----------주영 포인트 시작--------------
	List<Point> selectListPoint(int memberNo);
	//-----------주영 포인트 끝--------------


}
