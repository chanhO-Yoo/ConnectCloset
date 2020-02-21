package com.connectcloset.cc.blog.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class AttachmentIndex implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int attachmentNo;
	private int blogNo;
	private String originalFileName;
	private String renamedFileName;
	private Date uploadDate;
	private int downloadCount;
	private String status;

	private String blogTitle;
	private int memberNo;
	private String blogContent;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date blogDate;
	private int readCount;

	// 가상컬럼: 첨부파일 개수
	private int fileCount;

	List<Attachment> attachmentList;

	public AttachmentIndex() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AttachmentIndex(int attachmentNo, int blogNo, String originalFileName, String renamedFileName,
			Date uploadDate, int downloadCount, String status, String blogTitle, int memberNo, String blogContent,
			Date blogDate, int readCount, int fileCount, List<Attachment> attachmentList) {
		super();
		this.attachmentNo = attachmentNo;
		this.blogNo = blogNo;
		this.originalFileName = originalFileName;
		this.renamedFileName = renamedFileName;
		this.uploadDate = uploadDate;
		this.downloadCount = downloadCount;
		this.status = status;
		this.blogTitle = blogTitle;
		this.memberNo = memberNo;
		this.blogContent = blogContent;
		this.blogDate = blogDate;
		this.readCount = readCount;
		this.fileCount = fileCount;
		this.attachmentList = attachmentList;
	}

	
	public int getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public int getBlogNo() {
		return blogNo;
	}

	public void setBlogNo(int blogNo) {
		this.blogNo = blogNo;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getRenamedFileName() {
		return renamedFileName;
	}

	public void setRenamedFileName(String renamedFileName) {
		this.renamedFileName = renamedFileName;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public int getDownloadCount() {
		return downloadCount;
	}

	public void setDownloadCount(int downloadCount) {
		this.downloadCount = downloadCount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public Date getBlogDate() {
		return blogDate;
	}

	public void setBlogDate(Date blogDate) {
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


	@Override
	public String toString() {
		return "AttachmentIndex [attachmentNo=" + attachmentNo + ", blogNo=" + blogNo + ", originalFileName="
				+ originalFileName + ", renamedFileName=" + renamedFileName + ", uploadDate=" + uploadDate
				+ ", downloadCount=" + downloadCount + ", status=" + status + ", blogTitle=" + blogTitle + ", memberNo="
				+ memberNo + ", blogContent=" + blogContent + ", blogDate=" + blogDate + ", readCount=" + readCount
				+ ", fileCount=" + fileCount + ", attachmentList=" + attachmentList + "]";
	}

	
	
}