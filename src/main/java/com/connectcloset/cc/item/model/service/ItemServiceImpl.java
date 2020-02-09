package com.connectcloset.cc.item.model.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.item.model.dao.ItemDAO;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;

@Service
public class ItemServiceImpl implements ItemService{
	
	static final Logger logger = LoggerFactory.getLogger(ItemServiceImpl.class);
	
	@Autowired
	ItemDAO itemDAO;
	
	//====================희진=========================
	@Override
	public List<Item> newItemList(Item item) {
		return itemDAO.newItemList(item);
	}

	//===================희진 끝========================
	
	//===================주영 시작========================
	

	@Override
	public Item selectOneitem(int itmeNo) {
		// TODO Auto-generated method stub
		return itemDAO.selectOneitem(itmeNo);
	}
	
	@Override
	public List<ItemImage> selectitemImagetList(int itmeNo) {
		// TODO Auto-generated method stub
		return itemDAO.selectitemImagetList(itmeNo);
	}
	
	@Override
	public ItemAndImageVO selectOneitemImage(int itmeNo) {
		// TODO Auto-generated method stub
		return itemDAO.selectOneitemImage(itmeNo);
	}
	//===================주영 끝========================

	@Override
	public List<ItemAndImageVO> listitemImage(int itmeNo) {
		// TODO Auto-generated method stub
		return itemDAO.listitemImage(itmeNo);
	}
	
}
