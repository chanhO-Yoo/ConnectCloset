package com.connectcloset.cc.member.model.dao;

import com.connectcloset.cc.member.model.vo.Member;

public interface MemberDAO {

	int enrollMember(Member m);

	Member selectOneMember(String memberEmail);

	int GetKey(String memberEmail, String validateKey);//사용자 인증키 생성 메서드
	
	int alter_userKey(String memberEmail, String validateKey);

	int updateMember(Member member);

}
