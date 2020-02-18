package com.connectcloset.cc.blog.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Blog implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int blogNo;
	private Date blogDate;
	private String blogTitle;
	private String blogContent;
	private int memberNo;
	
	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Blog(int blogNo, Date blogDate, String blogTitle, String blogContent, int memberNo) {
		super();
		this.blogNo = blogNo;
		this.blogDate = blogDate;
		this.blogTitle = blogTitle;
		this.blogContent = blogContent;
		this.memberNo = memberNo;
	}

	public int getBlogNo() {
		return blogNo;
	}

	public void setBlogNo(int blogNo) {
		this.blogNo = blogNo;
	}

	public Date getBlogDate() {
		return blogDate;
	}

	public void setBlogDate(Date blogDate) {
		this.blogDate = blogDate;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Blog [blogNo=" + blogNo + ", blogDate=" + blogDate + ", blogTitle=" + blogTitle + ", blogContent="
				+ blogContent + ", memberNo=" + memberNo + "]";
	}

}
