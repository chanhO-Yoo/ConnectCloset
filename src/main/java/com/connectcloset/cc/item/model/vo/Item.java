package com.connectcloset.cc.item.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.Arrays;

public class Item implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int itemNo;
	private String itemName;
	private int itemPrice;
	private int itemStock;
	private String[] itemColors;
	private String[] itemSize;
	private String itemInfo;
	private String itemDetailInfo;
	private Date itemEnrollDate;
	private String brandNo;
	private String itemGenderNo;
	private String itemTypeNo;
	private char itemLimitedType;
	private char itemSaleType;
	
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Item(int itemNo, String itemName, int itemPrice, int itemStock, String[] itemColors, String[] itemSize,
			String itemInfo, String itemDetailInfo, Date itemEnrollDate, String brandNo, String itemGenderNo,
			String itemTypeNo, char itemLimitedType, char itemSaleType) {
		super();
		this.itemNo = itemNo;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemStock = itemStock;
		this.itemColors = itemColors;
		this.itemSize = itemSize;
		this.itemInfo = itemInfo;
		this.itemDetailInfo = itemDetailInfo;
		this.itemEnrollDate = itemEnrollDate;
		this.brandNo = brandNo;
		this.itemGenderNo = itemGenderNo;
		this.itemTypeNo = itemTypeNo;
		this.itemLimitedType = itemLimitedType;
		this.itemSaleType = itemSaleType;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getItemStock() {
		return itemStock;
	}

	public void setItemStock(int itemStock) {
		this.itemStock = itemStock;
	}

	public String[] getItemColors() {
		return itemColors;
	}

	public void setItemColors(String[] itemColors) {
		this.itemColors = itemColors;
	}

	public String[] getItemSize() {
		return itemSize;
	}

	public void setItemSize(String[] itemSize) {
		this.itemSize = itemSize;
	}

	public String getItemInfo() {
		return itemInfo;
	}

	public void setItemInfo(String itemInfo) {
		this.itemInfo = itemInfo;
	}

	public String getItemDetailInfo() {
		return itemDetailInfo;
	}

	public void setItemDetailInfo(String itemDetailInfo) {
		this.itemDetailInfo = itemDetailInfo;
	}

	public Date getItemEnrollDate() {
		return itemEnrollDate;
	}

	public void setItemEnrollDate(Date itemEnrollDate) {
		this.itemEnrollDate = itemEnrollDate;
	}

	public String getBrandNo() {
		return brandNo;
	}

	public void setBrandNo(String brandNo) {
		this.brandNo = brandNo;
	}

	public String getItemGenderNo() {
		return itemGenderNo;
	}

	public void setItemGenderNo(String itemGenderNo) {
		this.itemGenderNo = itemGenderNo;
	}

	public String getItemTypeNo() {
		return itemTypeNo;
	}

	public void setItemTypeNo(String itemTypeNo) {
		this.itemTypeNo = itemTypeNo;
	}

	public char getItemLimitedType() {
		return itemLimitedType;
	}

	public void setItemLimitedType(char itemLimitedType) {
		this.itemLimitedType = itemLimitedType;
	}

	public char getItemSaleType() {
		return itemSaleType;
	}

	public void setItemSaleType(char itemSaleType) {
		this.itemSaleType = itemSaleType;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Item [itemNo=" + itemNo + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemStock="
				+ itemStock + ", itemColors=" + Arrays.toString(itemColors) + ", itemSize=" + Arrays.toString(itemSize)
				+ ", itemInfo=" + itemInfo + ", itemDetailInfo=" + itemDetailInfo + ", itemEnrollDate=" + itemEnrollDate
				+ ", brandNo=" + brandNo + ", itemGenderNo=" + itemGenderNo + ", itemTypeNo=" + itemTypeNo
				+ ", itemLimitedType=" + itemLimitedType + ", itemSaleType=" + itemSaleType + "]";
	}

	
	
	
}
