package com.connectcloset.cc.order.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAOImpl implements OrderDAO {

	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertOrder(Map<String, String> map) {
		return sqlSession.update("order.insertOrder",map);
	}
	
}
