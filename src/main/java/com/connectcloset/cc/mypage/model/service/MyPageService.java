package com.connectcloset.cc.mypage.model.service;

import java.util.List;

import com.connectcloset.cc.member.model.vo.Member;
import com.connectcloset.cc.order.model.vo.OrderProduct;

public interface MyPageService {

//	List<OrderProduct> selectOrderByMemberNo(int memberNo);
	Member selectOrderByMemberNo(int memberNo);

}
