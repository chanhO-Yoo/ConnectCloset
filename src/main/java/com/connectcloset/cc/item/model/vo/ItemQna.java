package com.connectcloset.cc.item.model.vo;

import java.io.Serializable;
import java.sql.Date;


public class ItemQna implements Serializable{
	
		private static final long serialVersionUID = 1L;
		
		private int itemQnaNo;
		private int memberNo;
		private int itemNo;
		private String itemQnaType;
		private String itemQnaTitle;
		private String itemQnaContent;
		private char itemQnaAnsYn;
		private Date itemQnaDate;
		private String memberEmail;
		
		ItemQna() {
			super();
			// TODO Auto-generated constructor stub
		}

		ItemQna(int itemQnaNo, int memberNo, int itemNo, String itemQnaType, String itemQnaTitle, String itemQnaContent,
				char itemQnaAnsYn, Date itemQnaDate, String memberEmail) {
			super();
			this.itemQnaNo = itemQnaNo;
			this.memberNo = memberNo;
			this.itemNo = itemNo;
			this.itemQnaType = itemQnaType;
			this.itemQnaTitle = itemQnaTitle;
			this.itemQnaContent = itemQnaContent;
			this.itemQnaAnsYn = itemQnaAnsYn;
			this.itemQnaDate = itemQnaDate;
			this.memberEmail = memberEmail;
		}

		public int getItemQnaNo() {
			return itemQnaNo;
		}

		public void setItemQnaNo(int itemQnaNo) {
			this.itemQnaNo = itemQnaNo;
		}

		public int getMemberNo() {
			return memberNo;
		}

		public void setMemberNo(int memberNo) {
			this.memberNo = memberNo;
		}

		public int getItemNo() {
			return itemNo;
		}

		public void setItemNo(int itemNo) {
			this.itemNo = itemNo;
		}

		public String getItemQnaType() {
			return itemQnaType;
		}

		public void setItemQnaType(String itemQnaType) {
			this.itemQnaType = itemQnaType;
		}

		public String getItemQnaTitle() {
			return itemQnaTitle;
		}

		public void setItemQnaTitle(String itemQnaTitle) {
			this.itemQnaTitle = itemQnaTitle;
		}

		public String getItemQnaContent() {
			return itemQnaContent;
		}

		public void setItemQnaContent(String itemQnaContent) {
			this.itemQnaContent = itemQnaContent;
		}

		public char getItemQnaAnsYn() {
			return itemQnaAnsYn;
		}

		public void setItemQnaAnsYn(char itemQnaAnsYn) {
			this.itemQnaAnsYn = itemQnaAnsYn;
		}

		public Date getItemQnaDate() {
			return itemQnaDate;
		}

		public void setItemQnaDate(Date itemQnaDate) {
			this.itemQnaDate = itemQnaDate;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
		public String getMemberEmail() {
			return memberEmail;
		}

		public void setMemberEmail(String memberEmail) {
			this.memberEmail = memberEmail;
		}

		@Override
		public String toString() {
			return "ItemQna [itemQnaNo=" + itemQnaNo + ", memberNo=" + memberNo + ", itemNo=" + itemNo
					+ ", itemQnaType=" + itemQnaType + ", itemQnaTitle=" + itemQnaTitle + ", itemQnaContent="
					+ itemQnaContent + ", itemQnaAnsYn=" + itemQnaAnsYn + ", itemQnaDate=" + itemQnaDate + ", memberEmail=" + memberEmail + "]";
		}

		
		
}