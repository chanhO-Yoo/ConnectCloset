package com.connectcloset.cc.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.mypage.dao.MypageDAO;
@Service
public class MypageServiceImpl implements MypageService {

	
	@Autowired
	MypageDAO mypageDAO;
}
