package com.connectcloset.cc.cart.model.service;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.cart.model.vo.Cart2;

public interface CartService {

	//장바구니 목록조회
	List<Cart2> cartList(int memberNo);

	int cartInsert(Map<String, Integer> map);

	int cartDelete(Map<String, Integer> map);

	

}
