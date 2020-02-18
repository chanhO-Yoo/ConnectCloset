package com.connectcloset.cc.mypage.model.service;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;

public interface MyPageService {

	//-----------주영 포인트 시작--------------
	
	List<Point> selectListPoint(int memberNo);
	//-----------주영 포인트 끝--------------

	//------------주영 리뷰 시작 -----------
	List<ReviewOrederList> selectListReview(int memberNo);
	
	ReviewOrederList selectOnditemReview(int orderNo);
	
	int insertReview(Review re);
	
	List<ReviewList> selectReviewList(String reviewWriter);
	
	int deleteReview(int reviewNo);
	//------------주영 리뷰 끝 -----------
	
	//------------희진 주문내역 시작-------------
	Member selectOrderByMemberNo(int memberNo);

	
	//------------희진 주문내역 끝-------------------
	
	//-----------주영 1:1 문의 시작----------------------
	List<PersonalQna> selectMypagePQnaList(int cPage, int numPerPage, int memberNo);
	
	int selectMypagePQnaListCount(int memberNo);
	
	int mypagepQnAFormEnd(PersonalQna pQnA);
	
	int deletepQnA(int pQnaNo);
	//-----------주영 1:1 문의 끝----------------------

}
