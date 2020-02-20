package com.connectcloset.cc.order.model.service;

import java.util.Map;

import com.connectcloset.cc.order.model.vo.OrderProduct;

public interface OrderService {

	
	//================하은 시작======================
	int insertOrder(Map<String, String> map);

	OrderProduct selectOneOrderPaymentsComplete(int orderNo);

	int enrollOrderProduct(OrderProduct op);
	
	//================하은 끝======================
}
