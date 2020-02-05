package com.connectcloset.cc.member.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.member.model.vo.Member;

@Repository
public class MemberDAOImpl implements MemberDAO{

	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int enrollMember(Member m) {
		return sqlSession.insert("member.enrollMember", m);
	}

	@Override
	public Member selectOneMember(String memberEmail) {
		return sqlSession.selectOne("member.selectOneMember", memberEmail);
	}

	@Override
	public int GetKey(String memberEmail, String validateKey) {
		Map<String,String> map = new HashMap<>();
		map.put("memberEmail", memberEmail);
		map.put("validateKey", validateKey);
		
		return sqlSession.update("member.GetKey",map);
	}

	@Override
	public int alter_userKey(String memberEmail, String validateKey) {
		Map<String,String> map = new HashMap<>();
		map.put("memberEmail", memberEmail);
		map.put("validateKey", validateKey);
		return sqlSession.update("member.alterUserKey", map);
	}
}
