<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>
<style>
.orderImage{
	width: 81px;
	height: 85px;
	object-fit: cover;
}
</style>

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
                                            	포인트${member.memberPoint }원
                                        </h5>
                                    </div>
                                </td>
                                <td style="text-align: center;">
                                    <div class="mt-35">
                                        <h5>
                                           	 배송중인 상품
                                            ${deli2}건
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
                               	<td>
                               		<strong>${os}건</strong>
                               	</td>
                               	<td><strong>${deli1}건</strong></td>
                               	<td><strong>${deli2}건</strong></td>
                               	<td><strong>${deli3}건</strong></td>
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
                                    <button type="button" class="btn btn-light1" name="orderDate" id="oneMonth" value="30" onclick="search(this.value)">1개월</button>
                                    <button type="button" class="btn btn-light3" name="orderDate" id="twoMonth" value="90" onclick="search(this.value)">3개월</button>
                                    <button type="button" class="btn btn-light6" name="orderDate" id="sixMonth" value="180" onclick="search(this.value)">6개월</button>
                                    <button type="button" class="btn btn-lightAll" name="orderDate" id="allMonth" value="0" onclick="search(this.value)">전체</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-10 offset-lg-1 cart-table">
                        <table class="col-lg-12" id="search-board">
                        	<thead>
                            <tr>
                                <th class="order-product">상품정보</th>
                                <th class="order-date">주문일자</th>
                                <th class="order-number">주문번호</th>
                                <th class="order-total">주문금액</th>
                                <th>주문상태</th>
                            </tr>
                        	</thead>
                        	<tbody>
                        	
                            <c:forEach items="${member.orderProductList}" var="order" varStatus="status" >
	                            <tr>
                           			<!-- 상품이미지 -->
                           			<td class="order-img-name">
                           				<a class="order-img" href="#"><img src="/cc/resources/img/cart/cart-1.jpg" /></a>
                            			<!-- 상품정보 -->
		                                <c:forEach items="${member.itemList }" begin="1" end="1" var="item">
                           				<a class="order-name" href="${pageContext.request.contextPath}/single-product.do?itemNo=${item.itemNo}">${item.itemName}</a>
		                                </c:forEach>
                           			</td>
	                                <!-- 주문일자 -->
	                                <td>${order.orderDate}</td>
	                                <!-- 주문번호 -->
	                                <td>${order.orderNo}</td>
		 							<!-- 주문금액 -->
		 							<td>${order.orderTotalPrice }</td>
		 							<c:choose>
		 								<c:when test="${order.deliveryNo eq 'os-001'}">
	                                	<td>주문완료</td>
		 								</c:when>
		 								<c:when test="${order.deliveryNo eq 'os-002'}">
	                                	<td>구매확정</td>
		 								</c:when>
		 								<c:when test="${order.deliveryNo eq 'os-003'}">
	                                	<td>주문취소</td>
		 								</c:when>
		 								<c:when test="${order.deliveryNo eq 'os-004'}">
	                                	<td>상품교환</td>
		 								</c:when>
		 								<c:when test="${order.deliveryNo eq 'os-005'}">
	                                	<td>상품반품</td>
		 								</c:when>
		 								<c:when test="${order.deliveryNo eq 'deli-001'}">
	                                	<td>배송준비중</td>
		 								</c:when>
		 								<c:when test="${order.deliveryNo eq 'deli-002'}">
	                                	<td>배송중</td>
		 								</c:when>
		 								<c:when test="${order.deliveryNo eq 'deli-003'}">
	                                	<td>배송완료</td>
	 								</c:when>
	 							</c:choose>                               
                          		</tr>	
                                </c:forEach>
                                </tbody>
                        </table>
                    </div>
                </div>
                <!-- 기간별 조회 -->
<script>
 function search(sDate) {
		
	 console.log(sDate);

	 $.ajax({
			url: "${pageContext.request.contextPath}/mypage/searchDate/mypage-order.do?memberNo="+${memberLoggedIn.memberNo}+"&startDate="+sDate,
			type: "GET",
			dataType: "json",
			success: data => {

				console.log(data);
				
				var table = $("<table id='tbl-board' class='table table-striped table-hover'></table>");
				table.append("<tr><th>주문번호</th><th>상품명</th><th>상품가격</th><th>구매수량</th><<th>상품색상</th><th>상품사이즈</th><th>구매일</th><th>주문상태</th></tr>");
				
				$.each(data,(idx, date)=>{
					
					var tr =$("<tr></tr>");
					
					tr.append("<td>"+date.orderNo+"</td>");
					
					tr.append("<img class='orderImage' src='${pageContext.request.contextPath }/resources/upload/item/"+date.itemImageReName+"'>");
					
					tr.append("<td>"+date.itemName+"</td>");
					tr.append("<td>"+date.orderTotalPrice+"</td>");
					tr.append("<td>"+date.orderItemCount+"</td>");
					tr.append("<td>"+date.orderItemColor+"</td>");
					tr.append("<td>"+date.orderItemSize+"</td>");
					tr.append("<td>"+date.orderDate+"</td>");
					
						switch (date.deliveryNo) {
						case 'os-001':
							tr.append("<td> 주문완료 </td>");
							break;
						case 'os-002':
							tr.append("<td> 구매확정 </td>");
							break;
						case 'os-003':
							tr.append("<td> 주문취소 </td>");
							break;
						case 'os-004' :
							tr.append("<td> 상품교환 </td>");
							break;
						case 'os-005' :
							tr.append("<td> 상품반품 </td>");
							break;
						case 'deli-001' :
							tr.append("<td> 배송준비중 </td>");
							break;
						case 'deli-002' :
							tr.append("<td> 배송중 </td>");
							break;
						case 'deli-003' :
							tr.append("<td> 배송완료 </td>");
							break;
							
						default:
							break;
						}

					table.append(tr);
				});	
				$("#search-board").html(table);
			},
	
			error: (x,s,e) => {
				console.log("ajax요청실패!",x,s,e);
			}
		}); 
};
	
</script>


            </div>
        </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
