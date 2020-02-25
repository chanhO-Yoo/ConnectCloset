package com.connectcloset.cc.video.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.video.service.VideoService;
import com.connectcloset.cc.video.vo.Video;

@Controller
public class VideoController {
	
	
	/*@Autowired
	VideoService videoService;

	@RequestMapping(value = "/shop/single-product.do", method = RequestMethod.GET)
	public ModelAndView selectVideoList(ModelAndView mav, @RequestParam int videoNo, 
			@RequestParam int itemNo){
		List<Video> list = videoService.selectVideoList(videoNo);

		
		
		mav.addObject("list", list);
		mav.setViewName("shop/single-product");
		
		
		return mav;
	}*/
}
