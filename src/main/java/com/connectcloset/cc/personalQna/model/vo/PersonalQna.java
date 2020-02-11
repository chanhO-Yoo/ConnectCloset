package com.connectcloset.cc.personalQna.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class PersonalQna implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int pQnaNo;
	private int memberNo;
	private String pQnaTypeNo;
	private String pQnaTitle;
	private String pQnaContent;
	private Date pQnaDate;
	private char pAnsYn;
	
	public PersonalQna() {
		super();
	}

	public PersonalQna(int pQnaNo, int memberNo, String pQnaTypeNo, String pQnaTitle, String pQnaContent, Date pQnaDate,
			char pAnsYn) {
		super();
		this.pQnaNo = pQnaNo;
		this.memberNo = memberNo;
		this.pQnaTypeNo = pQnaTypeNo;
		this.pQnaTitle = pQnaTitle;
		this.pQnaContent = pQnaContent;
		this.pQnaDate = pQnaDate;
		this.pAnsYn = pAnsYn;
	}

	public int getpQnaNo() {
		return pQnaNo;
	}

	public void setpQnaNo(int pQnaNo) {
		this.pQnaNo = pQnaNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getpQnaTypeNo() {
		return pQnaTypeNo;
	}

	public void setpQnaTypeNo(String pQnaTypeNo) {
		this.pQnaTypeNo = pQnaTypeNo;
	}

	public String getpQnaTitle() {
		return pQnaTitle;
	}

	public void setpQnaTitle(String pQnaTitle) {
		this.pQnaTitle = pQnaTitle;
	}

	public String getpQnaContent() {
		return pQnaContent;
	}

	public void setpQnaContent(String pQnaContent) {
		this.pQnaContent = pQnaContent;
	}

	public Date getpQnaDate() {
		return pQnaDate;
	}

	public void setpQnaDate(Date pQnaDate) {
		this.pQnaDate = pQnaDate;
	}

	public char getpAnsYn() {
		return pAnsYn;
	}

	public void setpAnsYn(char pAnsYn) {
		this.pAnsYn = pAnsYn;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "PersonalQna [pQnaNo=" + pQnaNo + ", memberNo=" + memberNo + ", pQnaTypeNo=" + pQnaTypeNo
				+ ", pQnaTitle=" + pQnaTitle + ", pQnaContent=" + pQnaContent + ", pQnaDate=" + pQnaDate + ", pAnsYn="
				+ pAnsYn + "]";
	}
	
	

}
