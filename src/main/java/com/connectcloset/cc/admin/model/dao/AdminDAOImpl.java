package com.connectcloset.cc.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int enrollItemEnd(Item item) {
		return sqlSession.insert("admin.enrollItem",item);
	}

}
