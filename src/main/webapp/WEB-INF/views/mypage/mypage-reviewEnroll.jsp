<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!--하은 리뷰페이지 수정 시작  -->
<style>
.star-box {
	margin: 10px 10px 10px 0px;
	display: block;
	wdith: 300px;
}
/*별점 라벨 */
.star-box label{
/* display: flex; */
    -ms-flex-align: center;
    align-items: center;
    padding: .375rem .75rem;
    margin-bottom: 0;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    text-align: center;
    white-space: nowrap;
    background-color: #e9ecef;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}
#reviewStar {
	width: 100px;
}
#reviewStar {
	position: relative;
	width: 102px;
	height: 37px;
	line-height: 2s0px;
	border: 1px solid #a1a5aa;
	border-radius: 4px;
	text-transform: uppercase;
	background: #fff;
}
#reviewStar select {
	width: 100%;
	height: 40px;
	opacity: 0;
	filter: alpha(opacity = 0);
	-ms-filter: alpha(opacity = 0) /* IE 8 */;
}
#msgCss{
	border-radius: 4px;
	height: 300px;
}
​
#subCss{
 position: absolute; 
  left: 50%; 
  transform: translateX(-50%);
  top:100%; 
}
#titleCss{
 font-size: 1.6rem;
/*  border-top-width:1px; 
 border-top-style:solid; 
 border-top-color:red; */
 border-bottom-width:1px; 
 border-bottom-style:solid; 
 border-bottom-color:#4b8bf6 ;
 display:block;
 text-align:center;
 margin:0 auto; width:30%; line-height:60px; 
 margin-bottom: 30px;
}
</style>
<!--하은 : 필요없는 div와 코드 순서를 정리해서 이전과 다릅니다. 리뷰 등록 테스트해봤을때 문제없었습니다.  -->
<div class="single-product-area pt-120 pb-80">
	<div class="container">
		<div class="description-review-area pb-1000">
			<div class="description-review-wrapper">
				<div id="des-details3" class="tab-pane ">
					<div class="ratting-form-wrapper pl-50">
					<!-- 	<span id="titleCss">Add a Review</span> -->
						<div class="ratting-form">
							<form
								action="${pageContext.request.contextPath }/mypage/mypage-reviewEnrollEnd.do?memberNo=${memberLoggedIn.memberNo}&reviewWriter=${memberLoggedIn.memberEmail}"
								method="post" enctype="multipart/form-data"">
​
								<div class="star-box">
								<span id="titleCss">Add a Review</span>
									<label for="review-star">&nbsp별  점&nbsp</label> <select
										name="reviewStar" id="reviewStar">
										<option value="1">★</option>
										<option value="2">★★</option>
										<option value="3">★★★</option>
										<option value="4">★★★★</option>
										<option value="5" selected>★★★★★</option>
									</select>
								</div>
​
								<div class="rating-form-style mb-10">
									<div class="input-group mb-3" style="padding: 0px;">
										<div class="input-group-prepend" style="padding: 0px;">
											<span class="input-group-text">작성자</span>
										</div>
										<div class="custom-file">
											<input type="text" style="height: 38px;"
												value="${selectOnditemReview.orderId}" name="reviewWriter">
											<input type="hidden" value="${selectOnditemReview.itemNo}"
												name="reviewItemNo"> <input type="hidden"
												value="${selectOnditemReview.orderNo}" name="orderNo">
										</div>
									</div>
								</div>
​
								<div class="rating-form-style mb-10">
									<div class="input-group mb-3" style="padding: 0px;">
										<div class="input-group-prepend" style="padding: 0px;">
											<span class="input-group-text">리뷰제목</span>
										</div>
										<div class="custom-file">
											<input type="text" name="reviewTitle" style="height: 38px;">
										</div>
									</div>
								</div>
​
​
								<div class="input-group mb-3" style="padding: 0px;">
									<div class="input-group-prepend" style="padding: 0px;">
										<span class="input-group-text">첨부파일</span>
									</div>
									<div class="custom-file">
										<input type="file" class="custom-file-input" name="upFile"
											id="upFile"> <label class="custom-file-label"
											for="upFile">파일을 선택하세요</label>
									</div>
									<div>
										<div class="img_wrap">
											<img id="img" />
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="rating-form-style form-submit">
										<textarea name="reviewContent" placeholder="Message" id="msgCss"></textarea>
										<input type="submit" value="Submit" id="subCss">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
​
​
​
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
​
​
<script>
	$(document).ready(function() {
		var header = $("header").attr('class', 'theme-bg');
		console.log(header);
	});
	$(function() {
		//파일 선택,취소시에 파일명 노출하기
		$("[name=upFile]").on("change", function() {
			//파일 입력 취소
			if ($(this).prop("files")[0] === undefined) {
				$(this).next(".custom-file-label").html("파일을 선택하세요");
				return;
			}
​
			var fileName = $(this).prop('files')[0].name;
			/* var fileName = $(this).val();//크롬,firefox의 경우 실제 컴퓨터의 경로를 노출하지 않는다. */
			$(this).next(".custom-file-label").html(fileName);
​
		});
​
	});
​
	var sel_file;
​
	$(document).ready(function() {
		$("#upFile").on("change", handleImgFileSelect);
	});
​
	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
​
		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file = f;
​
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>
