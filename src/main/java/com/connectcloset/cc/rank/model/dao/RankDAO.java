package com.connectcloset.cc.rank.model.dao;

import java.util.List;

import com.connectcloset.cc.rank.model.vo.Rank;

public interface RankDAO {

	//=====================찬호 시작 ==========================
	List<Rank> searchRank();

	List<Rank> saveKeyword(int memberNo);

	List<String> searchAuto(String searchKeyword);

	//=====================찬호 끝 ==========================
}
