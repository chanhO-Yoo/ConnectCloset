package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.order.model.vo.OrderProduct;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

//	@Override
//	public List<OrderProduct> selectOrderList(int memberNo) {
//		return sqlSession.selectList("orderProduct.selectOrderListByMemberNo", memberNo);
//	}
	@Override
	public Member selectOrderList(int memberNo) {
		return sqlSession.selectOne("orderProduct.selectOrderListByMemberNo", memberNo);
	}
	

}
