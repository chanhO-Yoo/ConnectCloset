<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

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
        <div class="single-product-area pt-80 pb-80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="product-details-img">
                            <img class="zoompro" src="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-l2.jpg" data-zoom-image="${pageContext.request.contextPath }/resources/img/product-details/single-product-bl2.jpg" alt="zoom"/>
                            <div id="gallery" class="mt-15 product-dec-slider dec-slider-overlay">
                                <a class="active" data-image="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-l2.jpg" data-zoom-image="${pageContext.request.contextPath }/resources/img/product-details/single-product-bl2.jpg">
                                    <img src="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-s1.jpg" alt="">
                                </a>
                                <a data-image="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-l3.jpg" data-zoom-image="${pageContext.request.contextPath }/resources/img/product-details/single-product-bl3.jpg">
                                    <img src="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-s2.jpg" alt="">
                                </a>
                                <a data-image="${pageContext.request.contextPath }/resources/img/product-details/single-product-l4.jpg" data-zoom-image="${pageContext.request.contextPath }/resources/img/product-details/single-product-bl1.jpg">
                                    <img src="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-s3.jpg" alt="">
                                </a>
                                <a data-image="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-l2.jpg" data-zoom-image="${pageContext.request.contextPath }/resources/img/product-details/single-product-bl2.jpg">
                                    <img src="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-s1.jpg" alt="">
                                </a>
                                <a data-image="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-l3.jpg" data-zoom-image="${pageContext.request.contextPath }/resources/img/product-details/single-product-bl3.jpg">
                                    <img src="${pageContext.request.contextPath }/resources/img/product-details/product-detalis-s2.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="product-details-content pl-30">
                            <h2>Product Name</h2>
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
                            <h3>$329</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunca augue quis neque ultr ices placerat sit amet quis mauris. Integer urna libero, aliquet id neque posu ullamcorp er fringilla dolor. Maecenas id mattis magna. Nam a dui rhoncus mi sollicitudin pretium.  </p>
                            <div class="pro-details-size-color2 mt-30">
                                <div class="pro-details-color2-wrap">
                                    <span>Color</span>
                                    <div class="pro-details-color2-content">
                                        <ul>
                                            <li class="blue"></li>
                                            <li class="maroon active"></li>
                                            <li class="gray"></li>
                                            <li class="green"></li>
                                            <li class="yellow"></li>
                                            <li class="white"></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="pro-details-size2">
                                    <span>Size</span>
                                    <div class="pro-details-size2-content">
                                        <ul>
                                            <li><a href="#">s</a></li>
                                            <li><a href="#">m</a></li>
                                            <li><a href="#">l</a></li>
                                            <li><a href="#">xl</a></li>
                                            <li><a href="#">xxl</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="pro-details-quality mt-50 mb-45">
                                <div class="cart-plus-minus">
                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">
                                </div>
                                <div class="pro-details-cart">
                                    <a class="default-btn btn-hover" href="#">Add To Cart</a>
                                </div>
                                <div class="pro-details-wishlist">
                                    <a class=" btn-hover" href="#"><i class="ti-heart"></i></a>
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
