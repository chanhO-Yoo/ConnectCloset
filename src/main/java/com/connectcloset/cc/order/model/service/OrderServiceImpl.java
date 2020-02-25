package com.connectcloset.cc.order.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.order.model.dao.OrderDAO;
import com.connectcloset.cc.order.model.vo.OrderProduct;


@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDAO orderDAO;

	//================하은 시작======================
	@Override
	public int insertOrder(Map<String, String> map) {
		return orderDAO.insertOrder(map);
	}
	@Override
	public OrderProduct selectOneOrderPaymentsComplete(int orderNo) {
		return orderDAO.selectOneOrderPaymentsComplete(orderNo);
	}
	@Override
	public int enrollOrderProduct(OrderProduct op) {
		return orderDAO.enrollOrderProduct(op);
	}
	//================하은 끝======================

}
