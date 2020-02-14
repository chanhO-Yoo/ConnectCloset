package com.connectcloset.cc.wishlist.model.dao;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.wishlist.model.vo.WishList;

public interface WishListDAO {

	List<WishList> wishlist(int memberNo);

	int wishlistInsert(Map<String, Integer> map);

	int wishlistDelete(Map<String, Integer> map);

}
