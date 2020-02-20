<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>





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
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar massa metus, vitae pharetra lacus sodales sit amet. Morbi accumsan suscipit lacus, sit amet egestas magna elemen tum nec. Mauris urna enim, rutrum in iaculis nec, vehicula ut libero. Etiam sit amet ex orci. Duis eget consectetur libero, eget interdum metus. Aliquam rhoncus porttitor felis, a tincidunt ex scel erisque et. Morbi faucibus venenatis dignissim. Nullam ut facilisis mauris. In hac habitasse platea dictumst. </p>
                                <p>Pellentesque luctus augue ipsum, ut tincidunt odio tempus at. Nullam ac quam venenatis, bibendum eros at, placerat risus. Maecenas cursus elit non nisl finibus congue. Donec posuere fringilla ante eu vehicula. Fusce sed erat quis nisi gravida vehicula id vitae dolor. In at libero pretium, maximus lorem vitae, pharetra turpis feugiat facilisis ullamcorper.  </p>
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
                        <div id="des-details3" class="tab-pane">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="review-wrapper">
                                        <div class="single-review">
                                            <div class="review-img">
                                                <img alt="" src="${pageContext.request.contextPath }/resources/img/testimonial/client-7.png">
                                            </div>
                                            <div class="review-content">
                                                <div class="review-top-wrap">
                                                    <div class="review-left">
                                                        <div class="review-name">
                                                            <h4>White Lewis</h4>
                                                        </div>
                                                        <div class="review-rating">
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star gray-color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="review-left">
                                                        <a href="#">Reply</a>
                                                    </div>
                                                </div>
                                                <div class="review-bottom">
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla nec, convallis conval lis leo. Maecenas bibendum bibendum larius.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-review child-review">
                                            <div class="review-img">
                                                <img alt="" src="${pageContext.request.contextPath }/resources/img/testimonial/client-7.png">
                                            </div>
                                            <div class="review-content">
                                                <div class="review-top-wrap">
                                                    <div class="review-left">
                                                        <div class="review-name">
                                                            <h4>White Lewis</h4>
                                                        </div>
                                                        <div class="review-rating">
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star gray-color"></i>
                                                        </div>
                                                    </div>
                                                    <div class="review-left">
                                                        <a href="#">Reply</a>
                                                    </div>
                                                </div>
                                                <div class="review-bottom">
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Sus pen disse viverra ed viverra. Mauris ullarper euismod vehicula. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="ratting-form-wrapper pl-50">
                                        <h3>Add a Review</h3>
                                        <div class="ratting-form">
                                            <form action="#">
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
                                                            <input placeholder="Name" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="rating-form-style mb-10">
                                                            <input placeholder="Email" type="email">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="rating-form-style form-submit">
                                                            <textarea name="Your Review" placeholder="Message"></textarea>
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

                        <div id="des-details4" class="tab-pane">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="review-wrapper">
                                             <c:forEach items="${itemQnaList}" var="itemQna" varStatus="vs">
                                        <div class="single-review">
                                            <%-- <div class="review-img">
                                                <img alt="" src="${pageContext.request.contextPath }/resources/img/testimonial/client-7.png">
                                            </div> --%>
                                            <div class="review-content">
                                                        <div class="review-name">
                                                            <h4>${itemQna.itemQnaTitle}</h4>
                                                        </div>
                                                <div class="review-top-wrap">
                                                    <div class="review-left">
<!--                                                         <div class="review-rating">
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star gray-color"></i>
                                                        </div> -->
                                                    </div>
                                                    <!-- <div class="review-left">
                                                        <a href="#">Reply</a>
                                                    </div> -->

                                                <div class="review-bottom">
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla nec, convallis conval lis leo. Maecenas bibendum bibendum larius.</p>
                                                </div>
                                            </div>
                                            
<!--                                                     <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
													  Link with href
													</a> -->
													<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample${itemQna.itemQnaNo}" aria-expanded="false" aria-controls="collapseExample">
													  답변 버튼
													</button>
													<div class="collapse" id="collapseExample${itemQna.itemQnaNo}">
													  <div class="well">
													    답변 테스트 중이긴 한데 길게 쓰면 어케 되징? 
													  </div>
													</div>
                                                </div>
                                            
                                        </div>
                                            </c:forEach>
                                            
                   <%--                      <div class="single-review child-review">
                                            <div class="review-img">
                                                <img alt="" src="${pageContext.request.contextPath }/resources/img/testimonial/client-7.png">
                                            </div>
                                            <div class="review-content">
                                                <div class="review-top-wrap">
                                                    <div class="review-left">
                                                        <div class="review-name">
                                                            <h4>White Lewis</h4>
                                                        </div>
<!--                                                         <div class="review-rating">
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star theme-color"></i>
                                                            <i class="ti-star gray-color"></i>
                                                        </div> -->
                                                    </div>
                                                    <div class="review-left">
                                                        <a href="#">Reply</a>
                                                    </div>
                                                </div>
                                                <div class="review-bottom">
                                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Sus pen disse viverra ed viverra. Mauris ullarper euismod vehicula. </p>
                                                </div>
                                            </div>
                                        </div> --%>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="ratting-form-wrapper pl-50">
                                        <h3>Add a QnA</h3>
                                        <div class="ratting-form">
                                            <!-- <form action="#"> -->
                                            <form name="QnaFrm" action="${pageContext.request.contextPath}/qna/qnaFormEnd.do" method="post" enctype="multipart/form-data" onsubmit="return validate();">
                                            <br />
<!--                                                 <div class="star-box">
                                                    <span>Your rating:</span>
                                                    <div class="ratting-star">
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                        <i class="ti-star"></i>
                                                    </div>
                                                </div> -->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="rating-form-style mb-10">
                                                            <input placeholder="Name" type="text" value="${memberLoggedIn.memberName}">
                                                            <input type="hidden" name="memberNo" value="${memberLoggedIn.memberNo }" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="rating-form-style mb-10">
                                                            <input placeholder="Email" type="email" value="${memberLoggedIn.memberEmail}">
                                                            <input type="hidden" name="itemNo" value="${item.itemNo }" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                    	<input placeholder="Title" type="title" name="itemQnaTitle" > 
                                                    </div> 
                                                    <div class="col-md-12">
                                                        <div class="rating-form-style form-submit">
                                                            <textarea name="itemQnaContent" placeholder="Content"></textarea>
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
