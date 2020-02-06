package com.connectcloset.cc.item.model.sevice;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;

//20200206하은 생성

public interface ItemService {

	//==하은 시작
	List<Item> selectItemNumber(int itemNo);
	//==하은 끝
}
