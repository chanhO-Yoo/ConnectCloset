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
	String url = "adminPQna.do"; //간단한 상대주소로 접근
	
	String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	
	pageContext.setAttribute("pageBar", pageBar);
%>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
/*글쓰기버튼*/
input#btn-add{float:right; margin: 0 0 15px;}
</style>

<section id="board-container" class="container pt-150">
	<p>총 ${totalContents }개의 QnA가 있습니다.</p>
	<table id="tbl-board" class="table table-striped table-hover">
		<tr>
			<th>문의번호</th>
			<th>작성자</th>
			<th>문의유형</th>
			<th>문의제목</th>
			<th>문의날짜</th>
			<th>답변여부</th>
		</tr>
		<c:forEach items="${list }" var="iQna">
				<tr onclick="location.href='${pageContext.request.contextPath }/admin/adminIQna.do?itemQnaNo=${iQna.itemQnaNo }'">
					<td>${iQna.itemQnaNo }</td>
					<td>${iQna.memberNo }</td>
					<td>${iQna.itemQnaType }</td>
					<td>${iQna.itemQnaTitle }</td>
					<td>${iQna.itemQnaDate }</td>
					<td>${iQna.itemQnaAnsYn }</td>
				</tr>
		</c:forEach>
		
	</table>
	
	<!-- pageBar 출력 부분 -->
	${pageBar }
	
</section> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
		console.log(header);
		console.log('실행됐냐?');
	});
</script>