<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>

		<div class="checkout-area pt-95 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                            <h4>주문정보</h3>
                    </div>
                </div>
                <br>
                <div class="row">
                	
                    <div class="col-lg-10 offset-lg-1" style="background-color: antiquewhite;">
                        <table class="table mb-0">
                            <colgroup>
                                <col width="33%" />
                                <col width="33%" />
                                <col width="33%" />
                            </colgroup>
                            <tr>
                                <td style="text-align: center;"><img src="assets/img/profile.png" alt="" width="100px" height="100px"></td>
                                <td style="text-align: center;">
                                    <div class="mt-15">
                                        <h4>
                                            	${member.memberName}님 안녕하세요!
                                        </h4>
                                        <br>
                                        <h5>
                                            	보유쿠폰 {}개, 포인트{}원
                                        </h5>
                                    </div>
                                </td>
                                <td style="text-align: center;">
                                    <div class="mt-35">
                                        <h5>
                                           	 배송중인 상품
                                            {}건
                                        </h5>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <table class="table" style="text-align: center;">
                            <colgroup>
                                <col width="25%" />
                                <col width="25%" />
                                <col width="25%" />
                                <col width="25%" />
                            </colgroup>
                            <tr>
                                <td><img src="assets/img/order_end.png" alt="" width="100px" height="100px"></td>
                                <td><img src="assets/img/order_end.png" alt="" width="100px" height="100px"></td>
                                <td><img src="assets/img/ship_ing.png" alt="" width="100px" height="100px"></td>
                                <td><img src="assets/img/ship_end.png" alt="" width="100px" height="100px"></td>
                            </tr>
                            <tr>
                                <td><strong>주문완료</strong></td>
                                <td><strong>배송준비중</strong></td>
                                <td><strong>배송중</strong></td>
                                <td><strong>배송완료</strong></td>
                            </tr>
                            <tr>
                                <td><strong>{}건</strong></td>
                                <td><strong>{}건</strong></td>
                                <td><strong>{}건</strong></td>
                                <td><strong>{}건</strong></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <table class="table" style="text-align: center; background-color: antiquewhite;">
                            <colgroup>
                                <col width="25%" />
                                <col width="50%" />
                                <col width="25%" />
                            </colgroup>
                            <tr>
                                <td><strong>기간검색</strong></td>
                                <td>
                                    <button type="button" class="btn btn-light">1개월</button>
                                    <button type="button" class="btn btn-light">3개월</button>
                                    <button type="button" class="btn btn-light">6개월</button>
                                    <button type="button" class="btn btn-light">전체</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-info">검색</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <table class="table">
                            <tr>
                                <th>주문번호</th>
                                <th>상품정보</th>
                                <th>구매일</th>
                                <th>주문상태</th>
                            </tr>
	                            	<c:forEach items="${member.orderProductList}" var="order" varStatus="status" >
	                            		
	                            <tr>
			                                <td>${order.orderNo}</td>
			                                <td>${itemList[status.index].itemName}</td>
			                                <td>${order.orderDate}</td>
			                                <td>${order.deliveryNo }</td>
	                            </tr>
	                                </c:forEach>
                        </table>
                    </div>
                </div>
				${member }


            </div>
        </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
