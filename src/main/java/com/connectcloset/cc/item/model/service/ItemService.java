package com.connectcloset.cc.item.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;

public interface ItemService {

	//희진  새로 나온 상품시작
	List<ItemAndImageVO> newItemList(Item item);

	//희진  새로 나온 상품 끝
	
	//==하은 시작
	List<Item> selectItemNumber(int itemNo);
	
	List<ItemAndImageVO> selectImageList(int itemNO);
	
	List<ItemAndImageVO> shopCategories(Item item);
	
	//==하은 끝

	//--------- 윤지 상품 리스트 시작 -------------------
	List<ItemAndImageVO2> selectItemAndImageList(int cPage, int numPerPage);
	int selectItemCount();
	List<ItemAndImageVO2> selectItemAndImageBrandList(int cPage, int numPerPage, String brandNo);
	int selectBrandItemCount(String brandNo);
	List<ItemAndImageVO2> selectOuterList(int cPage, int numPerPage);
	int selectOuterCount();
	List<ItemAndImageVO2> selectTopList(int cPage, int numPerPage);
	int selectTopCount();
	List<ItemAndImageVO2> selectBottomList(int cPage, int numPerPage);
	int selectBottomCount();
	List<ItemAndImageVO2> selectDressList(int cPage, int numPerPage);
	int selectDressCount();
	List<ItemAndImageVO2> selectBagList(int cPage, int numPerPage);
	int selectBagCount();
	List<ItemAndImageVO2> selectShoesList(int cPage, int numPerPage);
	int selectShoesCount();
	List<ItemAndImageVO2> selectItemAndImageTypeList(int cPage, int numPerPage, String itemTypeNo);
	int selectTypeItemCount(String itemTypeNo);
	List<ItemAndImageVO2> selectAccList(int cPage, int numPerPage);
	int selectAccCount();
	//--------- 윤지 상품 리스트 끝 -------------------
	
	//--------- 찬호 시작 -------------------
	ItemImage recentItem(String itemNo);
	
	//--------- 찬호 끝 -------------------

	//------------ 주영 상품 상세보기 시작 -------------
	List<ItemImage> selectitemImagetList(int itmeNo);

	ItemAndImageVO2 selectOneitemImage(int itmeNo);

	List<Review> selectReviewList(int itmeNo);





	//------------ 주영 상품 상세보기 끝-------------


}

