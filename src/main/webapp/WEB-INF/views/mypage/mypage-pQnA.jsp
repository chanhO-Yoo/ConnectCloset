<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="com.connectcloset.cc.common.util.Utils"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div class="checkout-area pt-95 pb-100" style="height: 750px;">
<%
	//페이비자 작업
	int totalContents = (int)request.getAttribute("totalContents");
	int cPage = (int)request.getAttribute("cPage");
	int numPerPage = (int)request.getAttribute("numPerPage");
	String url = "adminPQna.do"; //간단한 상대주소로 접근
	
	String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	
	pageContext.setAttribute("pageBar", pageBar);
%>

<style>
/*글쓰기버튼*/
input#btn-add{float:right; margin: 0 0 15px;}
</style>

  


<section id="board-container" class="container pt-150">
 <div class="col-md-10 content-wrapper">
            <h2 class="sr-only">1:1문의내역</h2>
            <!-- 문의글 등록하기 -->
            <section class="my-header">
                <h3 class="sr-only">문의글 등록하기</h3>
                <div class="text-center">
                 <div class="submit-btn">
                    <a href="<%=request.getContextPath()%>/mypage/mypage-pQnAForm.do" >
                 <button type="button" class="btn btn-success btn-hover" >1:1문의 등록하기</button>
                    </a>
		          </div>
                </div>
            </section>
        </div>
	<p>총 ${totalContents }개의 1:1문의가 있습니다.</p>
	<table id="tbl-board" class="table table-striped table-hover">
		<tr>
			<th>문의번호</th>
			<th>작성자</th>
			<th>문의유형</th>
			<th>문의제목</th>
			<th>문의날짜</th>
			<th>답변여부</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${list }" var="pQna">
				<tr onclick="location.href='${pageContext.request.contextPath }/mypage/mypage-pQnAans.do?pQnaNo=${pQna.pQnaNo }'">
					<td>${pQna.pQnaNo }</td>
					<td>${pQna.memberNo }</td>
					             <c:choose>

								<c:when test="${pQna.pQnaTypeNo  eq 'ptype-001'}"> 
								<td>상품문의</td>
								</c:when>
								
								<c:when test="${pQna.pQnaTypeNo  eq 'ptype-002'}"> 
								<td>상품문의</td>
								</c:when>
								
								<c:otherwise> 
								<td>기타문의</td>
								</c:otherwise>

                            </c:choose>
					
					<td>${pQna.pQnaTitle }</td>
					<td>${pQna.pQnaDate }</td>
					<td>${pQna.pAnsYn }</td>
					<td><a href="${pageContext.request.contextPath }/mypage/mypage-pQnAEnroll.do?pQnaNo=${pQna.pQnaNo}"><button class="btn btn-success">수정하기</button>  </a></td>
					<td> <form action="${pageContext.request.contextPath}/mypage/mypage-pQnADelete.do?pQnaNo=${pQna.pQnaNo}&memberNo=${memberLoggedIn.memberNo}" method="post">
                                     	    <input type="submit" class="btn btn-success" value="삭제">
                                     
                                     </form></td>
					
					<td></td>
				</tr>
		</c:forEach>
		
	</table>
	
	<!-- pageBar 출력 부분 -->
	${pageBar }
	
</section> 

   </div>
	
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
$(document).ready(function(){
    var header=$("header").attr('class','theme-bg');
    console.log(header);
});
</script>
