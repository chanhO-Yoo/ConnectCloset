package com.connectcloset.cc.wishlist.model.service;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.wishlist.model.vo.WishList;

public interface WishListService {

	List<WishList> wishlist(int memberNo);

	int wishlistInsert(Map<String, Integer> map);

}
