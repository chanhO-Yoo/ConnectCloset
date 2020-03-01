<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Donna - Creative Bootstrap4 Template</title>
        <meta name="description" content="">
        <meta name="robots" content="noindex, follow" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icons.css">
        <link rel="stylesheet" href="assets/css/plugins.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

        <style>
            input {
                background-color: #ffffff !important;
            }
        </style>
    </head>
    <body class="wrapper">
        <!-- header start -->
        <!-- breadcrumb area -->
        <div class="breadcrumb-area bg-img pt-230 pb-152" style="background-image: url(assets/img/banner/breadcrumb-3.jpg);">
            <div class="container">
                <div class="breadcrumb-content breadcrumb-black2 text-center">
                    <h2>Mypage</h2>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="shop-grid-col4.html">Shop</a>
                        </li>
                        <li class="active">Checkout</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="checkout-area pt-95 pb-100" style="background-color: #f6f6f6;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="billing-info-wrap">
                            <div class="col-lg-8 offset-lg-1"><h3>Member Info</h3></div>
                                <div class="row" style="justify-content: center">
                                    <form action="${pageContext.request.contextPath }/member/enrollMember.do" method="post" class="col-lg-8">
                                        <div class="form-group row">
                                            <label for="memberId" class="col-sm-2 col-form-label">아이디</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control-plaintext" id="memberId" name="memberId" placeholder="6자 이상 영문,숫자의 조합">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="memberPassword" class="col-sm-2 col-form-label">비밀번호</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="memberPassword" name="memberPassword">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="memberPasswordCheck" class="col-sm-2 col-form-label">비밀번호확인</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="memberPasswordCheck" name="memberPasswordCheck">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="memberName" class="col-sm-2 col-form-label">이름</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control-plaintext" id="memberName" name="memberName" placeholder="이름">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label for="memberEmail" class="col-sm-2 col-form-label">이메일</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control-plaintext" id="memberEmail" name="memberEmail" placeholder="email@example.com">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label for="memberPhone" class="col-sm-2 col-form-label">연락처</label>
                                            <div class="col-sm-10">
                                                <input type="tel" class="form-control-plaintext" id="memberPhone" name="memberPhone" placeholder="숫자만 입력해주세요" maxlength="11">
                                            </div>
                                        </div>
                                        <div class="form-group row" style="margin-bottom: 10px;">
                                            <label for="memberPostCode" class="col-sm-2 col-form-label">주소</label>
                                            <div class="col-sm-7">
                                                <input type="text" class="form-control-plaintext" id="memberPostCode" name="memberPostCode" placeholder="우편번호">
                                            </div>
                                            <div class="col-sm-3">
                                                <button type="button" class="btn btn-info btn-lg" style="height:45px;" onclick="findAddress()">주소검색</button>
                                            </div>
                                        </div>
                                        <div class="form-group row" style="margin-bottom: 10px;">
                                            <div class="offset-sm-2 col-sm-10">
                                                <input type="text" class="form-control-plaintext" id="memberAddress" name="memberAddress" placeholder="주소">
                                            </div>
                                           </div>
                                        <div class="form-group row" style="margin-bottom: 10px;">
                                            <div class="offset-sm-2 col-sm-10">
                                                <input type="text" class="form-control-plaintext" id="memberDetailAddress" name="memberDetailAddress" placeholder="상세주소">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="memberBirthday" class="col-sm-2 col-form-label">생년월일</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" id="memberBirthday" name="memberBirthday" value="2011-08-19">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="memberGender" class="col-sm-2 col-form-label">성별</label>
                                            <div class="col-sm-10">
                                                <label class="custom-control custom-radio">
                                                    <input id="male" name="memberGender" type="radio" class="custom-control-input" value="M">
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">남</span>
                                                </label>
                                                <label class="custom-control custom-radio">
                                                    <input id="female" name="memberGender" type="radio" class="custom-control-input" value="F">
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">여</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group row col-lg-6">
                                                <label for="memberPhone" class="col-sm-3 col-form-label">키(cm)</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control-plaintext" id="memberPhone" name="memberPhone" placeholder="숫자만 입력해주세요" maxlength="11">
                                                </div>
                                            </div>
                                            <div class="form-group row col-lg-6">
                                                <label for="memberPhone" class="col-sm-3 col-form-label">체중(kg)</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control-plaintext" id="memberPhone" name="memberPhone" placeholder="숫자만 입력해주세요" maxlength="11">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="submit-btn">
                                            <button class="btn-hover" type="submit">Register</button>
                                        </div>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer-area theme-bg pt-70 pb-50 clear-fix">
            <div class="container">
                <div class="footer-top border-bottom-1">
                    <div class="row">
                        <div class="col-12">
                            <div class="support-text text-center">
                                <h2>Always Ready to Help You 24/7</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-middle pt-65">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-5">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>contact Us</h4>
                                </div>
                                <div class="footer-cont-info">
                                    <div class="single-footer-cont-info">
                                        <div class="cont-info-icon">
                                            <i class="ti-mobile"></i>
                                        </div>
                                        <div class="cont-info-content">
                                            <p>+1 35 776 859</p>
                                        </div>
                                    </div>
                                    <div class="single-footer-cont-info">
                                        <div class="cont-info-icon">
                                            <i class="ti-location-pin"></i>
                                        </div>
                                        <div class="cont-info-content">
                                            <p>115 5th Ave, New York</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer-social">
                                    <ul>
                                        <li><a href="#"> <i class="ti-facebook"></i></a></li>
                                        <li><a href="#"> <i class="ti-instagram"></i></a></li>
                                        <li><a href="#"> <i class="ti-twitter-alt"></i></a></li>
                                        <li><a href="#"> <i class="ti-skype"></i></a></li>
                                        <li><a href="#"> <i class="ti-wordpress"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-7">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>Information</h4>
                                </div>
                                <div class="faq-accordion element-mrg">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel footer-accordion">
                                            <div class="panel-heading" id="headingOne">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#checkoutMethod">
                                                        Aditional Pages
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="checkoutMethod" class="panel-collapse collapse show">
                                                <div class="panel-body">
                                                    <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor nisi elit. </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel footer-accordion">
                                            <div class="panel-heading" id="headingTwo">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#billingInformation">
                                                        Shortcodes Integration
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="billingInformation" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor nisi elit. </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel footer-accordion">
                                            <div class="panel-heading" id="headingThree">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#shippingMethod">
                                                        Alternative Demos
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="shippingMethod" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor nisi elit.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>Latest Twets</h4>
                                </div>
                                <div class="twitter-info">
                                    <div class="single-twitter-info">
                                        <div class="twitter-icon">
                                            <i class="ti-twitter-alt"></i>
                                        </div>
                                        <div class="twitter-content">
                                            <p>Props to YouTube star @CaseyNeistat for turning an abandoned mall into a #WinterWonderland for dozens of kiddos. <br>
                                            <a href="#">http://bit.ly/2AUNTLV </a></p>
                                        </div>
                                    </div>
                                    <div class="single-twitter-info">
                                        <div class="twitter-icon">
                                            <i class="ti-twitter-alt"></i>
                                        </div>
                                        <div class="twitter-content">
                                            <p>Props to YouTube star @CaseyNeistat for turning an abandoned mall into a #WinterWonderland for dozens of kiddos. <br>
                                            <a href="#">http://bit.ly/2AUNTLV </a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>Instagram</h4>
                                </div>
                                <div class="instagram-img">
                                    <ul>
                                        <li><a href="#"><img src="assets/img/instragram/1.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/2.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/3.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/4.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/5.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/6.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom pt-25">
                    <div class="row">
                        <div class="col-12">
                            <div class="copyright text-center">
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
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
