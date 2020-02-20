<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>CC - ConnectCloset</title>
        <meta name="description" content="">
        <meta name="robots" content="noindex, follow" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/img/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/plugins.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/responsive.css">
		<script src="${pageContext.request.contextPath }/resources/js/vendor/jquery-1.12.0.min.js"></script>
    </head>
    <body class="wrapper">
        <!-- header start -->
        <header class="header-area transparent-bar sticky-bar header-padding header-hm6">
            <div class="container-fluid">
                <div class="header-wrap header-flex">
                    <div class="logo mt-45">
                        <a href="${pageContext.request.contextPath }/">
                            <img class="logo-normally-none" alt="" src="${pageContext.request.contextPath }/resources/img/logo/logo.png">
                            <img class="logo-sticky-none" alt="" src="${pageContext.request.contextPath }/resources/img/logo/logo-3.png">
                        </a>
                    </div>
                    <div class="main-menu">
                        <nav>
                            <ul>
                                <li><a href="${pageContext.request.contextPath }/">home</a>
                                </li>
                                
                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do">Product</a>
                                    <ul class="mega-menu mega-menu-2col">
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="${pageContext.request.contextPath }/shop/shopItemList.do"><b>BRAND</b></a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-003">GIVENCHY</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-004">CELINE</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-007">GUCCI</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-005">VALENTINO</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-001">LOW CLASSIC</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-006">BURBERRY</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-002">BALENCIAGA</a></li>
                                            </ul>
                                        </li>

                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="${pageContext.request.contextPath }/shop/shopItemList.do"><b>TYPE</b></a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/outerList.do">OUTERWEARS</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/topList.do">TOPS</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/bottomList.do">BOTTOMS</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/dressList.do">DRESSES</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/bagList.do">BAGS</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/shoesList.do">SHOES</a></li>
                                                <li><a href="${pageContext.request.contextPath }/shop/accList.do">ACCESSORIES</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li><a href="${pageContext.request.contextPath }/blog/blogList.do">Blog</a>
                                </li>
                                
                                <li><a href="${pageContext.request.contextPath }/etc/contact-us.do">Store</a>
                                </li>
                                
                                <li><a href="#">Pages </a>
                                    <ul class="submenu">
                                        <li><a href="${pageContext.request.contextPath }/shop/cart-page.do">cart page</a></li>
                                        <li><a href="${pageContext.request.contextPath }/shop/checkout.do">checkout</a></li>
                                        <li><a href="${pageContext.request.contextPath }/member/login-register.do">login / register</a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/enrollItem.do">enrollItem</a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/editItem.do">editItem</a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/itemList.do">itemList</a></li>
                                        <!-- 2020/02/09 추가 -->
                                        <li><a href="${pageContext.request.contextPath }/admin/adminPQnaList.do">adminPQnaList</a></li>
                                        <!-- 2020/02/09 추가 -->
                                        <li><a href="${pageContext.request.contextPath }/admin/deliveryList.do">deliveryList</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="header-right-wrap mt-55">
                    	<%-- <div class="header-search mr-20">
                    		<button class="sidebar-trigger-user" onclick="location.href='${pageContext.request.contextPath }/member/login-register.do'">
                    			<span class="ti-user"></span>
                    		</button>
                    	</div> --%>
                        <div class="header-search mr-20">
                            <button class="sidebar-trigger-search">
                                <span class="ti-search"></span>
                            </button>
                        </div>
                        <div class="bar-icon">
                            <button class="header-navbar-active">
                                <span class="ti-menu"></span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="mobile-menu-area">
                    <div class="mobile-menu">
                        <nav id="mobile-menu-active">
                            <ul class="menu-overflow">
                                <li><a href="index.html">HOME</a>
                                    <ul>
                                        <li><a href="index.html">home version 1</a></li>
                                        <li><a href="index-2.html">home version 2</a></li>
                                        <li><a href="index-3.html">home version 3</a></li>
                                        <li><a href="index-4.html">home version 4</a></li>
                                        <li><a href="index-5.html">home version 5</a></li>
                                        <li><a href="index-6.html">home version 6</a></li>
                                        <li><a href="index-7.html">home version 7</a></li>
                                        <li><a href="index-8.html">home version 8</a></li>
                                        <li><a href="index-9.html">home version 9</a></li>
                                        <li><a href="index-10.html">home version 10</a></li>
                                        <li><a href="index-11.html">home version 11</a></li>
                                    </ul>
                                </li>
                                <li><a href="por-grid-3-col.html">portfolio</a>
                                    <ul>
                                        <li><a href="#">Portfolio Layout</a>
                                            <ul>
                                                <li><a href="por-carousel.html">Portfolio slider</a></li>
                                                <li><a href="por-grid-1-col.html">Grid 1 column</a></li>
                                                <li><a href="por-grid-3-col.html">grid 3 column</a></li>
                                                <li><a href="por-grid-3-col-sidebar.html">grid 3 col sidebar</a></li>
                                                <li><a href="por-grid-3-col-pagination.html">grid 3 col pagination </a></li>
                                                <li><a href="por-grid-3-col-pagination-sidebar.html">grid 3 col pagination sidebar </a></li>
                                                <li><a href="por-grid-3-alternative.html">por grid 3 alternative</a></li>
                                                <li><a href="por-grid-3-alternative-masonry.html">grid 3 alternative masonry</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Portfolio Layout</a>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Portfolio Layout</a></li>
                                                <li><a href="por-grid-3-alternative-fw.html">grid 3 alternative full wide</a></li>
                                                <li><a href="por-grid-4-col-fullwide.html">grid 4 col fullwide</a></li>
                                                <li><a href="por-grid-mixed.html">Portfolio grid mixed</a></li>
                                                <li><a href="por-grid-mixed-fw.html">grid mixed fullwide</a></li>
                                                <li><a href="por-masonry-3-col.html">masonry 3 column</a></li>
                                                <li><a href="por-masonry-fw-bg.html">masonry fullwide</a></li>
                                                <li><a href="por-slider-fullwide.html"> slider fullwide</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Portfolio Details</a>
                                            <ul>
                                                <li><a href="single-portfolio-1.html">single portfolio 1</a></li>
                                                <li><a href="single-portfolio-2.html">single portfolio 2</a></li>
                                                <li><a href="single-portfolio-3.html">single portfolio 3</a></li>
                                                <li><a href="single-portfolio-4.html">single portfolio 4</a></li>
                                                <li><a href="single-portfolio-5.html">single portfolio 5</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop-grid-col4.html">Shop</a>
                                    <ul>
                                        <li><a href="#">Shop Layout</a>
                                            <ul>
                                                <li><a href="shop-carousel.html">shop carousel</a></li>
                                                <li><a href="shop-categories.html">shop categories</a></li>
                                                <li><a href="shop-filter-active.html">shop filter</a></li>
                                                <li><a href="shop-full-wide.html">shop full wide</a></li>
                                                <li><a href="shop-fullwide-sidebar.html">shop fullwide sidebar</a></li>
                                                <li><a href="shop-grid-col4.html">shop grid column 4</a></li>
                                                <li><a href="shop-grid-filter.html">shop grid filter</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Shop Layout</a>
                                            <ul>
                                                <li><a href="shop-grid-mixed.html">shop grid mixed</a></li>
                                                <li><a href="shop-grid-sidebar.html">shop grid sidebar</a></li>
                                                <li><a href="shop-list.html">shop list</a></li>
                                                <li><a href="shop-no-gutter.html">shop no gutter</a></li>
                                                <li><a href="shop-no-gutter-masonry.html">shop no gutter masonry</a></li>
                                                <li><a href="shop-no-gutters-fw.html">shop no gutters fullwide</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Shop Details</a>
                                            <ul>
                                                <li><a href="single-product.html">Standard style</a></li>
                                                <li><a href="single-product-2.html">Tab style</a></li>
                                                <li><a href="single-product-3.html">Tab style 2</a></li>
                                                <li><a href="single-product-4.html">Affiliate style</a></li>
                                                <li><a href="single-product-5.html">Slider style</a></li>
                                                <li><a href="single-product-6.html">Sticky style</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="por-grid-3-col.html">Blog</a>
                                    <ul>
                                        <li><a href="#">Blog Layout</a>
                                            <ul>
                                                <li><a href="blog-grid3-col.html">blog grid 3 column</a></li>
                                                <li><a href="blog-grid3-col-sidebar.html"> grid 3 col sidebar</a></li>
                                                <li><a href="blog-grid3-col-pagination.html"> grid 3 col pagination</a></li>
                                                <li><a href="blog-grid3-masonry.html">blog grid 3 masonry</a></li>
                                                <li><a href="blog-list-sidebar.html">blog list sidebar </a></li>
                                                <li><a href="blog-list-alternative.html">blog list alternative</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Blog Layout</a>
                                            <ul>
                                                <li><a href="blog-masonry-alternative.html">masonry alternative</a></li>
                                                <li><a href="blog-fw-sidebar.html"> fullwide sidebar</a></li>
                                                <li><a href="blog-fw-masonry-sidebar.html"> fullwide masonry sidebar</a></li>
                                                <li><a href="blog-classic-col1.html"> classic column 1</a></li>
                                                <li><a href="blog-classic-alternative.html"> classic alternative</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Blog Details</a>
                                            <ul>
                                                <li><a href="blog-details.html">blog details 1</a></li>
                                                <li><a href="blog-details-2.html">blog details 2</a></li>
                                                <li><a href="blog-details-3.html">blog details 3</a></li>
                                                <li><a href="blog-details-4.html">blog details 4</a></li>
                                                <li><a href="blog-details-5.html">blog details 5</a></li>
                                                <li><a href="blog-details-6.html">blog details 6</a></li>
                                                <li><a href="blog-details-7.html">blog details 7</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="por-grid-3-col.html">Shortcode</a>
                                    <ul>
                                        <li><a href="#">Shortcode column 1</a>
                                            <ul>
                                                <li><a href="shortcode-accordion.html">accordion</a></li>
                                                <li><a href="shortcode-alerts.html">alerts</a></li>
                                                <li><a href="shortcode-blockquote.html">blockquote</a></li>
                                                <li><a href="shortcode-brand-logo.html">brand logo</a></li>
                                                <li><a href="shortcode-button.html">button</a></li>
                                                <li><a href="shortcode-counter.html">counter</a></li>
                                                <li><a href="shortcode-dropcap.html">dropcap</a></li>
                                                <li><a href="shortcode-grid-system.html"> grid system</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Shortcode column 2</a>
                                            <ul>
                                                <li><a href="shortcode-faq.html">faq style</a></li>
                                                <li><a href="shortcode-social.html">social icon</a></li>
                                                <li><a href="shortcode-instagram.html">instagram</a></li>
                                                <li><a href="shortcode-list.html">list system</a></li>
                                                <li><a href="shortcode-pricing-table.html">pricing table</a></li>
                                                <li><a href="shortcode-progressbar.html">progressbar</a></li>
                                                <li><a href="shortcode-testimonial.html">testimonial</a></li>
                                                <li><a href="shortcode-tooltip-hightlight.html">tooltip & hightlight</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="index.html">Pages</a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath }/etc/about-us.do">about us</a></li>
                                        <li><a href="${pageContext.request.contextPath }/shop/cartselect.do">cart page</a></li>
                                        <li><a href="${pageContext.request.contextPath }/shop/checkout.do">checkout</a></li>
                                        <li><a href="${pageContext.request.contextPath }/etc/contact-us.do">contact us</a></li>
                                         <c:if test="${memberLoggedIn == null }">
                                        <%-- <li><a href="${pageContext.request.contextPath }/member/login-register.do">login / register</a></li> --%>
                                         </c:if>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        
         <!-- summary-info start -->
        <div class="summary-info sidebar-active">
            <div class="wrap-sidebar">
                <div class="sidebar-nav-icon">
                    <button class="op-sidebar-close"><span class="ti-close"></span></button>
                </div>
                <div class="summary-info-all">
                    <div class="summary-logo">
                        <a href="${pageContext.request.contextPath }">
                            <img src="${pageContext.request.contextPath }/resources/img/logo/logo-3.png" alt="">
                        </a>
                    </div>
                    <div class="summary-list-wrap">
                   
                  
                    	
                    
                        <div class="summary-list">
                            <ul>
                            <c:if test="${memberLoggedIn != null }">
                            	<li><i class="ti-location-pin"></i>${memberLoggedIn.memberName} ${nickname} 님 환영합니다</li>
                            
                            </c:if>
                                
                                 <c:if test="${memberLoggedIn == null }">
	                               <li><i class="ti-location-pin"></i>로그인 후 이용해주세요</li>
	                               <form action="${pageContext.request.contextPath }/member/login-register.do" method="GET">
	                                               
		                            <div class="submit-btn">
		                              <button class="btn-hover" type="submit">Log in / register</button>
		                            </div>
								</form>
                   				 </c:if>
                               
                            </ul>
                             <c:if test="${memberLoggedIn != null }">
						   <p>
	                        <form action="${pageContext.request.contextPath }/logout.do" method="GET">
	                                               
		                            <div class="submit-btn">
		                              <button class="btn-hover" type="submit">Logout</button>
		                            </div>
	                        </form>
                          </p>
                    </c:if>
                        </div>
                    </div>
                    <div class="sidebar-contact">
                        <h5>마이페이지</h5>
                       
                        <div class="sidebar-contact-list">
                            <ul>
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/member/memberUpdateForm.do">회원 정보 수정</a></li>

                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/shop/wishlist.do">위시리스트</a></li>
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/shop/cartList.do">장바구니</a></li>

                           
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/mypage/mypage-point.do?memberNo=${memberLoggedIn.memberNo}">포인트 확인</a></li>
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/mypage/mypage-review.do?memberNo=${memberLoggedIn.memberNo}&reviewWriter=${memberLoggedIn.memberEmail}">리뷰 확인</a></li>

                             <li><i class="ti-hand-point-right"></i><a href="">마이페이지3</a></li>
                             <li><i class="ti-hand-point-right"></i><a href="">마이페이지4</a></li>
                             <li><i class="ti-hand-point-right"></i><a href="">마이페이지5</a></li>
                            </ul>
                        </div>
                        
                    </div>
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
