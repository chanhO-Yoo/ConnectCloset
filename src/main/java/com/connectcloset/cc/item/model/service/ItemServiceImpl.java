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


	
	/*	//==하은
	@Override
	public Item selectItemNumber(String itemNo) {
		return itemDAO.selectItemNumber(itemNo);
	}
*/
	@Override
	public List<Item> selectItemNumber(int itemNo) {
		return itemDAO.selectItemNumber(itemNo);
	}
	//==하은


	//===================희진 끝========================
	
	//===================윤지 상품 리스트 시작=======================
		@Override
		public List<ItemAndImageVO> selectItemAndImageList(int cPage, int numPerPage) {
			return itemDAO.selectItemAndImageList(cPage, numPerPage);
		}
		
		@Override
		public int selectItemCount() {
			return itemDAO.selectItemCount();
		}
		//===================윤지 상품 리스트 끝========================
	
	
	//===================주영 상품 상세보기 시작========================
	


	
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
	//===================주영  상품 상세보기  끝========================

	

}

