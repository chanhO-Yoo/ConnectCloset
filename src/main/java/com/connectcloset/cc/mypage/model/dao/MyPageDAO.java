package com.connectcloset.cc.mypage.model.dao;

import java.util.List;

import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.order.model.vo.OrderProduct;

public interface MyPageDAO {

//	List<OrderProduct> selectOrderList(int memberNo);
	Member selectOrderList(int memberNo);

}
