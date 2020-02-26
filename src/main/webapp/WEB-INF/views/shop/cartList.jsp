<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>
<fmt:setLocale value="ko_kr"/>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<%
	int totalPrice=0;
%>
<!-- breadcrumb area -->
        <div class="breadcrumb-area bg-img pt-230 pb-152" style="background-image: url(${pageContext.request.contextPath }/resources/img/banner/breadcrumb-3.jpg);">
            <div class="container">
                <div class="breadcrumb-content breadcrumb-black2 text-center">
                    <h2>Cart page</h2>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active" action="${pageContext.request.contextPath }/shop/cartList.do"  method="post">Shopping Cart</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="cart-area pt-95 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">  
                        <form action="#">
                            <div class="table-content table-responsive cart-table">
                                <table class="col-lg-12">
                                    <thead>
                                        <tr>
                                            <th class="cart-product">Product</th>
                                            <th class="cart-price"> colors  </th>                                           
                                            <th  class="cart-qty"> QTY </th>
                                            <th class="cart-total">price</th>
                                            <th></th>
                                        </tr>       
                                    </thead>
                                    <tbody>
     									 <c:forEach items="${list}" var="cart" varStatus="vs">
     									 	  <tr>
     									 	 <td class="cart-img-name">
		                                          <a class="cart-img" href="#"><img src="${pageContext.request.contextPath }/resources/img/cart/cart-1.jpg" alt=""></a>
		                                          <a class="cart-name" href="#"> ${cart.ITEM_NAME} </a> 
		                                     </td>
		                                         <td class="cart-price"><span class="amount">${cart.ITEM_COLORS }</span></td>
		                                    
		                                         
		                                            <td class="cart-quantity">
		                                               <div class="pro-dec-cart">${cart.ITEM_QUANTITY }</div></td>
		                                            <td class="cart-subtotal"><span>${cart.ITEM_PRICE }</span></td>
		                                            	<td class="cart-remove">
		                                               		<a href='${pageContext.request.contextPath }/shop/cartDelete.do?cartNo=${cart.CART_NO}' onclick="return confirm('정말 삭제 하시겠습니까?');"><i class="ti-close"></i></a>
		                                           		</td>
		                                     		</tr>
		                                     		<c:set var="totalPrice" value="${totalPrice + cart.ITEM_QUANTITY * cart.ITEM_PRICE}"/>
				                      		</c:forEach>
                                           	<tr>
                                           		<td colspan="5" align="center">	
                                           			<c:if  test="${empty list}"> <장바구니가 비어있습니다.> </c:if>
                                           		</td>
                                           </tr> 
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <!-- <div class="cart-shiping-update-wrapper mt-25"> -->
                                        <!-- <div class="cart-clear">
                                            <button class="btn-hover">update shopping cart</button>
                                        </div> -->
                                        <div class="cart-shiping-update">
                                            <a class="btn-hover" href="${pageContext.request.contextPath }/shop/shopItemList.do">Continue Shopping</a>
                                        </div>
                                        
                                    <!-- </div> -->
                                </div>
                            </div>
                        </form>	  
                 </div>
                    <div class="col-lg-4">
                        <div class="proceed-area gray-bg-4">
                            	<ul>
                                	<li><span class="proceed-title">Subtotal</span> <span><fmt:formatNumber value="${totalPrice }" groupingUsed="true" type="currency" /></span></li>
                                	<li><span class="proceed-title">Shipping</span> <span>Free shipping</span></li>
                               	 	<li><span class="proceed-title proceed-bold">Total</span> <span><fmt:formatNumber value="${totalPrice }" groupingUsed="true" type="currency" /></span></li>
                            	</ul>
                            <div class="proceed-btn">
                                <a class="btn-hover" href="#">Proceed to Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
