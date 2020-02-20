package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;
import com.connectcloset.cc.order.model.vo.OrderProduct;

public interface MyPageDAO {

	//-----------주영 포인트 시작--------------
	List<Point> selectListPoint(int memberNo);
	//-----------주영 포인트 끝--------------

	//-----------주영 리뷰 시작--------------
	List<ReviewOrederList> selectListReview(int memberNo);
	
	ReviewOrederList selectOnditemReview(int orderNo);
	//-----------주영 리뷰 끝--------------

	int insertReview(Review re);

	List<ReviewList> selectReviewList(String reviewWriter);

	int deleteReview(int reviewNo);

	//-----------희진 주문내역 시작------------------
	Member selectOrderList(int memberNo);

	int selectOsByMemberNo(int memberNo);

	int selectDeli1ByMemberNo(int memberNo);

	int selectDeli2ByMemberNo(int memberNo);

	int selectDeli3ByMemberNo(int memberNo);

	List<OrderProduct> selectSearchDateList(int startDate);

	//---------- 희진 주문내역 끝--------------------

}
