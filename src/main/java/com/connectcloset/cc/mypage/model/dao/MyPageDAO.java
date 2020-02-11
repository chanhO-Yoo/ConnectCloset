package com.connectcloset.cc.mypage.model.dao;

import com.connectcloset.cc.member.model.vo.Point;

public interface MyPageDAO {

	//-----------주영 포인트 시작--------------
	Point selectOnePoint(int memberNo);
	//-----------주영 포인트 끝--------------

}
