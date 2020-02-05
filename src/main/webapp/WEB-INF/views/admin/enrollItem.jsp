<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header2.jsp" />
<style>
div#board-container label.custom-file-label{text-align:left;}
</style>
<!-- main-search start -->
        <div class="main-search-active">
            <div class="sidebar-search-icon">
                <button class="search-close"><span class="ti-close"></span></button>
            </div>
            <div class="sidebar-search-input">
                <form>
                    <div class="form-search">
                        <input id="search" class="input-text" value="" placeholder="Search Entire Store" type="search">
                        <button>
                            <i class="ti-search"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- summary-info start -->
        <div class="summary-info sidebar-active">
            <div class="wrap-sidebar">
                <div class="sidebar-nav-icon">
                    <button class="op-sidebar-close"><span class="ti-close"></span></button>
                </div>
                <div class="summary-info-all">
                    <div class="summary-logo">
                        <a href="index.html">
                            <img src="${pageContext.request.contextPath }/resources/img/logo/logo-3.png" alt="">
                        </a>
                    </div>
                    <div class="summary-list-wrap">
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididu ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                        <div class="summary-list">
                            <ul>
                                <li><i class="ti-hand-point-right"></i>Project Management</li>
                                <li><i class="ti-hand-point-right"></i>Portfolio Showcasing</li>
                                <li><i class="ti-hand-point-right"></i>Blogs & Content Sharing</li>
                                <li><i class="ti-hand-point-right"></i>Social Work Management</li>
                                <li><i class="ti-hand-point-right"></i>eCommerce Shop Management</li>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar-contact">
                        <h5>Fell Free To contact Us</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididu.</p>
                        <div class="sidebar-contact-list">
                            <ul>
                                <li><i class="ti-location-pin"></i>123 - 45678910</li>
                                <li><i class="ti-email"></i><a href="#">info@example.com</a></li>
                                <li><i class="ti-location-pin"></i>115 5th Ave, New York</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <form action="${pageContext.request.contextPath }/admin/enrollItemEnd.do" method="post" enctype="multipart/form-data">
	        <div class="single-product-area pt-80 pb-80">
	            <div class="container">
	                <div class="row">
	                    <div class="col-lg-6">
	                        <div class="product-details-img">
	                        
						        <div class="input-group mb-3" style="padding:0px;">
						            <div class="input-group-prepend" style="padding:0px;">
									    <span class="input-group-text">첨부파일1</span>
									  </div>
									<div class="custom-file">
								    	<input type="file" class="custom-file-input" name="upFile" id="upFile1" >
								    	<label class="custom-file-label" for="upFile1">파일을 선택하세요</label>
									</div>
								</div>
								<div>
		                        	<div class="img_wrap">
		                        		<img id="img" />
		                        	</div>
		                        </div>
								
						        <div class="input-group mb-3" style="padding:0px;">
						            <div class="input-group-prepend" style="padding:0px;">
						                <span class="input-group-text">첨부파일2</span>
						            </div>
						            <div class="custom-file">
						                <input type="file" class="custom-file-input" name="upFile" id="upFile2">
						                <label class="custom-file-label" for="upFile2">파일을 선택하세요</label>
						            </div>
						        </div>
						        
								<div>
		                        	<div class="img_wrap">
		                        		<img id="img2" />
		                        	</div>
		                        </div>
	
						        <div class="input-group mb-3" style="padding:0px;">
						            <div class="input-group-prepend" style="padding:0px;">
						                <span class="input-group-text">첨부파일3</span>
						            </div>
						            <div class="custom-file">
						                <input type="file" class="custom-file-input" name="upFile" id="upFile3">
						                <label class="custom-file-label" for="upFile2">파일을 선택하세요</label>
						            </div>
						        </div>
		                        
								<div>
		                        	<div class="img_wrap">
		                        		<img id="img3" />
		                        	</div>
		                        </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-6">
	                        <div class="product-details-content pl-30">
	                            <input type="text" class="form-control form-control-lg" name="itemName" placeholder="상품명을 입력하세요">
	                            <br />
	                            <input type="text" class="form-control" name="itemPrice" placeholder="금액을 입력하세요">
	                            <br />
	                            <div class="form-group">
	    							<label for="exampleFormControlTextarea1">상품설명</label>
								    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="itemInfo"></textarea>
								</div>
	                            <div class="pro-details-size-color2 mt-30">
	                                <div class="pro-details-color2-wrap" style="width:175px">
	                                    <span>Color</span>
	                                    <div class="form-group">
										    <select multiple class="form-control" id="colorSelect" name="itemColors" style="width:170px">
										    	<option>blue</option>
										    	<option>maroon</option>
										    	<option>gray</option>
										    	<option>green</option>
										    	<option>yellow</option>
										    	<option>white</option>
											</select>
										</div>
	                                </div>
	                                
	                                <div class="pro-details-size2">
	                                    <span>Size</span>
	                                     <div class="form-group">
										    <select multiple class="form-control" id="sizeSelect" name="itemSize" style="width:170px">
										    	<option>s</option>
										    	<option>m</option>
										    	<option>l</option>
										    	<option>xl</option>
										    	<option>xxl</option>
											</select>
										</div>
	                                </div>
	                            </div>
	                            <div class="pro-details-info-wrap">
		                            <div class="pro-details-info-list">
		                            	<ul>
		                            		<li class="pro-details-info-title">stock</li>
				                        	<li>
				                                <input type="text" class="form-control" name="itemStock" id="itemStock" value="0" style="background-color: #fff;"/>
				                        	</li>
		                            	</ul>
		                            </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">brandName</li>
	                                        <li>
		                                    	<div class="form-group">
												    <select class="form-control" id="brandNo" name="brandNo">
													    <option value="brand-001">로우클래식</option>
													    <option value="brand-002">발렌시아가</option>
													    <option value="brand-003">지방시</option>
													    <option value="brand-004">셀린느</option>
													    <option value="brand-005">발렌티노</option>
													    <option value="brand-006">버버리</option>
													    <option value="brand-007">구찌</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Categories</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemTypeNo" name="itemTypeNo">
													    <option value="itype-001">아우터</option>
													    <option value="itype-002">셔츠</option>
													    <option value="itype-003">맨투맨/후드</option>
													    <option value="itype-004">팬츠</option>
													    <option value="itype-005">진</option>
													    <option value="itype-006">드레스/스커트</option>
													    <option value="itype-007">니트</option>
													    <option value="itype-008">티셔츠</option>
													    <option value="itype-009">신발</option>
													    <option value="itype-010">코트</option>
													    <option value="itype-011">조끼</option>
													    <option value="itype-012">자켓</option>
													    <option value="itype-013">가디건</option>
													    <option value="itype-014">핸드백</option>
													    <option value="itype-015">지갑</option>
													    <option value="itype-016">악세사리</option>
													    <option value="itype-017">모자</option>
													    <option value="itype-018">선글라스</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Gender</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemGenderNo" name="itemGenderNo">
													    <option value="igender-001">남성</option>
													    <option value="igender-002">여성</option>
													    <option value="igender-003">공용</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Sale</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemSaleType" name="itemSaleType">
													    <option value="Y">할인</option>
													    <option value="N">기본</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Limited Edition</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemLimitedType" name="itemLimitedType">
													    <option value="Y">한정판</option>
													    <option value="N">기본</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="description-review-area pb-70">
	            <div class="container">
	                <div class="description-review-wrapper">
	                    <div class="description-review-topbar nav">
	                        <a class="active" data-toggle="tab" href="#des-details1">Description</a>
	                    </div>
	                    <div class="tab-content description-review-bottom">
	                        <div id="des-details1" class="tab-pane active">
	                            <div class="product-description-wrapper">
	 								<div class="form-group">
									    <textarea class="form-control" id="exampleFormControlTextarea1" rows="6" name="itemDetailInfo"></textarea>
									</div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="submit-btn col-lg-4 offset-lg-4">
                <button class="btn-hover" type="submit">Enroll</button>
            </div>
        </form>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script>
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
		$("#upFile1").on("change",handleImgFileSelect);
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
	
	var sel_file2;
	
	$(document).ready(function(){
		$("#upFile2").on("change",handleImgFileSelect2);
	});
	
	function handleImgFileSelect2(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file2 = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img2").attr("src",e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	var sel_file3;
	
	$(document).ready(function(){
		$("#upFile3").on("change",handleImgFileSelect3);
	});
	
	function handleImgFileSelect3(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file3 = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img3").attr("src",e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>