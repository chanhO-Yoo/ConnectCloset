package com.connectcloset.cc.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Point implements Serializable {

	private static final long serialVersionUID = 1L;

	
	
	private int pointNo;
	private int memberNo;
	private String pointStatus;
	private int pointAmount;
	private String pointChangeReason;
	private Date pointChangeDate;
	
	
	public Point() {}


	/**
	 * @param pointNo
	 * @param memberNo
	 * @param pointStatus
	 * @param pointAmount
	 * @param pointChangeReason
	 * @param pointChangeDate
	 */
	public Point(int pointNo, int memberNo, String pointStatus, int pointAmount, String pointChangeReason,
			Date pointChangeDate) {
		super();
		this.pointNo = pointNo;
		this.memberNo = memberNo;
		this.pointStatus = pointStatus;
		this.pointAmount = pointAmount;
		this.pointChangeReason = pointChangeReason;
		this.pointChangeDate = pointChangeDate;
	}


	public int getPointNo() {
		return pointNo;
	}


	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public String getPointStatus() {
		return pointStatus;
	}


	public void setPointStatus(String pointStatus) {
		this.pointStatus = pointStatus;
	}


	public int getPointAmount() {
		return pointAmount;
	}


	public void setPointAmount(int pointAmount) {
		this.pointAmount = pointAmount;
	}


	public String getPointChangeReason() {
		return pointChangeReason;
	}


	public void setPointChangeReason(String pointChangeReason) {
		this.pointChangeReason = pointChangeReason;
	}


	public Date getPointChangeDate() {
		return pointChangeDate;
	}


	public void setPointChangeDate(Date pointChangeDate) {
		this.pointChangeDate = pointChangeDate;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Point [pointNo=" + pointNo + ", memberNo=" + memberNo + ", pointStatus=" + pointStatus
				+ ", pointAmount=" + pointAmount + ", pointChangeReason=" + pointChangeReason + ", pointChangeDate="
				+ pointChangeDate + "]";
	}
	
	
	
	

	
	
	
	
	
}
