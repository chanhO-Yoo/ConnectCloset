package com.connectcloset.cc.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.dao.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService {

	
	@Autowired
	MyPageDAO mypageDAO;
	
	
	
	
	//-----------주영 포인트 시작--------------
	@Override
	public Point selectOnePoint(int memberNo) {
		// TODO Auto-generated method stub
		return mypageDAO.selectOnePoint(memberNo);
	}
	//-----------주영 포인트 끝--------------

}
