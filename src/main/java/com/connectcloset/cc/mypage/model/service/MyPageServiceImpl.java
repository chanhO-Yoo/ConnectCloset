package com.connectcloset.cc.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.dao.MyPageDAO;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;
import com.connectcloset.cc.order.model.vo.OrderProduct;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;

@Service
public class MyPageServiceImpl implements MyPageService {

	
	@Autowired
	MyPageDAO mypageDAO;
	
	
	
	
	//-----------주영 포인트 시작--------------

	@Override
	public List<Point> selectListPoint(int memberNo) {
		// TODO Auto-generated method stub
		return mypageDAO.selectListPoint(memberNo);
	}
	//-----------주영 포인트 끝--------------



  // -----------주영 리뷰 시작 -------------------
	@Override
	public List<ReviewOrederList> selectListReview(int memberNo) {
		// TODO Auto-generated method stub
		return mypageDAO.selectListReview(memberNo);
	}
	
	@Override
	public ReviewOrederList selectOnditemReview(int orderNo) {
		// TODO Auto-generated method stub
		return  mypageDAO.selectOnditemReview(orderNo);
	}


 
	@Override
	public int insertReview(Review re) {
		// TODO Auto-generated method stub
		return  mypageDAO.insertReview(re);
	}



	@Override
	public List<ReviewList> selectReviewList(String reviewWriter) {
		// TODO Auto-generated method stub
		return mypageDAO.selectReviewList(reviewWriter);
	}



	@Override
	public int deleteReview(int reviewNo) {
		// TODO Auto-generated method stub
		return  mypageDAO.deleteReview(reviewNo);
	}

	// -----------주영 리뷰 끝 -------------------

	//------------희진 주문내역 시작-------------------------
	
	@Override
	public int selectOsByMemberNo(int memberNo) {
		return mypageDAO.selectOsByMemberNo(memberNo);
	}



	@Override
	public int selectDeli1ByMemberNo(int memberNo) {
		return mypageDAO.selectDeli1ByMemberNo(memberNo);
	}



	@Override
	public int selectDeli2ByMemberNo(int memberNo) {
		return mypageDAO.selectDeli2ByMemberNo(memberNo);
	}



	@Override
	public int selectDeli3ByMemberNo(int memberNo) {
		return mypageDAO.selectDeli3ByMemberNo(memberNo);
	}

	//전체
	@Override
	public Member selectOrderByMemberNo(int memberNo) {
		return mypageDAO.selectOrderList(memberNo);
	}

	@Override
	public List<OrderProduct> selectSearchDateList(int startDate) {
		return mypageDAO.selectSearchDateList(startDate);
	}

	
	//-----------희진 주문내역 끝--------------------------------

	/// ---------------주영 1:1 문의 시작------------------------
	@Override
	public List<PersonalQna> selectMypagePQnaList(int cPage, int numPerPage,int memberNo) {
		// TODO Auto-generated method stub
		return mypageDAO.selectMypagePQnaList(cPage,numPerPage,memberNo);
	}
	
	
	
	@Override
	public int selectMypagePQnaListCount(int memberNo) {
		// TODO Auto-generated method stub
		return mypageDAO.selectMypagePQnaListCount(memberNo);
	}



	@Override
	public int mypagepQnAFormEnd(PersonalQna pQnA) {
		// TODO Auto-generated method stub
		return mypageDAO.mypagepQnAFormEnd(pQnA);
	}



	@Override
	public int deletepQnA(int pQnaNo) {
		// TODO Auto-generated method stub
		return mypageDAO.deletepQnA(pQnaNo);
	}



	@Override
	public PersonalQna selectOneEnrollQnA(int pQnaNo) {
		// TODO Auto-generated method stub
		return mypageDAO.selectOneEnrollQnA(pQnaNo);
	}



	@Override
	public int pQnAEnrollEnd(PersonalQna pQnA) {
		// TODO Auto-generated method stub
		return  mypageDAO.pQnAEnrollEnd(pQnA);
	}



	@Override
	public List<PersonalQnaAns> mypagePQnaAns(int pQnaNo) {
		// TODO Auto-generated method stub
		return mypageDAO.mypagePQnaAns(pQnaNo);
	}

	/// ---------------주영 1:1 문의 시작------------------------


}
