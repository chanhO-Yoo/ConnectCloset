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
	String url = "itemList.do"; //간단한 상대주소로 접근
	
	String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	
	pageContext.setAttribute("pageBar", pageBar);
%>

<jsp:include page="/WEB-INF/views/common/header2.jsp"/>
<style>
/*글쓰기버튼*/
input#btn-add{float:right; margin: 0 0 15px;}
</style>
<script>
function fn_enrollItemForm(){
	location.href = "${pageContext.request.contextPath}/admin/enrollItem.do";
}
</script>

<section id="board-container" class="container pt-150">
	<p>총 ${totalContents }개의 상품이 있습니다.</p>
	<input type="button" value="상품추가" id="btn-add" class="btn btn-outline-success" onclick="fn_enrollItemForm();"/>
	<table id="tbl-board" class="table table-striped table-hover">
		<tr>
			<th>번호</th>
			<th>상품명</th>
			<th>상품가격</th>
			<th>상품정보</th>
			<!-- 첨부파일의 개수를 세어 하나 이상인 경우에만 file.png를 출력할 것 -->
			<th>브랜드명</th>
			<th>재고</th>
		</tr>
		<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.itemNo }</td>
			<td>
				<a href="${pageContext.request.contextPath }/board/boardViewCollection.do?boardNo=${board.boardNo}">
					${item.itemName }
				</a>
			</td>
			<td>${item.itemPrice }</td>
			<td>${item.itemInfo }</td>
			<%-- <td align="center">
				<c:choose>
					<c:when test="${board.attachCount > 0 }">
						<img src="${pageContext.request.contextPath }/resources/images/file.png" alt="파일이미지" width="16px" />
					</c:when>
					<c:otherwise>
						-
					</c:otherwise>
				</c:choose>
				
				<c:if test="${board.attachCount > 0 }">
						<img src="${pageContext.request.contextPath }/resources/images/file.png" alt="파일이미지" width="16px" />
				</c:if>
				<c:if test="${board.attachCount <= 0 }">
					-
				</c:if>
			</td> --%>
			<td>${item.brandNo }</td>
			<td>${item.itemStock }</td>
		</tr>
		</c:forEach>
		
	</table>
	
	<!-- pageBar 출력 부분 -->
	${pageBar }
	
</section> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>