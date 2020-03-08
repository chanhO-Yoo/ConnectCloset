package com.connectcloset.cc.video.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.video.dao.VideoDAO;
import com.connectcloset.cc.video.vo.Video;


@Service
public class VideoServiceImpl implements VideoService{

	static final Logger logger = LoggerFactory.getLogger(VideoServiceImpl.class);
	
	@Autowired
	VideoDAO videoDAO;

	@Override
	public List<Video> selectVideoList() {
		return videoDAO.selectVideoList();
	}
	
	
	
}
