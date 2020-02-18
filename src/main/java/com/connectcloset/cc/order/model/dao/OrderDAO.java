package com.connectcloset.cc.order.model.dao;

import java.util.Map;

import com.connectcloset.cc.order.model.vo.OrderProduct;

public interface OrderDAO {

	//=====================하은 시작 ==========================
	int insertOrder(Map<String, String> map);

	OrderProduct selectOneOrderPaymentsComplete(int orderNo);

	//=====================하은 끝 ==========================
}
