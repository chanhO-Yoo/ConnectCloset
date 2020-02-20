package com.connectcloset.cc.itemQna.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ItemQna2 implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int iQnaNo;
	private int memberNo;
	private int itemNo2;
	private String iQnaType;
	private String iQnaTitle;
	private String iQnaContent;
	private char iQnaAnsYn;
	private Date iQnaDate;
	
	
	ItemQna2() {
		super();
		// TODO Auto-generated constructor stub
	}


	ItemQna2(int iQnaNo, int memberNo, int itemNo2, String iQnaType, String iQnaTitle, String iQnaContent,
			char iQnaAnsYn, Date iQnaDate) {
		super();
		this.iQnaNo = iQnaNo;
		this.memberNo = memberNo;
		this.itemNo2 = itemNo2;
		this.iQnaType = iQnaType;
		this.iQnaTitle = iQnaTitle;
		this.iQnaContent = iQnaContent;
		this.iQnaAnsYn = iQnaAnsYn;
		this.iQnaDate = iQnaDate;
	}


	public int getiQnaNo() {
		return iQnaNo;
	}


	public void setiQnaNo(int iQnaNo) {
		this.iQnaNo = iQnaNo;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public int getItemNo2() {
		return itemNo2;
	}


	public void setItemNo2(int itemNo2) {
		this.itemNo2 = itemNo2;
	}


	public String getiQnaType() {
		return iQnaType;
	}


	public void setiQnaType(String iQnaType) {
		this.iQnaType = iQnaType;
	}


	public String getiQnaTitle() {
		return iQnaTitle;
	}


	public void setiQnaTitle(String iQnaTitle) {
		this.iQnaTitle = iQnaTitle;
	}


	public String getiQnaContent() {
		return iQnaContent;
	}


	public void setiQnaContent(String iQnaContent) {
		this.iQnaContent = iQnaContent;
	}


	public char getiQnaAnsYn() {
		return iQnaAnsYn;
	}


	public void setiQnaAnsYn(char iQnaAnsYn) {
		this.iQnaAnsYn = iQnaAnsYn;
	}


	public Date getiQnaDate() {
		return iQnaDate;
	}


	public void setiQnaDate(Date iQnaDate) {
		this.iQnaDate = iQnaDate;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "ItemQna [iQnaNo=" + iQnaNo + ", memberNo=" + memberNo + ", itemNo2=" + itemNo2 + ", iQnaType="
				+ iQnaType + ", iQnaTitle=" + iQnaTitle + ", iQnaContent=" + iQnaContent + ", iQnaAnsYn=" + iQnaAnsYn
				+ ", iQnaDate=" + iQnaDate + "]";
	}
	
	
	
	
}
	
	