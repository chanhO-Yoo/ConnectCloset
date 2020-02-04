package com.connectcloset.cc.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.admin.model.dao.AdminDAO;
import com.connectcloset.cc.item.model.vo.Item;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO adminDAO;

	//===================찬호 시작===================
	@Override
	public int enrollItemEnd(Item item) {
		return adminDAO.enrollItemEnd(item);
	}
	//===================찬호 끝===================
	
}
