<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- breadcrumb area -->
        <div class="breadcrumb-area bg-img pt-230 pb-152 default-overlay-2" style="background-image: url(${pageContext.request.contextPath }/resources/img/banner/breadcrumb.jpg);">
            <div class="container">
                <div class="breadcrumb-content text-center">
                    <h2>About us</h2>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active">About us </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="about-area pt-120 pb-120">
            <div class="container">
                <div class="row d-flex align-items-center">
                    <div class="col-lg-6 col-md-12">
                        <div class="about-us-wrap mr-20">
                            <img src="${pageContext.request.contextPath }/resources/img/banner/banner-4.jpg" alt="">
                            <div class="works-video">
                                <a class="video-btn video-popup" href="https://www.youtube.com/watch?v=YY1ERM-NIBY">
                                    <i class="ti-control-play"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="tools-content ml-20">
                            <h2>Welcome To Donna </h2>
                            <p class="peragraph-blog">Fudink Shop is a premium HTML template designed and develoved from the ground up with the sole purpose of helping you create an astonishing, the beautiful and user friendly website that will boost .</p>
                            <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulp utate cursus a sit amet mauris accumsan velit.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="funfact-area pt-120 pb-90 gray-bg-4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-count text-center mb-30">
                            <div class="count-icon">
                                <span class="ti-cup"></span>
                            </div>
                            <div class="count-title">
                                <h2 class="count">555</h2>
                                <span>Completed Project</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-count text-center mb-30">
                            <div class="count-icon">
                                <span class="ti-comments"></span>
                            </div>
                            <div class="count-title">
                                <h2 class="count">329</h2>
                                <span>Positive Feedbacks</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-count text-center mb-30">
                            <div class="count-icon">
                                <span class="ti-settings"></span>
                            </div>
                            <div class="count-title">
                                <h2 class="count">2589</h2>
                                <span>Photo Capture</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-count text-center mb-30">
                            <div class="count-icon">
                                <span class="ti-thumb-up"></span>
                            </div>
                            <div class="count-title">
                                <h2 class="count">7452</h2>
                                <span>Happy Clients</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="shortcode-progress-bars-area pt-120 pb-120">
            <div class="container">
                <div class="section-title text-center mb-50">
                    <h2>Our Skill</h2>
                    <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris accumsan velit.</p>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="progress-content">
                            <h4>Want More?</h4>
                            <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequ atpsum, nec sagittis sem nibh id elit. Duis intoed odio sit amet nibh vulputate cursus a sit amet into mauris accumsan velit.</p>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="skill-bar">
                            <div class="skill-bar-item">
                                <span>Design</span>
                                <div class="progress">
                                    <div class="progress-bar wow fadeInLeft" data-progress="80%" data-wow-duration="1.5s" data-wow-delay="1.2s">
                                        <span class="text-top">66%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="skill-bar-item">
                                <span>Development</span>
                                <div class="progress">
                                    <div class="progress-bar wow fadeInLeft" data-progress="90%" data-wow-duration="1.5s" data-wow-delay="1.2s">
                                        <span class="text-top">91%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="skill-bar-item">
                                <span>Production</span>
                                <div class="progress">
                                    <div class="progress-bar wow fadeInLeft" data-progress="70%"  data-wow-duration="1.5s" data-wow-delay="1.2s">
                                        <span class="text-top">80%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="team-area pb-90">
            <div class="container">
                <div class="section-title text-center mb-50">
                    <h2>Team Members</h2>
                    <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris accumsan velit.</p>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="team-wrapper mb-30">
                            <div class="team-img">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/resources/img/team/team-1.jpg" alt="">
                                </a>
                                <div class="team-action">
                                    <a class="action-plus facebook" href="#">
                                        <i class="ti-facebook"></i>
                                    </a>
                                    <a class="action-heart twitter" title="Wishlist" href="#">
                                        <i class="ti-twitter-alt"></i>
                                    </a>
                                    <a class="action-cart instagram" href="#">
                                        <i class="ti-instagram"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="team-content text-center">
                                <h4>Mr.Mike Banding</h4>
                                <span>Manager </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="team-wrapper mb-30">
                            <div class="team-img">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/resources/img/team/team-3.jpg" alt="">
                                </a>
                                <div class="team-action">
                                    <a class="action-plus facebook" href="#">
                                        <i class="ti-facebook"></i>
                                    </a>
                                    <a class="action-heart twitter" title="Wishlist" href="#">
                                        <i class="ti-twitter-alt"></i>
                                    </a>
                                    <a class="action-cart instagram" href="#">
                                        <i class="ti-instagram"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="team-content text-center">
                                <h4>Mr.Peter Pan</h4>
                                <span>Developer </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="team-wrapper mb-30">
                            <div class="team-img">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/resources/img/team/team-2.jpg" alt="">
                                </a>
                                <div class="team-action">
                                    <a class="action-plus facebook" href="#">
                                        <i class="ti-facebook"></i>
                                    </a>
                                    <a class="action-heart twitter" title="Wishlist" href="#">
                                        <i class="ti-twitter-alt"></i>
                                    </a>
                                    <a class="action-cart instagram" href="#">
                                        <i class="ti-instagram"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="team-content text-center">
                                <h4>Ms.Sophia</h4>
                                <span>Designer </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="team-wrapper mb-30">
                            <div class="team-img">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/resources/img/team/team-4.jpg" alt="">
                                </a>
                                <div class="team-action">
                                    <a class="action-plus facebook" href="#">
                                        <i class="ti-facebook"></i>
                                    </a>
                                    <a class="action-heart twitter" title="Wishlist" href="#">
                                        <i class="ti-twitter-alt"></i>
                                    </a>
                                    <a class="action-cart instagram" href="#">
                                        <i class="ti-instagram"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="team-content text-center">
                                <h4>Mr.John Lee</h4>
                                <span>Chairmen </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="brand-logo-area pb-120">
            <div class="container">
                <div class="brand-logo-pattern" style="background-image: url(${pageContext.request.contextPath }/resources/img/pattern/pattern-4.png);">
                    <div class="brand-logo-active owl-carousel">
                        <div class="single-brand-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/brand-logo/1.png" alt="">
                        </div>
                        <div class="single-brand-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/brand-logo/2.png" alt="">
                        </div>
                        <div class="single-brand-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/brand-logo/3.png" alt="">
                        </div>
                        <div class="single-brand-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/brand-logo/4.png" alt="">
                        </div>
                        <div class="single-brand-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/brand-logo/5.png" alt="">
                        </div>
                        <div class="single-brand-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/brand-logo/6.png" alt="">
                        </div>
                        <div class="single-brand-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/brand-logo/3.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
