package com.connectcloset.cc.item.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;

public interface ItemDAO {

	List<Item> newItemList(Item item);


//-------------주영  시작 -------------------
	List<ItemImage> selectitemImagetList(int itmeNo);

	ItemAndImageVO selectOneitemImage(int itmeNo);

	
//-------------주영 끝 -------------------

	//test
}
