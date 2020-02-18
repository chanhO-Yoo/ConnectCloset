<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시글 작성" name="pageTitle"/>
</jsp:include>
	<!-- ==================== 하라 시작 ========================= -->


<style>
div#blog-container{width:400px; margin:0 auto; text-align:center; margin-top:50px;}
div#blog-container input{margin-bottom:15px;}
/* 부트스트랩 : 파일라벨명 정렬*/
div#blog-container label.custom-file-label{text-align:left;}
#box{border: 1px solid #ced4da; margin-bottom:10px; border-radius: 5px;}
#writer{float:left; }
</style>


 <div id="blog-container" class="pt-150">
<div>
	 <form name="blogFrm" action="${pageContext.request.contextPath}/blog/blogFormEnd.do" method="post"  enctype="multipart/form-data">
		<input type="text" class="form-control" placeholder="제목" name="blogTitle" id="blogTitle" required>
		<%-- <input type="text" class="form-control" id="blogWriter" value="${memberLoggedIn.memberEmail}"  required> --%>
		<div id="box"><p id="writer">작성자</p>${memberLoggedIn.memberEmail}</div>
		<input type="hidden" class="form-control" name="memberNo" value="${memberLoggedIn.memberNo}"  required>
		<!-- input:file소스 : https://getbootstrap.com/docs/4.1/components/input-group/#custom-file-input -->

		
	    <textarea class="form-control" name="blogContent" placeholder="내용" required></textarea>
		<br />
 		<input type="submit" class="btn btn-outline-success" value="저장" >
	</form>
</div>
<%-- 	
	<form action="${pageContext.request.contextPath}/blog/blogFormEnd.do">
	<input type="text" class="form-control" placeholder="제목" name="blogTitle" id="blogTitle" required>
		<input type="text" class="form-control" name="blogWriter" value="${memberLoggedIn.memberId}" readonly required>
		<input type="hidden" class="form-control" name="memberNo" value="${memberLoggedIn.memberNo}" readonly required>
		<textarea class="form-control" name="blogContent" placeholder="내용" required/>
		<br />
		<input type="submit" value="저장" /> 
	</form>
--%>
</div>

<!-- 	==================== 하라 끝 ========================= -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
$(document).ready(function(){
	var header=$("header").attr('class','theme-bg');
	console.log(header);
	console.log('실행됬냐?');
});
/* textarea에도 required속성을 적용가능하지만, 공백이 입력된 경우 대비 유효성검사를 실시함. */
function validate(){
	var content = $("[name=blogContent]").val();
	if(content.trim().length==0){
		alert("내용을 입력하세요");
		return false;
	}
	return true;
}

$(function(){
	//파일선택/취소시에 파일명 노출하기
	$("[name=upFile]").on("change",function(){
		//파일입력 취소
		if($(this).prop("files")[0] === undefined){
			$(this).next(".custom-file-label")
				   .html("파일을 선택하세요.");
			return;
		}
		
		//var fileName = $(this).val();//크롬//Firefox 실제 컴퓨터의 경로를 노출하지 않는다.
		var fileName = $(this).prop('files')[0].name;
		
			$(this).next(".custom-file-label")
				   .html(fileName);
			
	});
});
</script>