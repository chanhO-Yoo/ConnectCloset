package com.connectcloset.cc.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.mypage.model.dao.MyPageDAO;
import com.connectcloset.cc.order.model.vo.OrderProduct;

@Service
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	MyPageDAO myPageDAO;
	
//	@Override
//	public List<OrderProduct> selectOrderByMemberNo(int memberNo) {
//		return myPageDAO.selectOrderList(memberNo);
//	}
	@Override
	public Member selectOrderByMemberNo(int memberNo) {
		return myPageDAO.selectOrderList(memberNo);
	}

}
