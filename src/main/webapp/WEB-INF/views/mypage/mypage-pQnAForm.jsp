<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
#pQnAForm{
margin-left: 250px;
}
</style>

<div class="mypage-pQnAForm-area pt-180 pb-180">
	<div class="row">
	
	    <div class="col-md-10 content-wrapper">
	        <h2 class="sr-only">1:1문의등록</h2>
	        <!-- 문의등록 폼 -->
	        <section>
	            <form action="<%=request.getContextPath() %>/mypage/mypage-pQnAFormEnd.do" id="pQnAForm" method="post" enctype="multipart/form-data">
	                <div class="qSort-wrapper">
	                    <label for="q-sort">문의유형</label>
	                    <select name="pQnaTypeNo" id="pQnaTypeNo">
	                        <option value="ptype-001" selected>상품문의</option>
	                        <option value="ptype-002">배송문의</option>
	                        <option value="ptype-003">기타문의</option>
	                    </select>
	                </div>
	                <div class="qTitle-wrapper">
	                    <label for="q-title">문의제목</label>
	                    <input type="text" name="pQnaTitle" id="pQnaTitle" required>
	                </div>
	                <div class="qContent-wrapper">
	                    <label for="q-content">문의내용</label>
	                    <textarea name="pQnaContent" id="pQnaContent" cols="50" rows="10" required></textarea>
	                </div>
	            
	                <div class="memberId-wrapper">
	                    <input type="hidden" name="memberNo" id="memberNo" value="${memberLoggedIn.memberNo}" readonly>
	                </div>
	                <div class="btnForm-wrapper text-center">
	                    <button type="button" class="btn-radius" onclick="exit();">취소</button>
	                    <button type="submit" class="btn-radius" onclick="return boardValidate();">등록</button>
	                </div>
	            </form>
	        </section>
	    </div>
	    <script type="text/javascript">
 	    function exit(){
	    	location.href="<%=request.getContextPath()%>/mypage/mypage-pQnA.do?memberNo=${memberLoggedIn.memberNo} ";	
	    }
		function boardValidate(){
			//제목검사
			var $title = $("[name=pQnaTitle]");
			if($title.val().tirm().length == 0){
				alert("제목을 입력하세요.");
				return;
			}
			//내용검사
			var $content = $("[name=pQnaContent]");
			if($content.val().tirm().length == 0){
				alert("내용을 입력하세요.");
				return;
			}
			$("/mypage/mypage-pQnAFormEnd.do").submit();
		}
		</script>
	   
	</div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
$(document).ready(function(){
    var header=$("header").attr('class','theme-bg');
    console.log(header);
});
</script>