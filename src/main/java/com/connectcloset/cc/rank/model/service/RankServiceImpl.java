package com.connectcloset.cc.rank.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.rank.model.dao.RankDAO;
import com.connectcloset.cc.rank.model.vo.Rank;


@Service
public class RankServiceImpl implements RankService {

	@Autowired
	RankDAO rankDAO;

	@Override
	public List<Rank> searchRank() {
		return rankDAO.searchRank();
	}



}
