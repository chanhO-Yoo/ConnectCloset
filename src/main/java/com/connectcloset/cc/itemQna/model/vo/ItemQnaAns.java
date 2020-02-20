package com.connectcloset.cc.itemQna.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ItemQnaAns implements Serializable {

	private static final long serialVersionUID = 1L;

	private int iQnaAnsNo;
	private int iQnaNo;
	private String iQnaAnsWriter;
	private String pQnaAnsContent;
	private Date pQnaAnsDate;
	
	ItemQnaAns() {
		super();
		// TODO Auto-generated constructor stub
	}

	ItemQnaAns(int iQnaAnsNo, int iQnaNo, String iQnaAnsWriter, String pQnaAnsContent, Date pQnaAnsDate) {
		super();
		this.iQnaAnsNo = iQnaAnsNo;
		this.iQnaNo = iQnaNo;
		this.iQnaAnsWriter = iQnaAnsWriter;
		this.pQnaAnsContent = pQnaAnsContent;
		this.pQnaAnsDate = pQnaAnsDate;
	}

	public int getiQnaAnsNo() {
		return iQnaAnsNo;
	}

	public void setiQnaAnsNo(int iQnaAnsNo) {
		this.iQnaAnsNo = iQnaAnsNo;
	}

	public int getiQnaNo() {
		return iQnaNo;
	}

	public void setiQnaNo(int iQnaNo) {
		this.iQnaNo = iQnaNo;
	}

	public String getiQnaAnsWriter() {
		return iQnaAnsWriter;
	}

	public void setiQnaAnsWriter(String iQnaAnsWriter) {
		this.iQnaAnsWriter = iQnaAnsWriter;
	}

	public String getpQnaAnsContent() {
		return pQnaAnsContent;
	}

	public void setpQnaAnsContent(String pQnaAnsContent) {
		this.pQnaAnsContent = pQnaAnsContent;
	}

	public Date getpQnaAnsDate() {
		return pQnaAnsDate;
	}

	public void setpQnaAnsDate(Date pQnaAnsDate) {
		this.pQnaAnsDate = pQnaAnsDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ItemQnaAns [iQnaAnsNo=" + iQnaAnsNo + ", iQnaNo=" + iQnaNo + ", iQnaAnsWriter=" + iQnaAnsWriter
				+ ", pQnaAnsContent=" + pQnaAnsContent + ", pQnaAnsDate=" + pQnaAnsDate + "]";
	}
	
	
	
}