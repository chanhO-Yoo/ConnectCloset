package com.connectcloset.cc.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable {

	private static final long serialVersionUID = 1L;

	private int memberNo;
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private int memberPostcode;
	private String memberAddress;
	private String memberDetailAddress;
	private char memberGender;
	private Date memberBirthday;
	private String memberValidateKey;
	private Date enrollDate;
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Member(int memberNo, String memberId, String memberPassword, String memberName, String memberPhone,
			String memberEmail, int memberPostcode, String memberAddress, String memberDetailAddress, char memberGender,
			Date memberBirthday, String memberValidateKey, Date enrollDate) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberEmail = memberEmail;
		this.memberPostcode = memberPostcode;
		this.memberAddress = memberAddress;
		this.memberDetailAddress = memberDetailAddress;
		this.memberGender = memberGender;
		this.memberBirthday = memberBirthday;
		this.memberValidateKey = memberValidateKey;
		this.enrollDate = enrollDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public int getMemberPostcode() {
		return memberPostcode;
	}

	public void setMemberPostcode(int memberPostcode) {
		this.memberPostcode = memberPostcode;
	}

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public String getMemberDetailAddress() {
		return memberDetailAddress;
	}

	public void setMemberDetailAddress(String memberDetailAddress) {
		this.memberDetailAddress = memberDetailAddress;
	}

	public char getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(char memberGender) {
		this.memberGender = memberGender;
	}

	public Date getMemberBirthday() {
		return memberBirthday;
	}

	public void setMemberBirthday(Date memberBirthday) {
		this.memberBirthday = memberBirthday;
	}

	public String getMemberValidateKey() {
		return memberValidateKey;
	}

	public void setMemberValidateKey(String memberValidateKey) {
		this.memberValidateKey = memberValidateKey;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPassword=" + memberPassword
				+ ", memberName=" + memberName + ", memberPhone=" + memberPhone + ", memberEmail=" + memberEmail
				+ ", memberPostcode=" + memberPostcode + ", memberAddress=" + memberAddress + ", memberDetailAddress="
				+ memberDetailAddress + ", memberGender=" + memberGender + ", memberBirthday=" + memberBirthday
				+ ", memberValidateKey=" + memberValidateKey + ", enrollDate=" + enrollDate + "]";
	}

	

	
	
	
	
	
}
