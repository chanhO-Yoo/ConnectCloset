<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!-- breadcrumb area -->
        <div class="breadcrumb-area bg-img pt-230 pb-152" style="background-image: url(${pageContext.request.contextPath }/resources/img/banner/breadcrumb-3.jpg);">
            <div class="container">
                <div class="breadcrumb-content breadcrumb-black2 text-center">
                    <h2>Shop</h2>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active">Shop Grid with Sidebar </li>
                    </ul>
                </div>
            </div>
        </div>
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
        <div class="shop-area pt-80 pb-80 pro-col-40 section-padding-1">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-10 col-lg-8">
                        <div class="shop-area-wrapper">
                            <div class="row grid" data-show="9" data-load="3">
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar1.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$329</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar2.jpg" alt="">
                                            </a>
                                            <span class="sale">Sale</span>
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$100</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar3.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span class="old">$329</span>
                                                <span class="new">$150</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar4.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$200</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar5.jpg" alt="">
                                            </a>
                                            <span class="sale">Sale</span>
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span class="old">$500</span>
                                                <span class="new">$422</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar6.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$175</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar7.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$135</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar8.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$166</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar9.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span class="old">$230</span>
                                                <span class="new">$120</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar1.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$250</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar2.jpg" alt="">
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$329</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img">
                                            <a href="single-product.html">
                                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-fw-sidebar3.jpg" alt="">
                                            </a>
                                            <span class="sale">Sale</span>
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
                                                <h4><a href="single-product.html">Product Name</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>$100</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pro-load-more text-center mt-25">
                                <a class="load-more-toggle default-btn btn-hover" href="#">Load More Products</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-4">
                        <div class="shop-sidebar-style pl-10 port-mrg-res sidebar-mrg">
                            <div class="pro-sidebar-search mb-55">
                                <form class="pro-sidebar-search-form" action="#">
                                    <input type="text" placeholder="Search here...">
                                    <button>
                                        <i class="ti-search"></i>
                                    </button>
                                </form>
                            </div>
                            <div class="sidebar-widget mb-55">
                                <h4 class="pro-sidebar-title">Shop Filter </h4>
                                <div class="price_filter mt-25">
                                    <div id="slider-range"></div>
                                    <div class="price_slider_amount">
                                        <div class="label-input">
                                            <input type="text" id="amount" name="price"  placeholder="Add Your Price" />
                                        </div>
                                        <button type="button">Filter</button> 
                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-widget">
                                <h4 class="pro-sidebar-title">Product Categories </h4>
                                <div class="sidebar-categori mt-25">
                                    <ul>
                                        <li><a href="#">Artwork  <span>(9)</span></a></li>
                                        <li><a href="#">Branding  <span>(12)</span></a></li>
                                        <li><a href="#">Graphics  <span>(5)</span></a></li>
                                        <li><a href="#">Photography  <span>(16)</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="sidebar-widget mt-55">
                                <div class="facebook-banner-wrap default-overlay-2">
                                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/banner/banner-18.jpg" alt=""></a>
                                    <div class="shop-offer">
                                        <h4>80</h4>
                                        <div class="offer-percent-wrap">
                                            <span class="offer-percent">%</span>
                                            <span class="offer-off">OFF</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-widget mt-55">
                                <h4 class="pro-sidebar-title">Tranding </h4>
                                <div class="sidebar-project-wrap mt-30">
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/img/product/shop-small1.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <h4><a href="#">Product Name 1</a></h4>
                                            <span>$159</span>
                                        </div>
                                    </div>
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/img/product/shop-small2.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <h4><a href="#">Product Name 2</a></h4>
                                            <span>$357</span>
                                        </div>
                                    </div>
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/img/product/shop-small3.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <h4><a href="#">Product Name 3</a></h4>
                                            <span>$259</span>
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
