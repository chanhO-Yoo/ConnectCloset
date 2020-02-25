package com.connectcloset.cc.member.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemImage;
import com.connectcloset.cc.order.model.vo.OrderProduct;

public class Member implements Serializable {

	private static final long serialVersionUID = 1L;

	private int memberNo;
	private String memberEmail;
	private String memberPassword;
	private String memberName;
	private String memberPhone;
	private int memberPostcode;
	private String memberAddress;
	private String memberDetailAddress;
	private char memberGender;
	private Date memberBirthday;
	private String memberValidateKey;
	private Date enrollDate;
	private int memberPoint;
	
	//주문내역 조인을 위한 변수
	private List<OrderProduct> orderProductList;
	private List<Item> itemList;

	public List<Item> getItemList() {
		return itemList;
	}

	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}

	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Member(int memberNo, String memberEmail, String memberPassword, String memberName, String memberPhone,
			int memberPostcode, String memberAddress, String memberDetailAddress, char memberGender,
			Date memberBirthday, String memberValidateKey, Date enrollDate, int memberPoint,
			List<OrderProduct> orderProductList, List<Item> itemList) {
		super();
		this.memberNo = memberNo;
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberPostcode = memberPostcode;
		this.memberAddress = memberAddress;
		this.memberDetailAddress = memberDetailAddress;
		this.memberGender = memberGender;
		this.memberBirthday = memberBirthday;
		this.memberValidateKey = memberValidateKey;
		this.enrollDate = enrollDate;
		this.memberPoint = memberPoint;
		this.orderProductList = orderProductList;
		this.itemList = itemList;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
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

	public int getMemberPoint() {
		return memberPoint;
	}

	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}

	public List<OrderProduct> getOrderProductList() {
		return orderProductList;
	}

	public void setOrderProductList(List<OrderProduct> orderProductList) {
		this.orderProductList = orderProductList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+ ", memberName=" + memberName + ", memberPhone=" + memberPhone + ", memberPostcode=" + memberPostcode
				+ ", memberAddress=" + memberAddress + ", memberDetailAddress=" + memberDetailAddress
				+ ", memberGender=" + memberGender + ", memberBirthday=" + memberBirthday + ", memberValidateKey="
				+ memberValidateKey + ", enrollDate=" + enrollDate + ", memberPoint=" + memberPoint
				+ ", orderProductList=" + orderProductList + ", itemList=" + itemList + "]";
	}

	
	
	
}