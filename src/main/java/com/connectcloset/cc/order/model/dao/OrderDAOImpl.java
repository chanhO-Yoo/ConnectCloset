package com.connectcloset.cc.order.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.order.model.vo.OrderProduct;

@Repository
public class OrderDAOImpl implements OrderDAO {

//=====================하은 시작 ==========================	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertOrder(Map<String, String> map) {
		return sqlSession.update("order.insertOrder",map);
	}

	@Override
	public OrderProduct selectOneOrderPaymentsComplete(int orderNo) {
		return sqlSession.selectOne("order.selectOneOrderPaymentsComplete",orderNo);
	}

	@Override
	public int enrollOrderProduct(OrderProduct op) {
		return sqlSession.insert("order.enrollOrderProduct", op);
	}

	//=====================하은 끝 ==========================
}
