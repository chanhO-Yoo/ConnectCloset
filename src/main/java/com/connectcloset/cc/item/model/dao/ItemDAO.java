package com.connectcloset.cc.item.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;


public interface ItemDAO {

//희진 새로 나온 상품 시작
	List<Item> newItemList(Item item);
//희진 새로 나온 상품 끝


	///==하은 시작
	//Item selectItemNumber(String itemNo);
	List<Item> selectItemNumber(int itemNo);
	//==하은 끝

	//------------ 윤지 상품 리스트 시작 ---------------
	List<ItemAndImageVO2> selectItemAndImageList(int cPage, int numPerPage);
	
	int selectItemCount();
	//------------ 윤지 상품 리스트 끝 ---------------
	

//-------------주영  상품 상세보기 시작 -------------------
	List<ItemImage> selectitemImagetList(int itmeNo);

	ItemAndImageVO2 selectOneitemImage(int itmeNo);

	
//-------------주영 상세보기 끝 -------------------

 


}
