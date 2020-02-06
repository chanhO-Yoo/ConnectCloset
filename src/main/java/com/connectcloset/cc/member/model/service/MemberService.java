package com.connectcloset.cc.member.model.service;

import com.connectcloset.cc.member.model.vo.Member;

public interface MemberService {

	int enrollMember(Member m);

	Member selectOneMember(String memberId);

	int updateMember(Member member);

}
