package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;

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
	//---------- 희진 주문내역 끝--------------------

	
	//------------주영 1:1 문의---------------------
	List<PersonalQna> selectMypagePQnaList(int cPage, int numPerPage, int memberNo);

	int selectMypagePQnaListCount(int memberNo);

	int mypagepQnAFormEnd(PersonalQna pQnA);

	int deletepQnA(int pQnaNo);

	PersonalQna selectOneEnrollQnA(int pQnaNo);

	int pQnAEnrollEnd(PersonalQna pQnA);

	List<PersonalQnaAns> mypagePQnaAns(int pQnaNo);

	//------------주영 1:1 문의---------------------

}
