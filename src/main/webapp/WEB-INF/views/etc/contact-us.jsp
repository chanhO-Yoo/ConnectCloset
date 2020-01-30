<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<style>
.main-menu ul li a {
	color: #15273E !important;
}
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44742f99c1b6e1903583f076c4caeaf8"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
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
        <div class="contact-area pt-115 pb-85">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="contact-info-area pr-10">
                            <h2>Contact</h2>
                            <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elituis. </p>
                            <div class="contact-from pt-40">
                                <form id="contact-form" action="${pageContext.request.contextPath }/resources/mail.php" method="post">
                                    <input name="name" type="text" placeholder="Name">
                                    <input name="email" type="text" placeholder="Email">
                                    <textarea name="message" placeholder="Your message"></textarea>
                                    <input class="submit" type="submit" value="Send Message">
                                </form>
                                <p class="form-messege"></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="contact-map pl-10 map-mrg">
                            <div id="map2"></div>
                        </div>
                    </div>
                </div>
                <div class="office-info-area pt-100">
                    <div class="office-info-title mb-65">
                        <h3>Our Offices</h3>
                    </div>
                    <div class="contact-info-wrap2">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="office-branch mb-30">
                                    <h4>New York</h4>
                                    <div class="single-contact-info2">
                                        <ul>
                                            <li><span><i class="ti-location-pin"></i></span> 158 W 27th St, New York, 10001</li>
                                            <li><span><i class="ti-email"></i></span> <a href="#">vitalinfo@gmail.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="office-branch contact-info-minus mb-30">
                                    <h4>London</h4>
                                    <div class="single-contact-info2">
                                        <ul>
                                            <li><span><i class="ti-location-pin"></i></span> 158 W 27th St, New York, 10001</li>
                                            <li><span><i class="ti-email"></i></span> <a href="#">vitalinfo@gmail.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="office-branch contact-info-minus mb-30">
                                    <h4>Tokyo</h4>
                                    <div class="single-contact-info2">
                                        <ul>
                                            <li><span><i class="ti-location-pin"></i></span> 158 W 27th St, New York, 10001</li>
                                            <li><span><i class="ti-email"></i></span> <a href="#">vitalinfo@gmail.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="office-branch contact-info-minus mb-30">
                                    <h4>Paris</h4>
                                    <div class="single-contact-info2">
                                        <ul>
                                            <li><span><i class="ti-location-pin"></i></span> 158 W 27th St, New York, 10001</li>
                                            <li><span><i class="ti-email"></i></span> <a href="#">vitalinfo@gmail.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
			var container = document.getElementById('map2');// 지도를 표시할 div 
			var options = {
				center: new kakao.maps.LatLng(37.498500, 127.032596),// 지도의 중심좌표
				level: 3// 지도의 확대 레벨
			};
	
			var map = new kakao.maps.Map(container, options); // 지도를 생성합니다
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(37.498500, 127.032596); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
		</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
