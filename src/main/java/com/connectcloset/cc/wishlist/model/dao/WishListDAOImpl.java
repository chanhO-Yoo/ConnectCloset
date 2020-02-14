package com.connectcloset.cc.wishlist.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.wishlist.model.vo.WishList;


@Repository
public class WishListDAOImpl implements WishListDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<WishList> wishlist(int memberNo) {
		return sqlSession.selectList("wishlist.wishlist",memberNo);
	}

	@Override
	public int wishlistInsert(Map<String, Integer> map) {
		return sqlSession.insert("wishlist.wishlistInsert",map);
	}

	@Override
	public int wishlistDelete(Map<String, Integer> map) {
		return sqlSession.delete("wishlist.wishlistDelete",map);
	}
	

}
