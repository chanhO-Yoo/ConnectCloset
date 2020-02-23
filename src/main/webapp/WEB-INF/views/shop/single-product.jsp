<%@page import="java.net.URLDecoder"%>
<%@page import="com.connectcloset.cc.item.model.vo.ItemAndImageVO2"%>
<%@page import="com.connectcloset.cc.item.model.vo.Item"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	ItemAndImageVO2 item = (ItemAndImageVO2)request.getAttribute("item");
	
	Cookie[] ck =request.getCookies();
	String itemNoList = null;
	String newItemNoList = "";
	
	for(int i=0;i<ck.length;i++){
		//itemNoList가 있다면
		if(ck[i].getName().equals("itemNoList")){
			//itemNoList를 문자열로 저장
			itemNoList = URLDecoder.decode(ck[i].getValue(),"UTF-8");
			
			//itemNoArr에 배열로 저장
			String[] itemNoArr = itemNoList.split(",");
			int duplicate = 0;
			

			//itemNoArr이 5보다 작을 때 전부다 배열로 만들기
			if(itemNoArr.length <= 5){
				for(int j=0;j<itemNoArr.length;j++) {
					newItemNoList = newItemNoList+","+itemNoArr[j];
				}
			}
			//itemNoArr이 5보다 클 때 배열을 5개까지만 만들기
			else{
				for(int j=0;j<5;j++) {
					newItemNoList = newItemNoList+","+itemNoArr[j];
				}
			}
			
			//새로운 아이템리스트 배열
			String[] newItemNoArr = newItemNoList.substring(1).split(",");
			
			//새 아이템 리스트 배열에 중복이 있다면 1씩증가/ 없다면 0
			for(int j=0;j<newItemNoArr.length;j++){
				if(newItemNoArr[j].equals(Integer.toString(item.getItemNo()))){
					duplicate += 1;
				}
			}
			// 0이 아닐경우 중복이 있었다고 판단하여 새로 추가하지 않음
			if(duplicate != 0){
				itemNoList = newItemNoList.substring(1);
			}
			// 0인경우 중복이 없다고 판단하여 새로 추가하여 만듬
			else{
				itemNoList = Integer.toString(item.getItemNo())+","+newItemNoList.substring(1);
			}
			
			
			System.out.println("++++++쿠키있어요");
		}
	}
	
	
	if(itemNoList == null){
		itemNoList=Integer.toString(item.getItemNo());
	}
	System.out.println("*********itemNoList="+itemNoList);
	
	Cookie cookie = new Cookie("itemNoList",URLEncoder.encode((itemNoList),"utf-8"));
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
	

%>




<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<script>

$(function(){

//바로구입 누를때 넘기기기
$("#btn-goOrder").on('click', function(){
	let orderCount = document.querySelector("#orderItemCount").value;
	var orderSize = $("#SizeSelect:checked").val();
	var orderColor= $("#colorSelect:checked").val();

	console.log(orderColor);
		if(!confirm("현재 상품을 바로 구입 하시겠어요?")) return;
		
		/* $.ajax({
			url: "${pageContext.request.contextPath}/shop/checkout.do?itemNo=${item.itemNo}",
			type: "GET",
			data: {
			
				orderCount:orderCount
			},
			dataType: "json",
			success: data => {
				console.log(data);
				
				
				
			},
			error: (jqxhr, textStatus, errorThrown)=>{
				console.log(jqxhr, textStatus, errorThrown);
			} 
		}); */
	
		location.href ="${pageContext.request.contextPath}/shop/checkout.do?itemNo=${item.itemNo}&orderCount="+orderCount+"&orderSize="+orderSize+"&orderColor="+orderColor;
	}); 
	
function changeOrderNo(num){
	let stockStr = ${item.itemStock}; //상품 재고
	let inputOrderNo = document.querySelector("#orderItemCount");
	let oldNo = inputOrderNo.value;
	let newNo = (inputOrderNo.value*1)+num; //수량(정수형)
	
	if(newNo < 1) {
		newNo = 1;
		alert("수량은 반드시 1개 이상 선택되어야 합니다.");
	}
	if(newNo > stockStr) {
		newNo = stockStr;
		alert("수량은 상품재고보다 더 많이 선택될 수 없습니다.\n현재 상품의 수량은 ["+stockStr+"]입니다.");
	}
	
	
}
	
});
function goLogin(){
	if(!confirm("로그인이 필요한 서비스입니다.\n로그인 페이지로 이동하시겠습니까?")) return;
	location.href = "${pageContext.request.contextPath }/member/login-register.do"
}

</script>

        <div class="single-product-area pt-180 pb-180">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="product-details-img">
                        



                        <c:forEach var="image" items="${itemImage}" begin="0" end="0">
						
                         <img class="zoompro" src="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" data-zoom-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" alt="zoom"/>
                         
						</c:forEach>
                            
                            
                            <div id="gallery" class="mt-15 product-dec-slider dec-slider-overlay">
                             <c:forEach var="image" items="${itemImage}" begin="1" end="1">

                                <a class="active" data-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" data-zoom-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}">
                                    <img src="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" alt="">
                                </a>
						

						</c:forEach>
                                 <c:forEach var="image" items="${itemImage}" begin="2" end="2">

						
                                <a data-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" data-zoom-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}">
                                    <img src="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" alt="">
                                </a>
                                
						    
						
						</c:forEach>
						
						 <c:forEach var="image" items="${itemImage}" begin="0" end="0">

						
                                <a data-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" data-zoom-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}">
                                    <img src="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" alt="">
                                </a>
						    
						
						</c:forEach>
						
                        <c:forEach var="image" items="${itemImage}" begin="1" end="1">

						
                                <a data-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" data-zoom-image="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}">
                                    <img src="${pageContext.request.contextPath }/resources/upload/item/${image.itemImageReName}" alt="">
                                </a>
						    
						
						</c:forEach>
                              
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="product-details-content pl-30">
                        	<c:set var="brandNo" value="${item.brandNo}"/>
                        	<c:choose>
                        		<c:when test="${brandNo eq 'brand-001'}">
                        			<h5><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-001">LOW CLASSIC</a></h5>
                        		</c:when>
                        		<c:when test="${brandNo eq 'brand-002'}">
                        			<h5><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-002">BALENCIAGA</a></h5>
                        		</c:when>
                        		<c:when test="${brandNo eq 'brand-003'}">
                        			<h5><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-003">GIVENCHY</a></h5>
                        		</c:when>
                        		<c:when test="${brandNo eq 'brand-004'}">
                        			<h5><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-004">CELINE</a></h5>
                        		</c:when>
                        		<c:when test="${brandNo eq 'brand-005'}">
                        			<h5><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-005">VALENTINO</a></h5>
                        		</c:when>
                        		<c:when test="${brandNo eq 'brand-006'}">
                        			<h5><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-006">BURBERRY</a></h5>
                        		</c:when>
                        		<c:when test="${brandNo eq 'brand-007'}">
                        			<h5><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-007">GUCCI</a></h5>
                        		</c:when>
                        	</c:choose>
                        	
                            <h2>${item.itemName}</h2>
                            <div class="pro-details-rating-wrap">
                                <div class="pro-details-rating">
                                    <i class="ti-star theme-color"></i>
                                    <i class="ti-star theme-color"></i>
                                    <i class="ti-star theme-color"></i>
                                    <i class="ti-star theme-color"></i>
                                    <i class="ti-star gray-color"></i>
                                </div>
                                <span>(1 customer review)</span>
                            </div>
      
                            <h3><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.itemPrice}" />원</h3>
                            <p>${item.itemInfo}</p>
                            <div class="pro-details-size-color2 mt-30">
                                <div class="pro-details-color2-wrap">
                                    <span>Color</span>
                                    <div class="pro-details-color2-content">
                                        <ul>
                                        
										
										   
						 <c:forTokens items="${item.itemColors}" delims="," var="item">
										 
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
				
			
						<label class="btn ${item } " >
							<input type="radio" name="jb-radio" id="colorSelect" value="${item}" >
						</label>

					</div>
						 </c:forTokens>


                                        </ul>
                                    </div>
                                </div>
                                <div class="pro-details-size2">
                                    <span>Size</span>
                                    <div class="pro-details-size2-content">
                                        <ul>
                                        	
                                         <c:forTokens items="${item.itemSize}" delims="," var="item">
                                         <div class="form-group">
										  	<div class="btn-group btn-group-toggle" data-toggle="buttons">
										    		<label class="btn " >
														<input type="checkbox" name="jb-radio" id="SizeSelect" value="${item}" >${item}
													</label>
										    
										  	</div>
					
										</div>
										</c:forTokens>
                                     
                                      
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="pro-details-quality mt-50 mb-45">
                                <div class="cart-plus-minus">

                                <!--상품 수량  -->
                                    <input class="cart-plus-minus-box" type="text"  value="1" onclick="changeOrderNo(-1);" id="orderItemCount" name="orderItemCount">

                                </div>
                                <div class="pro-details-cart">
                                    <a class="default-btn btn-hover" href="${pageContext.request.contextPath}/shop/cartInsert.do?itemNo=${item.itemNo}">Add To Cart</a>
                                </div>
                                <div class="pro-details-wishlist">
                                	<button type="button" class=" btn-hover" id="btn-goOrder"><i class="ti-heart"></i></button>
                                    <a class=" btn-hover" href="${pageContext.request.contextPath}/shop/checkout.do?itemNo=${item.itemNo}&qtybutton?="><i class="ti-heart"></i></a>
                                </div>
                            </div>
                            <div class="pro-details-info-wrap">
                                <div class="pro-details-info-list">
                                    <ul>
                                        <li class="pro-details-info-title">SKU</li>
                                        <li>00010002</li>
                                    </ul>
                                </div>
                                <div class="pro-details-info-list">
                                    <ul>
                                        <li class="pro-details-info-title">Categories</li>
                                        <li><a href="#">Women,</a></li>
                                        <li><a href="#">Dress</a></li>
                                    </ul>
                                </div>
                                <div class="pro-details-info-list">
                                    <ul>
                                        <li class="pro-details-info-title">Tags</li>
                                        <li><a href="#">Clothing,</a></li>
                                        <li><a href="#">Summer</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="pro-details-social">
                                <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                    <li><a href="#"><i class="ti-pinterest"></i></a></li>
                                    <li><a href="#"><i class="ti-tumblr-alt"></i></a></li>
                                    <li><a href="#"><i class="ti-google"></i></a></li>
                                </ul>
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
                        <a data-toggle="tab" href="#des-details2">Additional information</a>
                        <a data-toggle="tab" href="#des-details3">Reviews</a>
                        <a data-toggle="tab" href="#des-details4">QnA</a>
                    </div>
                    <div class="tab-content description-review-bottom">
                        <div id="des-details1" class="tab-pane active">
                            <div class="product-description-wrapper">
                         <p>${item.itemDetailInfo} </p>
                            </div>
                        </div>
                        <div id="des-details2" class="tab-pane ">
                            <div class="product-anotherinfo-wrapper">
                                <ul>
                                    <li><span>Weight</span> 400 g</li>
                                    <li><span>Dimensions</span>10 x 10 x 15 cm </li>
                                    <li><span>Materials</span> 60% cotton, 40% polyester</li>
                                    <li><span>Other Info</span> American heirloom jean shorts pug seitan letterpress</li>
                                </ul>
                            </div>
                        </div>
                        <!--        리뷰 시작!      -->
                        <div id="des-details3" class="tab-pane">
                       
                            <div class="row">
                                <div class="col-lg-7">
                                            <c:if test="${reviewList != null }">
                        			<c:forEach items="${reviewList}" var="re">
                        		
                                    <div class="review-wrapper">
                                        <div class="single-review">
                                            <div class="review-img">
                                            <c:if test="${re.reviewImage !=null}">
                                                <img width="200px" height="200px" src="${pageContext.request.contextPath}/resources/upload/review/${re.reviewImage}">
                                            </c:if>
                                            
                                            </div>
                                            <div class="review-content">
                                                <div class="review-top-wrap">
                                                    <div class="review-left">
                                                        <div class="review-name">
                                                            <h4>${re.reviewTitle}</h4>
                                                        </div>
                                                       
                                                        <div class="review-rating">
                                                        	<c:forEach  begin="1" end="${re.reviewStar}">
                                                            <i class="ti-star theme-color"></i>
                                                           	</c:forEach>
                                                           	<c:forEach  begin="1" end="${5-re.reviewStar}">
                                                            <i class="ti-star theme-gray"></i>
                                                           	</c:forEach>
                                                        </div>
         
                                                    </div>
                                                   
                                                </div>
                                                <div class="review-bottom">
                                                    <p>${re.reviewContent}</p>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div> 
                                     </c:forEach>
                                     </c:if>
                                </div>
                             
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="related-product mb-75">
            <div class="container">
                <div class="related-product-title text-center mb-25">
                    <h4>Recommended videos</h4>
                </div>
                <div class="row" onload="showVideo()">
                <%
                	String src = "";
                	src = "https://www.youtube.com/embed/OUiDCI9Fr6Y";
                %>
                	<div class="col-lg-6">
 	 	              	<iframe width="560" height="315" src="${src }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 	 	            </div>
 	 	            <div class="col-lg-6">
 	 	              	<iframe width="560" height="315" src="https://www.youtube.com/embed/OUiDCI9Fr6Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 	 	            </div>
                </div>
            </div>
        </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
		console.log(header);
	});
	
	/* 윤지 시작 */
	//랜덤 동영상 추천
	var videoArray = new Array();
	videoArray[0] = "https://youtu.be/fj_C9T1ariU";
	videoArray[1] = "https://youtu.be/V5x2FYwlhRo";
	videoArray[2] = "https://youtu.be/9ac8j3MlV4g";
	
	function showVideo(){
		var videoNum = Math.round(Math.random()*2);
		var Video = document.getElementById("Video");
		objVideo.src = videoArray[videoNum];
	}
	
	/* 윤지 끝 */
</script>
