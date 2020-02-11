package com.connectcloset.cc.admin.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;

public interface AdminService {
	
	//===================찬호 시작===================
	
	int enrollItemEnd(Item item, List<ItemImage> imageList);
	List<Item> selectItemList(int cPage, int numPerPage);
	int selectItemCount();
	Item selecItemOne(int itemNo);
	List<ItemImage> selectItemImageList(int itemNo);
	List<ItemImage> selectAllItemImageList(int cPage, int numPerPage);
	List<ItemAndImageVO2> selectItemAndImageList(int cPage, int numPerPage);
	int editItemEnd(Item item, List<ItemImage> imageList);

	//===================찬호 끝===================


}
