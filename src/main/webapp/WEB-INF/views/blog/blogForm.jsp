<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시글 작성" name="pageTitle"/>
</jsp:include>



<style>
div#blog-container{width:400px; margin:0 auto; text-align:center; margin-top:50px;}
div#blog-container input{margin-bottom:15px;}
/* 부트스트랩 : 파일라벨명 정렬*/
div#blog-container label.custom-file-label{text-align:left;}
#box{border: 1px solid #ced4da; margin-bottom:10px; border-radius: 5px;}
#writer{float:left; }
form{
margin-top: -200px;
margin-left: -150px;
}
</style>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!-- 	==================== 하라 시작 ========================= -->

<div id="blog-container">
	<form name="blogFrm" action="${pageContext.request.contextPath}/blog/blogFormEnd.do" method="post" enctype="multipart/form-data" onsubmit="return validate();">
		<input type="text" class="form-control" style="width: 700px;" placeholder="제목" name="blogTitle" id="blogTitle" required>
		<input type="hidden" class="form-control" style="width: 700px;" name="memberNo" value="${memberLoggedIn.memberNo}" readonly required>
		<!-- input:file소스 : https://getbootstrap.com/docs/4.1/components/input-group/#custom-file-input -->
		<div class="input-group mb-3" style="padding:0px;">
		  <div class="input-group-prepend" style="padding:0px;">
		    <span class="input-group-text">첨부파일</span>
		  </div>
		  <div class="custom-file" >
		    <input type="file" class="custom-file-input"  name="upFile" id="upFile1" >
		    <label class="custom-file-label" for="upFile1" style="width: 610px;">파일을 선택하세요</label>
		  </div>
		</div>
		
<!-- 		<div class="input-group mb-3" style="padding:0px;">
          <div class="input-group-prepend" style="padding:0px;">
             <span class="input-group-text">첨부파일2</span>
        </div>
            <div class="custom-file">
                <input type="file" class="custom-file-input" name="upFile" id="upFile2">
                <label class="custom-file-label" for="upFile2">파일을 선택하세요</label>
            </div>
        </div> -->
		
	    <textarea class="form-control" name="blogContent" style="width: 700px;" placeholder="내용" required></textarea>
		<br />
		<input type="submit" class="btn btn-outline-success" style="width: 700px;" value="저장" >
	</form>
</div>

<!-- 	==================== 하라 끝 ========================= -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script>
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
<script>
$(document).ready(function(){
    var header=$("header").attr('class','theme-bg');
    console.log(header);
});
</script>