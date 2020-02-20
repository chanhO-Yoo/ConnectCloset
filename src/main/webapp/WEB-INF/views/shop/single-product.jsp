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
	String itemName = null;
	
	for(int i=0;i<ck.length;i++){
		if(ck[i].getName().equals("sname")){
			itemName = URLDecoder.decode(ck[i].getValue(),"UTF-8");
			itemName = item.getItemName()+","+itemName;
			System.out.println("++++++쿠키있어요");
		}
	}
	if(itemName == null){
		itemName=item.getItemName();
	}
	System.out.println("*********itemName="+itemName);
	Cookie cookie = new Cookie("sname",URLEncoder.encode((itemName),"utf-8"));
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
	

%>



<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

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
										   <li class="${item}"></li>
										</c:forTokens>



                                        </ul>
                                    </div>
                                </div>
                                <div class="pro-details-size2">
                                    <span>Size</span>
                                    <div class="pro-details-size2-content">
                                        <ul>
                                        	
                                         <c:forTokens items="${item.itemSize}" delims="," var="item">
                                            <li><a href="#">${item}</a></li>
										</c:forTokens>
                                     
                                      
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="pro-details-quality mt-50 mb-45">
                                <div class="cart-plus-minus">
                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">
                                </div>
                                <div class="pro-details-cart">
                                    <a class="default-btn btn-hover" href="${pageContext.request.contextPath}/shop/cartInsert.do?itemNo=${item.itemNo}">Add To Cart</a>
                                </div>
                                <div class="pro-details-wishlist">
                                    <a class=" btn-hover" href="${pageContext.request.contextPath}/shop/checkout.do?itemNo=${item.itemNo}"><i class="ti-heart"></i></a>
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
                    <h4>Related products</h4>
                </div>
                <div class="related-product-active owl-carousel">
                    <div class="shop-wrap">
                        <div class="shop-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-9.jpg" alt="">
                            </a>
                            <div class="shop-hover">
                                <div class="shop-card">
                                    <a href="#" title="Add To Cart">Add To Cart <i class="ti-shopping-cart"></i></a>
                                </div>
                                <div class="shop-wishlist">
                                    <a title="Wishlist" href="#"><i class="ti-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="shop-content">
                            <div class="shop-name">
                                <h4><a href="#">Product Name</a></h4>
                            </div>
                            <div class="shop-price">
                                <span class="old">$329</span>
                                <span class="new">$150</span>
                            </div>
                        </div>
                    </div>
                    <div class="shop-wrap">
                        <div class="shop-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-10.jpg" alt="">
                            </a>
                            <span class="new">New</span>
                            <div class="shop-hover">
                                <div class="shop-card">
                                    <a href="#" title="Add To Cart">Add To Cart <i class="ti-shopping-cart"></i></a>
                                </div>
                                <div class="shop-wishlist">
                                    <a title="Wishlist" href="#"><i class="ti-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="shop-content">
                            <div class="shop-name">
                                <h4><a href="#">Product Name</a></h4>
                            </div>
                            <div class="shop-price">
                                <span class="old">$329</span>
                                <span class="new">$150</span>
                            </div>
                        </div>
                    </div>
                    <div class="shop-wrap">
                        <div class="shop-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-1.jpg" alt="">
                            </a>
                            <div class="shop-hover">
                                <div class="shop-card">
                                    <a href="#" title="Add To Cart">Add To Cart <i class="ti-shopping-cart"></i></a>
                                </div>
                                <div class="shop-wishlist">
                                    <a title="Wishlist" href="#"><i class="ti-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="shop-content">
                            <div class="shop-name">
                                <h4><a href="#">Product Name</a></h4>
                            </div>
                            <div class="shop-price">
                                <span class="old">$329</span>
                                <span class="new">$150</span>
                            </div>
                        </div>
                    </div>
                    <div class="shop-wrap">
                        <div class="shop-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-2.jpg" alt="">
                            </a>
                            <div class="shop-hover">
                                <div class="shop-card">
                                    <a href="#" title="Add To Cart">Add To Cart <i class="ti-shopping-cart"></i></a>
                                </div>
                                <div class="shop-wishlist">
                                    <a title="Wishlist" href="#"><i class="ti-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="shop-content">
                            <div class="shop-name">
                                <h4><a href="#">Product Name</a></h4>
                            </div>
                            <div class="shop-price">
                                <span class="old">$329</span>
                                <span class="new">$150</span>
                            </div>
                        </div>
                    </div>
                    <div class="shop-wrap">
                        <div class="shop-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-3.jpg" alt="">
                            </a>
                            <div class="shop-hover">
                                <div class="shop-card">
                                    <a href="#" title="Add To Cart">Add To Cart <i class="ti-shopping-cart"></i></a>
                                </div>
                                <div class="shop-wishlist">
                                    <a title="Wishlist" href="#"><i class="ti-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="shop-content">
                            <div class="shop-name">
                                <h4><a href="#">Product Name</a></h4>
                            </div>
                            <div class="shop-price">
                                <span class="old">$329</span>
                                <span class="new">$150</span>
                            </div>
                        </div>
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
</script>
