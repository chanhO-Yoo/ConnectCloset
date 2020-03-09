<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<section id="board-container" class="container pt-150">
	
		<input type="hidden" name="pQnaNo" value="${pQna.pQnaNo }"/>
		<table id="tbl-board" class="table">
			<tr>
				<td><strong>문의번호</strong></td>
				<td colspan="3">${pQna.pQnaNo }</td>
				<td><strong>문의유형</strong></td>
				<td>${pQna.pQnaTypeNo }</td>
				
			</tr>
			<tr>
				<td><strong>문의제목</strong></td>
				<td colspan="5">${pQna.pQnaTitle }</td>
			</tr>
			<tr>
				<td><strong>작성자</strong></td>
				<td colspan="3">${memberLoggedIn.memberEmail}</td>
				<td><strong>작성일</strong></td>
				<td colspan="2">${pQna.pQnaDate }</td>
			</tr>
			<tr>
				<td colspan="6">
					<strong>문의내용</strong>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<p>${pQna.pQnaContent }</p>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<strong>답변</strong>
				</td>
			</tr>
			<!-- 답변이 있다면 -->
			
			   <c:choose>
			<c:when test="${pQnaAnsList != null }">
				<c:forEach items="${pQnaAnsList }" var="pQnaAns">	
					<tr>
						<td colspan="6">
							<p class="pl-30 mb-0"><strong>${pQnaAns.pQnaAnsContent }</strong></p>
						</td>
					</tr>
				</c:forEach>
			</c:when>
			
			<c:otherwise> 
			<tr>
				<td>답변이 없습니다</td>
			</tr>
			</c:otherwise>
			  </c:choose>
			  <tr>
				<td colspan="5"></td>
				<td>
				<a href="${pageContext.request.contextPath }/mypage/mypage-pQnA.do?memberNo=${memberLoggedIn.memberNo}">
					<button type="button" class="btn btn-success" >확인</button>
				</a>
				</td>
			</tr>
		</table>
	
	
	
	
	
	
</section> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
$(document).ready(function(){
    var header=$("header").attr('class','theme-bg');
    console.log(header);
});
</script>