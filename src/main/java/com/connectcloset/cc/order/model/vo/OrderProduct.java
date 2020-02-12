package com.connectcloset.cc.order.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class OrderProduct implements Serializable {

	private static final long serialVersionUID = 1L;

	private String orderNo;
	private String orderId;
	private Date orderDate;
	private String itemName; //상품명
	private int orderItemCount; //구매수량
	private String orderPayMethod;
	private String orderPayStatus;
	private int orderTotalItemEa;
	private int orderTotalPrice;
	private int orderUsePoint;
	private int orderCuponNo;
	private String impUid; // 아임포트에서 발급하는 거래건당 고유번호

	
	
	
	public OrderProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getOrderItemCount() {
		return orderItemCount;
	}

	public void setOrderItemCount(int orderItemCount) {
		this.orderItemCount = orderItemCount;
	}

	public String getOrderPayMethod() {
		return orderPayMethod;
	}

	public void setOrderPayMethod(String orderPayMethod) {
		this.orderPayMethod = orderPayMethod;
	}

	public String getOrderPayStatus() {
		return orderPayStatus;
	}

	public void setOrderPayStatus(String orderPayStatus) {
		this.orderPayStatus = orderPayStatus;
	}

	public int getOrderTotalItemEa() {
		return orderTotalItemEa;
	}

	public void setOrderTotalItemEa(int orderTotalItemEa) {
		this.orderTotalItemEa = orderTotalItemEa;
	}

	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public int getOrderUsePoint() {
		return orderUsePoint;
	}

	public void setOrderUsePoint(int orderUsePoint) {
		this.orderUsePoint = orderUsePoint;
	}

	public int getOrderCuponNo() {
		return orderCuponNo;
	}

	public void setOrderCuponNo(int orderCuponNo) {
		this.orderCuponNo = orderCuponNo;
	}

	public String getImpUid() {
		return impUid;
	}

	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "orderProduct [orderNo=" + orderNo + ", orderId=" + orderId + ", orderDate=" + orderDate + ", itemName="
				+ itemName + ", orderItemCount=" + orderItemCount + ", orderPayMethod=" + orderPayMethod
				+ ", orderPayStatus=" + orderPayStatus + ", orderTotalItemEa=" + orderTotalItemEa + ", orderTotalPrice="
				+ orderTotalPrice + ", orderUsePoint=" + orderUsePoint + ", orderCuponNo=" + orderCuponNo + ", impUid="
				+ impUid + "]";
	}

	
	
	
}
