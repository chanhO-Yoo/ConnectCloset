package com.connectcloset.cc.wishlist.model.vo;

import java.io.Serializable;

public class WishList implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private int wishNo;
	private int memberNo;
	private int itemNo;
	private String itemImageReName;
	
	public WishList() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	

	public WishList(int wishNo, int memberNo, int itemNo, String itemImageReName) {
		super();
		this.wishNo = wishNo;
		this.memberNo = memberNo;
		this.itemNo = itemNo;
		this.itemImageReName = itemImageReName;
	}

	public int getWishNo() {
		return wishNo;
	}

	public void setWishNo(int wishNo) {
		this.wishNo = wishNo;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getItemImageReName() {
		return itemImageReName;
	}

	public void setItemImageReName(String itemImageReName) {
		this.itemImageReName = itemImageReName;
	}



	@Override
	public String toString() {
		return "WishList [wishNo=" + wishNo + ", memberNo=" + memberNo + ", itemNo=" + itemNo + ", itemImageReName="
				+ itemImageReName + "]";
	}

	
	
	
	
	
	
	
	
}
