package com.connectcloset.cc.item.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;

@Repository
public class ItemDAOImpl implements ItemDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
		
	@Override
	public List<Item> newItemList(Item item) {
		return sqlSession.selectList("newItemList", item);
	}

}
