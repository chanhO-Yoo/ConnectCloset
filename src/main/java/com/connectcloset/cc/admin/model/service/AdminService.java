package com.connectcloset.cc.admin.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemImage;

public interface AdminService {
	
	//===================찬호 시작===================
	int enrollItemEnd(Item item, List<ItemImage> imageList);
	//===================찬호 끝===================

}
