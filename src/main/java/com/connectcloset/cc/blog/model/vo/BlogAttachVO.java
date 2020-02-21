package com.connectcloset.cc.blog.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class BlogAttachVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int blogNo;
	private String blogTitle;
	private int memberNo;
	private String blogContent;
	private Date blogDate;
	private int readCount;
	
	//가상컬럼: 첨부파일 개수
	private int fileCount;
	
	List<Attachment> attachmentList;
	
	public BlogAttachVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	BlogAttachVO(int blogNo, String blogTitle, int memberNo, String blogContent, Date blogDate,
			int readCount, int fileCount, List<Attachment> attachmentList) {
		super();
		this.blogNo = blogNo;
		this.blogTitle = blogTitle;
		this.memberNo = memberNo;
		this.blogContent = blogContent;
		this.blogDate = blogDate;
		this.readCount = readCount;
		this.fileCount = fileCount;
		this.attachmentList = attachmentList;
	}



	public int getblogNo() {
		return blogNo;
	}
	public void setblogNo(int blogNo) {
		this.blogNo = blogNo;
	}
	public String getblogTitle() {
		return blogTitle;
	}
	public void setblogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public int gememberNo() {
		return memberNo;
	}
	public void setmemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getblogContent() {
		return blogContent;
	}
	public void setblogContent(String blogContent) {
		this.blogContent = blogContent;
	}
	public Date getblogDate() {
		return blogDate;
	}
	public void setblogDate(Date blogDate) {
		this.blogDate = blogDate;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public int getFileCount() {
		return fileCount;
	}

	public void setFileCount(int fileCount) {
		this.fileCount = fileCount;
	}
	


	public List<Attachment> getAttachmentList() {
		return attachmentList;
	}



	public void setAttachmentList(List<Attachment> attachmentList) {
		this.attachmentList = attachmentList;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "blogAttachVo [blogNo=" + blogNo + ", blogTitle=" + blogTitle + ", memberNo=" + memberNo
				+ ", blogContent=" + blogContent + ", blogDate=" + blogDate + ", readCount=" + readCount
				+ ", fileCount=" + fileCount + ", attachmentList=" + attachmentList + "]";
	}
	

}
