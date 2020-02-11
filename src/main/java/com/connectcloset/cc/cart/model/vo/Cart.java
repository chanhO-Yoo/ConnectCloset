package com.connectcloset.cc.cart.model.vo;

import java.io.Serializable;

public class Cart implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private int cartNo;
	private int memberNo;
	private int itemNo;
	private int item_quantity;
	private int itemPrice;
	private String itemColors;
	private String itemName;
	
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Cart(int cartNo, int memberNo, int itemNo, int item_quantity, int itemPrice, String itemColors,
			String itemName) {
		super();
		this.cartNo = cartNo;
		this.memberNo = memberNo;
		this.itemNo = itemNo;
		this.item_quantity = item_quantity;
		this.itemPrice = itemPrice;
		this.itemColors = itemColors;
		this.itemName = itemName;
	}


	public int getCartNo() {
		return cartNo;
	}


	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
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


	public int getItem_quantity() {
		return item_quantity;
	}


	public void setItem_quantity(int item_quantity) {
		this.item_quantity = item_quantity;
	}


	public int getItemPrice() {
		return itemPrice;
	}


	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}


	public String getItemColors() {
		return itemColors;
	}


	public void setItemColors(String itemColors) {
		this.itemColors = itemColors;
	}


	public String getItemName() {
		return itemName;
	}


	public void setItemName(String itemName) {
		this.itemName = itemName;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Cart [cartNo=" + cartNo + ", memberNo=" + memberNo + ", itemNo=" + itemNo + ", item_quantity="
				+ item_quantity + ", itemPrice=" + itemPrice + ", itemColors=" + itemColors + ", itemName=" + itemName
				+ "]";
	}
	






	
	
	
	
	
	
	
	
	
	

}
