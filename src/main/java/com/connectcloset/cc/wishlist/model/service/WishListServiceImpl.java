package com.connectcloset.cc.wishlist.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.wishlist.model.dao.WishListDAO;
import com.connectcloset.cc.wishlist.model.vo.WishList;

@Service
public class WishListServiceImpl implements WishListService {

	@Autowired
	WishListDAO wishlistDAO;
	
	@Override
	public List<WishList> wishlist(int memberNo) {
		return wishlistDAO.wishlist(memberNo);
	}

	@Override
	public int wishlistInsert(Map<String, Integer> map) {
		return wishlistDAO.wishlistInsert(map);
		
	}

	@Override
	public int wishlistDelete(Map<String, Integer> map) {
		return wishlistDAO.wishlistDelete(map);
	}

}
