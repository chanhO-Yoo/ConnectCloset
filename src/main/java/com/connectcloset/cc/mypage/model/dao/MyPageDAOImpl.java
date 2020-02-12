package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.member.model.vo.Point;
@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	
	//-----------주영 포인트 시작--------------
	
	@Override
	public List<Point> selectListPoint(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("member.selectListPoint",memberNo);
	}
	//-----------주영 포인트 끝--------------


	@Override
	public List<Order> selectListReview(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mypage.selectListReview",memberNo);
	}



}
