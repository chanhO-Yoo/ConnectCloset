package com.connectcloset.cc.item.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;

public interface ItemDAO {

//희진 시작
	List<Item> newItemList(Item item);
//희진 끝


	///==하은 시작
	//Item selectItemNumber(String itemNo);
	List<Item> selectItemNumber(int itemNo);
	//==하은 끝


//-------------주영  시작 -------------------
	List<ItemImage> selectitemImagetList(int itmeNo);

	ItemAndImageVO selectOneitemImage(int itmeNo);

	
//-------------주영 끝 -------------------

	//test

}
