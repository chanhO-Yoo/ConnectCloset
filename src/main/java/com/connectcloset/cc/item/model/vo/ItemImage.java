package com.connectcloset.cc.item.model.vo;

import java.io.Serializable;

public class ItemImage implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int itemImageNo;
	private String itemImageOriginName;
	private String itemImageReName;
	private int itemNo;
	
	public ItemImage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ItemImage(int itemImageNo, String itemImageOriginName, String itemImageReName, int itemNo) {
		super();
		this.itemImageNo = itemImageNo;
		this.itemImageOriginName = itemImageOriginName;
		this.itemImageReName = itemImageReName;
		this.itemNo = itemNo;
	}

	public int getItemImageNo() {
		return itemImageNo;
	}

	public void setItemImageNo(int itemImageNo) {
		this.itemImageNo = itemImageNo;
	}

	public String getItemImageOriginName() {
		return itemImageOriginName;
	}

	public void setItemImageOriginName(String itemImageOriginName) {
		this.itemImageOriginName = itemImageOriginName;
	}

	public String getItemImageReName() {
		return itemImageReName;
	}

	public void setItemImageReName(String itemImageReName) {
		this.itemImageReName = itemImageReName;
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

	@Override
	public String toString() {
		return "ItemImage [itemImageNo=" + itemImageNo + ", itemImageOriginName=" + itemImageOriginName
				+ ", itemImageReName=" + itemImageReName + ", itemNo=" + itemNo + "]";
	}
	
	

}
