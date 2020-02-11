package com.connectcloset.cc.mypage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.member.model.vo.Point;
@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	
	//-----------주영 포인트 시작--------------
	@Override
	public Point selectOnePoint(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.selectOnePoint",memberNo);
	}
	//-----------주영 포인트 끝--------------

}
