<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<section id="board-container" class="container pt-150">
	<form action="${pageContext.request.contextPath }/admin/adminIQnaEnd.do" id="iQnaAnsForm" method="POST">
		<input type="hidden" name="iQnaNo" value="${iQna.itemQnaNo }"/>
		<table id="tbl-board" class="table">
			<tr>
				<td>문의번호</td>
				<td>${iQna.itemQnaNo }</td>
				<td>문의유형</td>
				<td>${iQna.itemQnaType }</td>
				<td>문의제목</td>
				<td>${iQna.itemQnaTitle }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td colspan="2">${iQna.memberNo }</td>
				<td>작성일</td>
				<td colspan="2">${iQna.itemQnaDate }</td>
			</tr>
			<tr>
				<td colspan="6">
					<strong>문의내용</strong>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<p>${iQna.iQnaContent }</p>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<strong>답변</strong>
				</td>
			</tr>
			<!-- 답변이 있다면 -->
			<c:if test="${iQnaAnsList != null }">
				<c:forEach items="${iQnaAnsList }" var="iQnaAns">	
					<tr>
						<td colspan="6">
							<p class="pl-30 mb-0"><strong>${iQnaAns.itemQnaAnsContent }</strong></p>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<!-- 답변이 있다면 -->
			<tr>
				<td colspan="6">
					<textarea class="form-control" id="iQna_Ans" name="iQnaAnsContent" rows="3"></textarea>
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
			$("#iQnaAnsForm").submit();
		}
	</script>
	
	
</section> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
		console.log(header);
		console.log('실행됐냐?');
	});
</script>