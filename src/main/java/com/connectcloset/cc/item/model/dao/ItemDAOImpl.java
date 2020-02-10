package com.connectcloset.cc.item.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;

@Repository
public class ItemDAOImpl implements ItemDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
		
	@Override
	public List<Item> newItemList(Item item) {
		return sqlSession.selectList("newItemList", item);
	}

	//===================주영 시작========================


	@Override
	public List<ItemImage> selectitemImagetList(int itmeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("item.selectitemImagetList",itmeNo);
	}
	@Override
	public ItemAndImageVO selectOneitemImage(int itmeNo) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("item.selectOneitemImage",itmeNo);
	}



	//===================주영 끝========================


}
