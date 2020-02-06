package com.connectcloset.cc.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.member.model.dao.MemberDAO;
import com.connectcloset.cc.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDAO;

	@Override
	public int enrollMember(Member m) {
		return memberDAO.enrollMember(m);
	}

	@Override
	public Member selectOneMember(String memberEmail) {
		return memberDAO.selectOneMember(memberEmail);
	}

	@Override
	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.updateMember(member);
	}
}
