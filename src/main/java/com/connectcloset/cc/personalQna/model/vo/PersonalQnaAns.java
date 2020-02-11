package com.connectcloset.cc.personalQna.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class PersonalQnaAns implements Serializable {

	private static final long serialVersionUID = 1L;

	private int pQnaAnsNo;
	private int pQnaNo;
	private String pQnaAnsContent;
	private Date pQnaAnsDate;
	
	public PersonalQnaAns() {
		super();
	}
	
	public PersonalQnaAns(int pQnaAnsNo, int pQnaNo, String pQnaAnsContent, Date pQnaAnsDate) {
		super();
		this.pQnaAnsNo = pQnaAnsNo;
		this.pQnaNo = pQnaNo;
		this.pQnaAnsContent = pQnaAnsContent;
		this.pQnaAnsDate = pQnaAnsDate;
	}

	public int getpQnaAnsNo() {
		return pQnaAnsNo;
	}

	public void setpQnaAnsNo(int pQnaAnsNo) {
		this.pQnaAnsNo = pQnaAnsNo;
	}

	public int getpQnaNo() {
		return pQnaNo;
	}

	public void setpQnaNo(int pQnaNo) {
		this.pQnaNo = pQnaNo;
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
		return "PersonalQnaAns [pQnaAnsNo=" + pQnaAnsNo + ", pQnaNo=" + pQnaNo + ", pQnaAnsContent=" + pQnaAnsContent
				+ ", pQnaAnsDate=" + pQnaAnsDate + "]";
	}
	
	
	
}
