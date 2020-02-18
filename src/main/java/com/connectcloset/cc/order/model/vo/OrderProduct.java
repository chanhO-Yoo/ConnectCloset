package com.connectcloset.cc.order.model.vo;
import java.io.Serializable;
import java.sql.Date;
public class OrderProduct implements Serializable {
    private static final long serialVersionUID = 1L;
    private String orderNo;
    private String orderId;
    private Date orderDate;
    
    private int orderItemNo; 
    private int orderItemCount; //구매수량
    private String orderPayMethod;
    private String orderPayStatus;
    private int orderTotalPrice;
    private int orderUsePoint;
    private int orderCuponNo;
    private String orderReviewYN;
    private String orderItemColor;
    private String orderItemSize;
    
    
    private String impUid; // 아임포트에서 발급하는 거래건당 고유번호
    private int itemNo;
    private int memberNo;
    private String orderStatusNo;
    private String deliveryNo;
    private String itemName;
    private String orderStatus;
    public OrderProduct() {
        super();
        // TODO Auto-generated constructor stub
    }
    public OrderProduct(String orderNo, String orderId, Date orderDate, int orderItemNo, int orderItemCount,
            String orderPayMethod, String orderPayStatus, int orderTotalPrice, int orderUsePoint, int orderCuponNo,
            String orderReviewYN, String orderItemColor, String orderItemSize, String impUid, int itemNo, int memberNo,
            String orderStatusNo, String deliveryNo, String itemName, String orderStatus) {
        super();
        this.orderNo = orderNo;
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.orderItemNo = orderItemNo;
        this.orderItemCount = orderItemCount;
        this.orderPayMethod = orderPayMethod;
        this.orderPayStatus = orderPayStatus;
        this.orderTotalPrice = orderTotalPrice;
        this.orderUsePoint = orderUsePoint;
        this.orderCuponNo = orderCuponNo;
        this.orderReviewYN = orderReviewYN;
        this.orderItemColor = orderItemColor;
        this.orderItemSize = orderItemSize;
        this.impUid = impUid;
        this.itemNo = itemNo;
        this.memberNo = memberNo;
        this.orderStatusNo = orderStatusNo;
        this.deliveryNo = deliveryNo;
        this.itemName = itemName;
        this.orderStatus =orderStatus;
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
    public int getOrderItemNo() {
        return orderItemNo;
    }
    public void setOrderItemNo(int orderItemNo) {
        this.orderItemNo = orderItemNo;
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
    public String getOrderReviewYN() {
        return orderReviewYN;
    }
    public void setOrderReviewYN(String orderReviewYN) {
        this.orderReviewYN = orderReviewYN;
    }
    public String getOrderItemColor() {
        return orderItemColor;
    }
    public void setOrderItemColor(String orderItemColor) {
        this.orderItemColor = orderItemColor;
    }
    public String getOrderItemSize() {
        return orderItemSize;
    }
    public void setOrderItemSize(String orderItemSize) {
        this.orderItemSize = orderItemSize;
    }
    public String getImpUid() {
        return impUid;
    }
    public void setImpUid(String impUid) {
        this.impUid = impUid;
    }
    public int getItemNo() {
        return itemNo;
    }
    public void setItemNo(int itemNo) {
        this.itemNo = itemNo;
    }
    public int getMemberNo() {
        return memberNo;
    }
    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }
    public String getOrderStatusNo() {
        return orderStatusNo;
    }
    public void setOrderStatusNo(String orderStatusNo) {
        this.orderStatusNo = orderStatusNo;
    }
    public String getDeliveryNo() {
        return deliveryNo;
    }
    public void setDeliveryNo(String deliveryNo) {
        this.deliveryNo = deliveryNo;
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
    
    
    public String getOrderStatus() {
        return orderStatus;
    }
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
    
    
    @Override
    public String toString() {
        return "OrderProduct [orderNo=" + orderNo + ", orderId=" + orderId + ", orderDate=" + orderDate
                + ", orderItemNo=" + orderItemNo + ", orderItemCount=" + orderItemCount + ", orderPayMethod="
                + orderPayMethod + ", orderPayStatus=" + orderPayStatus + ", orderTotalPrice=" + orderTotalPrice
                + ", orderUsePoint=" + orderUsePoint + ", orderCuponNo=" + orderCuponNo + ", orderReviewYN="
                + orderReviewYN + ", orderItemColor=" + orderItemColor + ", orderItemSize=" + orderItemSize
                + ", impUid=" + impUid + ", itemNo=" + itemNo + ", memberNo=" + memberNo + ", orderStatusNo="
                + orderStatusNo + ", deliveryNo=" + deliveryNo + ", itemName=" + itemName + ", orderStatus="+orderStatus+"]";
    }
}
