package com.connectcloset.cc.video.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.video.vo.Video;

@Repository
public class VideoDAOImpl implements VideoDAO{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Video> selectVideoList() {
		return sqlSession.selectList("video.selectVideoList");
	}
	
	
}
