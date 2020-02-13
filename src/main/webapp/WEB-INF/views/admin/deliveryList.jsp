<%@page import="java.util.Date"%>
<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<%
	//페이비자 작업
	int totalContents = (int)request.getAttribute("totalContents");
	int cPage = (int)request.getAttribute("cPage");
	int numPerPage = (int)request.getAttribute("numPerPage");
	String url = "deliveryList.do"; //간단한 상대주소로 접근
	String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	pageContext.setAttribute("pageBar", pageBar);
%>

<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header2.jsp" />
// jQuery UI CSS파일 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
// jQuery 기본 js파일
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
// jQuery UI 라이브러리 js파일
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  

<style>
h4 {
	font-size: 13px;
}
div.wrap>div {
	font-size: 12px;
	position: relative;
	float: left;
	margin-right: 5px;
	height: 30px;
	line-height: 30px;
	vertical-align: middle; input { line-height : 30px;
	margin: 0;
	padding: 0;
	padding-left: 5px;
	padding-right: 5px;
	width: 100px;
}
button {
	clear: both;
	display: block;
	line-height: 40px;
	margin-top: 80px;
	background-color: #eee;
	color: #333;
	border: 1px solid #666;
	padding-left: 20px;
	padding-right: 20px;
	border-radius: 4px;
}
#ui-datepicker-div {
	top: -999px;
	border: 0;
	font-size: 14px;
}
.ui-datepicker-header {
	font-size: 13px;
}
.ui-datepicker-calendar {
	background-color: #fff;
	border: 1px solid #ddd;
	tr
	{
	font-size
	:
	11px;
}
</style>
<!-- <form id="dateShow"> -->
<section id="board-container" class="container pt-150">
	 <div class="checkout-area pt-95 pb-100" >
		<p>총 ${totalContents }개의 주문건이 있습니다.</p>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <table class="table" id="orderDateShow" style="text-align: center; background-color: lightblue;">
                            <colgroup>
                                <col width="25%" />
                                <col width="50%" />
                                <col width="25%" />
                            </colgroup>
                            <tr>
                                <td><strong>기간검색</strong></td>
                                <td>
                                    <button type="button" class="btn btn-light1" name="orderDate" id="oneMonth" value="30" onclick="search(this.value)">1개월</button>
                                    <button type="button" class="btn btn-light3" name="orderDate" id="twoMonth" value="60" onclick="search(this.value)">3개월</button>
                                    <button type="button" class="btn btn-light6" name="orderDate" id="sixMonth" value="90" onclick="search(this.value)">6개월</button>
                                    <button type="button" class="btn btn-lightAll" name="orderDate" id="allMonth" value="365">전체</button>
                                </td>
                              <!-- <td>
                                    <input type="button" class="btn btn-info" value="검색"></button>
                              </td> --> 
                            </tr>
                        </table>
                    </div>
                </div>

							<!-- 	<h4>기간 선택</h4>
								<div class="wrap">
									<div>시작일</div>
									<div>
										<input type="text" id="from">
									</div>
									<div>~ 종료일</div>
									<div>
										<input type="text" id="to">
									</div>
								</div>
								<button class="btn">조회</button>
								<br />
								<br />
								<br /> -->
	<table id="tbl-board" class="table table-striped table-hover">
		<tr>
			<th>주문번호</th>
			<th>고객ID</th>
			<th>상품명</th>
			<th>상품가격</th>
			<th>구매수량</th>
			<th>상품색상</th>
			<th>상품사이즈</th>
			<th>구매일</th>
			<th>주문/배송상태</th>
		</tr>

		<c:forEach items="${list }" var="item" varStatus="">
			<tr>
				<td>${item.orderNo }</td>
				<td>${item.orderId }</td>
				<td>${item.itemName }</td>
				<td>${item.orderTotalPrice }</td>
				<td>${item.orderItemCount }</td>
				<td>${item.orderItemColor }</td>
				<td>${item.orderItemSize }</td>
				<%-- <td>
				<a href="${pageContext.request.contextPath }/board/boardViewCollection.do?boardNo=${board.boardNo}">
					${item.itemName }
				</a>
				</td> --%>
				<td>${item.orderDate }</td>
				<td><select class="del" name="deliveryNo" id="delivery"
					required>
						<!-- <option value="" disabled selected>배송상태</option> -->
						<option value="deli-001"
							${item.deliveryNo=='deli-001'?'selected':'' }>배송준비중</option>
						<option value="deli-002"
							${item.deliveryNo=='deli-002'?'selected':'' }>배송중</option>
						<option value="deli-003"
							${item.deliveryNo=='deli-003'?'selected':'' }>배송완료</option>
						<option value="os-001" ${item.deliveryNo=='os-001'?'selected':'' }>주문완료</option>
						<option value="os-002" ${item.deliveryNo=='os-002'?'selected':'' }>구매확정</option>
						<option value="os-003" ${item.deliveryNo=='os-003'?'selected':'' }>주문취소</option>
						<option value="os-004" ${item.deliveryNo=='os-004'?'selected':'' }>상품교환</option>
						<option value="os-005" ${item.deliveryNo=='os-005'?'selected':'' }>상품반품</option>
				</select> <input type="hidden" id="orderNo" value="${item.orderNo }" />
			</tr>

		</c:forEach>
	</table>
	<div class="result" id="dateShow-result"></div>

	<!-- pageBar 출력 부분 -->
	${pageBar }
	</div>
<!-- </form>
 -->

<script>
/*주문/배송처리 스크립트  */
	$(".del").change(function(){
		var x = $(this).children("option:selected").val();
		var y = $(this).children("option:selected").text(); 
		var z = $(this).next("input").val(); 
		console.log("콘솔확인용="+y+"//DB저장="+x+"//주문번호컨트롤러"+z);
		location.href="${pageContext.request.contextPath}/admin/changedelivery.do?deliveryNo="+x+"&orderNo="+z;
	});
</script>

	
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script>

 function search(sDate) {
		
	 console.log(sDate);

	 $.ajax({
			url: "${pageContext.request.contextPath}/admin/searchDate/deliveryList.do?startDate="+sDate,
			type: "GET",
			dataType: "json",
			success: data => {

				console.log(data);
				
				var table = $("<table id='tbl-board' class='table table-striped table-hover'></table>");
				table.append("<tr><th>주문번호</th><th>고객ID</th><th>상품명</th><th>상품가격</th><th>구매수량</th><<th>상품색상</th><th>상품사이즈</th><th>구매일</th></tr>");
				
				$.each(data,(idx, date)=>{
					
					var tr =$("<tr></tr>");
					
					tr.append("<td>"+date.orderNo+"</td>");
					tr.append("<td>"+date.orderId+"</td>");
					tr.append("<td>"+date.itemName+"</td>");
					tr.append("<td>"+date.orderTotalPrice+"</td>");
					tr.append("<td>"+date.orderItemCount+"</td>");
					tr.append("<td>"+date.orderItemColor+"</td>");
					tr.append("<td>"+date.orderItemSize+"</td>");
					tr.append("<td>"+date.orderDate+"</td>");

					table.append(tr);
				});	
				$("#tbl-board").html(table);
			},
	
			error: (x,s,e) => {
				console.log("ajax요청실패!",x,s,e);
			}
		}); 
};
	
</script>