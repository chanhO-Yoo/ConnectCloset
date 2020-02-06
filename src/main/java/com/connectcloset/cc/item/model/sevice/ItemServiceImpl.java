package com.connectcloset.cc.item.model.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.item.model.dao.ItemDAO;
import com.connectcloset.cc.item.model.vo.Item;

//20200206하은생성

@Service
public class ItemServiceImpl implements ItemService {
	
	@Autowired
	ItemDAO itemDAO;

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

}
