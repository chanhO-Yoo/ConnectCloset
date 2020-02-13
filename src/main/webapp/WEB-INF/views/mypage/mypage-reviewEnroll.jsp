<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>





<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header2.jsp" />


        <div class="single-product-area pt-180 pb-180">
            <div class="container">
                <div class="row">
                
                 <div class="description-review-area pb-70">
            <div class="container">
                <div class="description-review-wrapper">
                  
                    
                       
                      
                        <div id="des-details3" class="tab-pane ">
                            <div class="row">
                              
                                <div class="col-lg-5">
                                    <div class="ratting-form-wrapper pl-50">
                                        <h3>Add a Review</h3>
                                        <div class="ratting-form">
                                            <form action="${pageContext.request.contextPath }/mypage/mypage-reviewEnrollEnd.do" method="post" enctype="multipart/form-data"">
                                                <div class="star-box">
                                                    <span>Your rating:</span>
                                                    <div class="ratting-star">
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="rating-form-style mb-10">
                                                            <input type="text"  name="reviewTitle"  >
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                     
                                                         <div class="rating-form-style mb-10">
                                                            <input  type="text" value="${selectOnditemReview.orderId}"  name="reviewWriter" >
                                                            <input  type="hiden" value="${selectOnditemReview.itemNo}"  name="reviewItemNo" >
                                                            <input  type="hiden" value="${selectOnditemReview.orderNo}"  name="orderNo">
                                                           
                                   
                                                            
                                                        </div>
                                                    </div>
                                                      <div class="input-group mb-3" style="padding:0px;">
												            <div class="input-group-prepend" style="padding:0px;">
															    <span class="input-group-text">첨부파일</span>
															  </div>
															  
															<div class="custom-file">
														    	<input type="file" class="custom-file-input" name="upFile" id="upFile" >
														    	<label class="custom-file-label" for="upFile">파일을 선택하세요</label>
															</div>
															<div>
								                        	<div class="img_wrap">
								                        		<img id="img" />
								                        	</div>
		                       								 </div>
														</div>
                                                    <div class="col-md-12">
                                                        <div class="rating-form-style form-submit">
                                                            <textarea name="reviewContent" placeholder="Message" ></textarea>
                                                            <input type="submit" value="Submit">
                                                        </div>
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
        </div>
                </div>
            </div>
        </div>
      
        

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script >
$(function(){
	//파일 선택,취소시에 파일명 노출하기
	$("[name=upFile]").on("change",function(){
		//파일 입력 취소
		if($(this).prop("files")[0] === undefined){
			$(this).next(".custom-file-label").html("파일을 선택하세요");
			return;
		}
		
		var fileName = $(this).prop('files')[0].name;
		/* var fileName = $(this).val();//크롬,firefox의 경우 실제 컴퓨터의 경로를 노출하지 않는다. */
		$(this).next(".custom-file-label").html(fileName);
		
		
	});
	
});

var sel_file;

$(document).ready(function(){
	$("#upFile").on("change",handleImgFileSelect);
});

function handleImgFileSelect(e){
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f){
		if(!f.type.match("image.*")){
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e){
			$("#img").attr("src",e.target.result);
		}
		reader.readAsDataURL(f);
	});
}

</script>
