package com.connectcloset.cc.item.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;

public interface ItemService {

	List<Item> newItemList(Item item);

	Item selectOneitem(int itmeNo);

	List<ItemImage> selectitemImagetList(int itmeNo);

	ItemAndImageVO selectOneitemImage(int itmeNo);

	List<ItemAndImageVO> listitemImage(int itmeNo);

}
