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

<style>
/*버튼*/
input#btn-add {
	float: right;
	margin: 0 0 15px;
}

</style>

<section id="board-container" class="container pt-150">
	<p>총 ${totalContents }개의 배송건이 있습니다.</p>
	<!-- <input type="button" value="상품추가" id="btn-add" class="btn btn-outline-success" onclick="fn_enrollItemForm();"/>
 -->

 	<div class="btn-board">

<input type="image" src="/images/button/search.gif" alt="검색" class="img"/>
<!-- 		<input type="button" value="1개월" id="btn-one"
			class="btn btn-outline-success" onclick="fn_dateForm();" /> <input
			type="button" value="3개월" id="btn-two"
			class="btn btn-outline-success" onclick="fn_dateForm();" /> <input
			type="button" value="6개월" id="btn-three"
			class="btn btn-outline-success" onclick="fn_dateForm();" /> <input
			type="button" value="전체검색" id="btn-four"
			class="btn btn-outline-success" onclick="fn_dateForm();" />
 -->
	</div>




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
				<td>
					<select class="del" name="deliveryNo" id="delivery" required>
						<!-- <option value="" disabled selected>배송상태</option> -->
						<option value="deli-001" ${item.deliveryNo=='deli-001'?'selected':'' }>배송준비중</option>
						<option value="deli-002" ${item.deliveryNo=='deli-002'?'selected':'' }>배송중</option>
						<option value="deli-003" ${item.deliveryNo=='deli-003'?'selected':'' }>배송완료</option>
						<option value="os-001" ${item.deliveryNo=='os-001'?'selected':'' }>주문완료</option>
						<option value="os-002" ${item.deliveryNo=='os-002'?'selected':'' }>구매확정</option>
						<option value="os-003" ${item.deliveryNo=='os-003'?'selected':'' }>주문취소</option>
						<option value="os-004" ${item.deliveryNo=='os-004'?'selected':'' }>상품교환</option>
						<option value="os-005" ${item.deliveryNo=='os-005'?'selected':'' }>상품반품</option>
				</select>
				<input type="hidden" id="orderNo" value="${item.orderNo }" />

			</tr>
			
			
		</c:forEach>

	</table>

	<!-- pageBar 출력 부분 -->
	${pageBar }
	</div>

<script>
	$(".del").change(function(){
		var x = $(this).children("option:selected").val();
		var y = $(this).children("option:selected").text(); 
		var z = $(this).next("input").val(); 
		console.log("콘솔확인용="+y+"//DB저장="+x+"//주문번호컨트롤러"+z);
		location.href="${pageContext.request.contextPath}/admin/changedelivery.do?deliveryNo="+x+"&orderNo="+z;
	});


</script>


	<jsp:include page="/WEB-INF/views/common/footer.jsp" />