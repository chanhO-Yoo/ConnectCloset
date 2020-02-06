package com.connectcloset.cc.item.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
//20200206 하은생성

public interface ItemDAO {

	///==하은 시작
	//Item selectItemNumber(String itemNo);
	List<Item> selectItemNumber(int itemNo);
	//==하은 끝
}
