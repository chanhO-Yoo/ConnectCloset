package com.connectcloset.cc.item.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;

public interface ItemDAO {

	List<Item> newItemList(Item item);

}
