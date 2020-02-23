package com.connectcloset.cc.rank.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.rank.model.vo.Rank;

@Repository
public class RankDAOImpl implements RankDAO {

//=====================찬호 시작 ==========================	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Rank> searchRank() {
		return sqlSession.selectList("item.searchRank");
	}

	@Override
	public List<Rank> saveKeyword(int memberNo) {
		return sqlSession.selectList("item.saveKeyword",memberNo);
	}


	//=====================찬호 끝 ==========================
}
