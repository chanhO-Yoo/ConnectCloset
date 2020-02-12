package com.connectcloset.cc.cart.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.connectcloset.cc.cart.model.dao.CartDAO;
import com.connectcloset.cc.cart.model.vo.Cart;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAO cartDAO;

	
	//목록 조회
	@Override
	public List<Cart> cartList(int memberNo) {
		return cartDAO.cartList(memberNo);
	}

	// 목록 추가
	@Override
	public int cartInsert(Map<String, Integer> map) {
		return cartDAO.cartInsert(map);
	}
	//목록 삭제

	@Override
	public int cartDelete(Map<String, Integer> map) {
		return cartDAO.cartDelete(map);
	}
	

	
	
	

}
