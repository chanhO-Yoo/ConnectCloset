package com.connectcloset.cc.admin.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;
import com.connectcloset.cc.order.model.vo.Delivery;
import com.connectcloset.cc.order.model.vo.OrderProduct;

public interface AdminService {
	
	//===================찬호 시작===================
	
	int enrollItemEnd(Item item, List<ItemImage> imageList);
	List<Item> selectItemList(int cPage, int numPerPage);
	int selectItemCount();
	Item selecItemOne(int itemNo);
	List<ItemImage> selectItemImageList(int itemNo);
	List<ItemImage> selectAllItemImageList(int cPage, int numPerPage);
	List<ItemAndImageVO> selectItemAndImageList(int cPage, int numPerPage);
	int editItemEnd(Item item, List<ItemImage> imageList);
	List<PersonalQna> selectPQnaList(int cPage, int numPerPage);
	int selectPQnaListCount();
	PersonalQna adminPQna(int pQnaNo);
	int adminPQnaEnd(PersonalQnaAns pQnaAns);
	List<PersonalQnaAns> adminPQnaAns(int pQnaNo);
	List<ItemAndImageVO> adminSearchItem(String searchKeyword, int cPage, int numPerPage);

	//===================찬호 끝===================

	//===================하은 시작===================
	
	List<OrderProduct> selectOrderList(int cPage, int numPerPage);

	int selectOrderCount();

	List<OrderProduct> selectOrderList();
	
	int updatedelivery(String deliveryNo, String orderNo);
	
	List<OrderProduct> selectSearchDateList(int startDate);
	
//	List<Delivery> selectDeliveryList(int delivery, String deliveryStatus);
	int delivery(String deliveryNo);
	

	//===================하은 끝===================
}
