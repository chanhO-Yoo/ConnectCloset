package com.connectcloset.cc.coupon.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class CouponList implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private int couponIndexNo;
	private String couponNo;
	private int memberNo;
	private Date couponRegdate;
	private Date couponDuedate;
	private Date useDate;
	private String couponCheck;
	
	public CouponList() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CouponList(int couponIndexNo, String couponNo, int memberNo, Date couponRegdate, Date couponDuedate,
			Date useDate, String couponCheck) {
		super();
		this.couponIndexNo = couponIndexNo;
		this.couponNo = couponNo;
		this.memberNo = memberNo;
		this.couponRegdate = couponRegdate;
		this.couponDuedate = couponDuedate;
		this.useDate = useDate;
		this.couponCheck = couponCheck;
	}

	public int getCouponIndexNo() {
		return couponIndexNo;
	}
	public void setCouponIndexNo(int couponIndexNo) {
		this.couponIndexNo = couponIndexNo;
	}
	public String getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(String couponNo) {
		this.couponNo = couponNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public Date getCouponRegdate() {
		return couponRegdate;
	}
	public void setCouponRegdate(Date couponRegdate) {
		this.couponRegdate = couponRegdate;
	}
	public Date getCouponDuedate() {
		return couponDuedate;
	}
	public void setCouponDuedate(Date couponDuedate) {
		this.couponDuedate = couponDuedate;
	}
	public Date getUseDate() {
		return useDate;
	}
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}
	public String getCouponCheck() {
		return couponCheck;
	}
	public void setCouponCheck(String couponCheck) {
		this.couponCheck = couponCheck;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CouponList [couponIndexNo=" + couponIndexNo + ", couponNo=" + couponNo + ", memberNo=" + memberNo
				+ ", couponRegdate=" + couponRegdate + ", couponDuedate=" + couponDuedate + ", useDate=" + useDate
				+ ", couponCheck=" + couponCheck + "]";
	}
	
	
}

