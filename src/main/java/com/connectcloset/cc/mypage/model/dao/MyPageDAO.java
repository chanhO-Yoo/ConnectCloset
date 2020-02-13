package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;

public interface MyPageDAO {

	//-----------주영 포인트 시작--------------
	List<Point> selectListPoint(int memberNo);
	//-----------주영 포인트 끝--------------

	//-----------주영 리뷰 시작--------------
	List<ReviewOrederList> selectListReview(int memberNo);
	
	ReviewOrederList selectOnditemReview(int orderNo);
	//-----------주영 리뷰 끝--------------

	int insertReview(Review re);



}
