package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.member.model.vo.Point;
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.mypage.model.vo.ReviewOrederList;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	
	//-----------주영 포인트 시작--------------
	
	@Override
	public List<Point> selectListPoint(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("member.selectListPoint",memberNo);
	}
	//-----------주영 포인트 끝--------------


	@Override
	public List<ReviewOrederList> selectListReview(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mypage.selectListReview",memberNo);
	}


	@Override
	public ReviewOrederList selectOnditemReview(int orderNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mypage.selectOnditemReview",orderNo);
	}


	@Override
	public int insertReview(Review re) {
		// TODO Auto-generated method stub
		return sqlSession.insert("mypage.insertReview",re);
	}


	@Override
	public List<ReviewList> selectReviewList(String reviewWriter) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mypage.selectReviewList",reviewWriter);
		
	}


	@Override
	public int deleteReview(int reviewNo) {
		// TODO Auto-generated method stub
		return sqlSession.delete("mypage.deleteReview" ,reviewNo);
	}

	
	//-----------희진 주문내역 시작------------------------
	@Override
	public Member selectOrderList(int memberNo) {
		return sqlSession.selectOne("orderProduct.selectOrderListByMemberNo", memberNo);
	}
	//-----------희진 주문내역 끝------------------------


	
	//-------------------주영 1:1문의  끝 시작---------------------------
	@Override
	public List<PersonalQna> selectMypagePQnaList(int cPage, int numPerPage,int memberNo) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("mypage.selectPQnaList",memberNo,rowBounds);
	}


	@Override
	public int selectMypagePQnaListCount(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mypage.selectPQnaListCount",memberNo);
	}


	@Override
	public int mypagepQnAFormEnd(PersonalQna pQnA) {
		// TODO Auto-generated method stub
		return sqlSession.insert("mypage.mypagepQnAFormEnd",pQnA);
	}


	@Override
	public int deletepQnA(int pQnaNo) {
		// TODO Auto-generated method stub
		return sqlSession.delete("mypage.deletepQnA",pQnaNo);
	}
	
	//-------------------주영 1:1문의  끝 ---------------------------

}
