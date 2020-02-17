package com.connectcloset.cc.order.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.order.model.dao.OrderDAO;


@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDAO orderDAO;

	//================하은 시작======================
	@Override
	public int insertOrder(Map<String, String> map) {
		return orderDAO.insertOrder(map);
	}
	//================하은 끝======================
}
