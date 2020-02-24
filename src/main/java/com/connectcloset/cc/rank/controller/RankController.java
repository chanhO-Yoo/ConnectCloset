package com.connectcloset.cc.rank.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.connectcloset.cc.rank.model.service.RankService;
import com.connectcloset.cc.rank.model.vo.Rank;

@Controller
public class RankController {

	private final static Logger logger = LoggerFactory.getLogger(RankController.class);

	@Autowired
	RankService rankService;
	
	@RequestMapping("/searchRank.do")
	@ResponseBody
	public Map<String,String> searchRank() {
		Map<String, String> map = new LinkedHashMap<>();
		
		List<Rank> list = rankService.searchRank();
		logger.debug("map={}",list);
		
		for(int i=0; i < list.size(); i++) {
			map.put(Integer.toString(list.get(i).getRank()), list.get(i).getSearchKeyword());
		}

		
		return map;
	}
	
	@RequestMapping("/saveKeyword.do")
	@ResponseBody
	public List<Rank> saveKeyword(@RequestParam(defaultValue="-1") int memberNo){
		List<Rank> list = new ArrayList<>();
		
		list = rankService.saveKeyword(memberNo);
		logger.debug("saveKeyword@list={}",list);
		
		return list;
	}
	
	@RequestMapping("/searchAuto.do")
	@ResponseBody
	public List<String> searchAuto(@RequestParam String term){
		logger.debug("searchKeyword={}",term);
		
		Map<String,String> map = new HashMap<String, String>();
		
		List<String> list = rankService.searchAuto(term);
		
		logger.debug("searchAuto@list={}",list);
		
/*		for(String str:list) {
			map.put("data", str);
		}*/
		
		logger.debug("map={}",map);
		return list;
	}
	
}
