package com.connectcloset.cc.cart.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.cart.model.vo.Cart2;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Cart2> cartList(int memberNo) {
	 return sqlSession.selectList("cart.cartList",memberNo);
	}

	@Override
	public int cartInsert(Map<String, Integer> map) {
		return sqlSession.insert("cart.cartInsert",map);
	}

	@Override
	public int cartDelete(Map<String, Integer> map) {
		return sqlSession.delete("cart.cartDelete",map);
	}

	
	

	
}
