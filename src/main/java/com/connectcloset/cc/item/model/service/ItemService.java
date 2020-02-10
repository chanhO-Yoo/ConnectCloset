package com.connectcloset.cc.item.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;

public interface ItemService {

	//희진 시작
	List<Item> newItemList(Item item);

	//희진 끝
	
	//==하은 시작
	List<Item> selectItemNumber(int itemNo);
	//==하은 끝




	List<ItemImage> selectitemImagetList(int itmeNo);

	ItemAndImageVO selectOneitemImage(int itmeNo);

	


}
