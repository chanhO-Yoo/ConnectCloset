package com.connectcloset.cc.order.model.vo;

import java.io.Serializable;

public class Delivery implements Serializable{

	
	private static final long serialVersionUID = 1L;
	
	private String deliveryNo;
	private String deliveryStatus;
	
	
	
	public Delivery() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Delivery(String deliveryNo, String deliveryStatus) {
		super();
		this.deliveryNo = deliveryNo;
		this.deliveryStatus = deliveryStatus;
	}



	public String getDeliveryNo() {
		return deliveryNo;
	}



	public void setDeliveryNo(String deliveryNo) {
		this.deliveryNo = deliveryNo;
	}



	public String getDeliveryStatus() {
		return deliveryStatus;
	}



	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "Delivery [deliveryNo=" + deliveryNo + ", deliveryStatus=" + deliveryStatus + "]";
	}
	
	
	
	
}
