package com.connectcloset.cc.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.dao.MyPageDAO;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;

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
	// -----------주영 리뷰 끝 -------------------



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





}
