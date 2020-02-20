<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<footer class="footer-area pt-120 pb-90 footer-hm4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-widget mb-30">
                            <div class="footer-social2">
                                <ul>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-widget mb-30">
                            <div class="footer-title footer-title-black mb-20">
                                <h4>Useful Links</h4>
                            </div>
                            <div class="useful-links">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath }/etc/about-us.do"><i class="fa fa-angle-right"></i> About</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-widget mb-30">
                            <div class="footer-title footer-title-black mb-20">
                                <h4>Contact</h4>
                            </div>
                            <div class="footer-contact2">
                                <p>745 7th Ave, New York, USA</p>
                                <p>212-764-4697</p>
                                <p><a href="#">hello@pace.com</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-widget mb-30">
                            <div class="copyright copyright-hm4">
                                <p>
                                    Copyright ©
                                    <a href="#">Donna</a>
                                    . All Right Reserved.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        
        
        
		
		<!-- all js here -->
		<%-- <script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.js"></script> --%>
		<script src="${pageContext.request.contextPath }/resources/js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/popper.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath }/resources/js/ajax-mail.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

    </body>
</html>