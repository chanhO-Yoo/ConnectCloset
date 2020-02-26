<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
.bg-gray{
	background-color: #F6F6F6 !important;
}
</style>

<section id="board-container" class="container pt-150">
	<p><h5>상품정보</h5></p>
	<table id="tbl-board" class="table">
		<tr onclick="location.href='${pageContext.request.contextPath }/shop/single-product.do?itemNo=${item.itemNo }'">
			<td class="bg-gray">상품이름</td>
			<td>${item.itemName }</td>
			<td class="bg-gray">상품가격</td>
			<td>${item.itemPrice }</td>
			<td class="bg-gray">재고량</td>
			<td>${item.itemStock }</td>
		</tr>
	</table>
	<br />
	<p><h5>문의정보</h5></p>
	<form action="${pageContext.request.contextPath }/admin/adminItemQnaEnd.do" id="itemQnaAnsForm" method="POST">
		<input type="hidden" name="itemQnaNo" value="${itemQna.itemQnaNo }"/>
		<input name="itemQnaAnsWriter" value="${memberLoggedIn.memberEmail}" type="hidden" >
		<table id="tbl-board" class="table">
			<tr>
				<td class="bg-gray">문의번호</td>
				<td>${itemQna.itemQnaNo }</td>
				<td class="bg-gray">작성자</td>
				<td>${itemQna.memberEmail}</td>
				<td class="bg-gray">작성일</td>
				<td>${itemQna.itemQnaDate }</td>
			</tr>
			<tr>
				<td colspan="6" class="bg-gray">문의제목</td>
			</tr>
			<tr>
				<td colspan="6">${itemQna.itemQnaTitle }</td>
			</tr>
			<tr>
				<td colspan="6" class="bg-gray">
					문의내용
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<p name="itemQnaAnsContent">${itemQna.itemQnaContent }</p>
				
				</td>
			</tr>
			<tr>
				<td colspan="6" class="bg-gray">
					답변
				</td>
			</tr>
			<!-- 답변이 있다면 -->
			<c:if test="${itemQnaAnsList != null }">
				<c:forEach items="${itemQnaAnsList}" var="itemQnaAns">	
					<tr>
						<td colspan="6">
							<p class="pl-30 mb-0">${itemQnaAns.itemQnaAnsContent}</p>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<!-- 답변이 있다면 -->
			<tr>
				<td colspan="6">
					<textarea class="form-control" id="itemQna_Ans" name="itemQnaAnsContent" rows="3"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="5"></td>
				<td>
					<button type="button" class="btn btn-success" onclick="submit();">답변작성</button>
				</td>
			</tr>
		</table>
	</form>
	
	
	<script>
		function submit(){ 
			$("#itemQnaAnsForm").submit();
		}
	</script>
	
	
</section> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
	});
</script>