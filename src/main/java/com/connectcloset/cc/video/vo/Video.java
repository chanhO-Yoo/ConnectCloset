package com.connectcloset.cc.video.vo;

import java.io.Serializable;

public class Video implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int videoNo;
	private String videoTitle;
	private String videoUrl;
	
	public Video() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Video(int videoNo, String videoTitle, String videoUrl) {
		super();
		this.videoNo = videoNo;
		this.videoTitle = videoTitle;
		this.videoUrl = videoUrl;
	}

	public int getVideoNo() {
		return videoNo;
	}

	public void setVideoNo(int videoNo) {
		this.videoNo = videoNo;
	}

	public String getVideoTitle() {
		return videoTitle;
	}

	public void setVideoTitle(String videoTitle) {
		this.videoTitle = videoTitle;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Video [videoNo=" + videoNo + ", videoTitle=" + videoTitle + ", videoUrl=" + videoUrl + "]";
	}
	
	

}
