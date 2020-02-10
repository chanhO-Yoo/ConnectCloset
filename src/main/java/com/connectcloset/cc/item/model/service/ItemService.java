package com.connectcloset.cc.item.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;

public interface ItemService {

	List<Item> newItemList(Item item);

	List<ItemAndImageVO> selectItemAndImageList(int cPage, int numPerPage);

	int selectItemCount();

}
