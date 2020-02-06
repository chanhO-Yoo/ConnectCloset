package com.connectcloset.cc.admin.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemImage;

public interface AdminDAO {

	//===================찬호 시작===================
	int enrollItemEnd(Item item);

	int insertItemImage(ItemImage i);

	List<Item> selectItemList(int cPage, int numPerPage);

	int selectItemCount();

	//===================찬호 끝===================
	
}
