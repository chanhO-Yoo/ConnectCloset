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
	
	//희진 시작
	@Override
	public List<Item> newItemList(Item item) {
		return sqlSession.selectList("newItemList", item);
	}
	//희진 끝
	
	//하은 시작
		@Override
	public List<Item> selectItemNumber(int itemNo) {
		return sqlSession.selectList("item.selectItemNumber",itemNo);
	}
	//==하은 끝

}
