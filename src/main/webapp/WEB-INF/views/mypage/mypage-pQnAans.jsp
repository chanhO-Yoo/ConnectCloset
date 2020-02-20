<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header2.jsp"/>

<section id="board-container" class="container pt-150">
	
		<input type="hidden" name="pQnaNo" value="${pQna.pQnaNo }"/>
		<table id="tbl-board" class="table">
			<tr>
				<td>문의번호</td>
				<td>${pQna.pQnaNo }</td>
				<td>문의유형</td>
				<td>${pQna.pQnaTypeNo }</td>
				<td>문의제목</td>
				<td>${pQna.pQnaTitle }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td colspan="2">${pQna.memberNo }</td>
				<td>작성일</td>
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