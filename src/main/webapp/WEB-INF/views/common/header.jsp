<%@page import="java.util.Random"%>
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
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
 
		<!-- 실시간검색어 css 추가 -->
		<style>
.ui-autocomplete { 
    overflow-y: scroll; 
    overflow-x: hidden;
    background-color: #fff}
		
				        	#rank-content {
							    margin-top: 20px;
							    margin-bottom: 20px;
							    margin-left: 20px;
							    margin-right: 20px;
							    padding: 10px;
							    background: #000;
							}
							
							#rank-list a {
							    color: #FFF;
							    text-decoration: none;
							}
							
							#rank-list a:hover {
							    text-decoration: underline;
							}
							
							#rank-list {
							    overflow: hidden;
							    width: 600px;
							    height: 20px;
							    margin: 0;
							}
							
							#rank-list dt {
							    display: none;
							}
							
							#rank-list dd {
							    position: relative;
							    margin: 0;
							}
							
							#rank-list ol {
							    position: absolute;
							    top: 0;
							    left: 0;
							    margin: 0;
							    padding: 0;
							    list-style-type: none;
							}
							
							#rank-list li {
							    height: 20px;
							    line-height: 20px;
							}
				        </style>
				        <script>
				        $(function() {
				            var count = $('#rank-list li').length;
				            var height = $('#rank-list li').height();

				            function step(index) {
				                $('#rank-list ol').delay(2000).animate({
				                    top: -height * index,
				                }, 500, function() {
				                    step((index + 1) % count);
				                });
				            }

				            step(1);
				        });
				        </script>
				        <!-- 실시간검색어 css/js 추가 -->
    </head>
    <body class="wrapper">
        <!-- header start -->
        <header class="header-area transparent-bar sticky-bar header-padding header-hm6">
            <div class="container-fluid">
                <div class="header-wrap header-flex">
                    <div class="logo mt-45">
                        <a href="${pageContext.request.contextPath }/">
                            <img class="logo-normally-none" alt="" src="${pageContext.request.contextPath }/resources/img/logo/test.png">
                            <img class="logo-sticky-none" alt="" src="${pageContext.request.contextPath }/resources/img/logo/logoblack.png">
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
                                        <!-- 2020/02/20 추가 -->
                                        <li><a href="${pageContext.request.contextPath }/admin/adminItemQnaList.do">adminIQnaList</a></li>
                                        <!-- 2020/02/09 추가 -->
                                        <li><a href="${pageContext.request.contextPath }/admin/deliveryList.do">deliveryList</a></li>
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
                            <c:if test="${memberLoggedIn != null || sessionId != null  || userName != null}">
                            	<li><i class="ti-location-pin"></i>${memberLoggedIn.memberName} ${nickname} ${userName } ${sessionId}  님 환영합니다</li>
                            
                            </c:if>
                            
                            
              
                                
                                 <c:if test="${memberLoggedIn == null && sessionId == null  && userName == null}">
	                               <li><i class="ti-location-pin"></i>로그인 후 이용해주세요</li>
	                               <form action="${pageContext.request.contextPath }/member/login-register.do" method="GET">
	                                            
	                                            
	                                            
	                                               
		                            <div class="submit-btn">
		                              <button class="btn-hover" type="submit">Log in / register</button>
		                            </div>
								</form>
                   				 </c:if>
                               
                            </ul>
                             <c:if test="${memberLoggedIn != null || sessionId != null  || userName != null}">
						   <p>
	                        <form action="${pageContext.request.contextPath}/logout" method="GET">
		                            <div class="submit-btn">
		                              <button class="btn-hover" type="submit">Logout</button>
		                            </div>
	                        </form>
                          </p>
                    </c:if>
                        </div>
                    </div>
                    <c:if test="${(memberLoggedIn != null) && fn:contains(memberLoggedIn.adminYn, 'N') || sessionId != null  || userName != null }">
                    <div class="sidebar-contact">
                        <h5>마이페이지</h5>
                       
                        <div class="sidebar-contact-list">
                            <ul>
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/shop/wishlist.do">위시리스트</a></li>
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/shop/cartList.do">장바구니</a></li>

                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/member/memberUpdateForm.do">회원 정보 수정</a></li>

                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/mypage/mypage-point.do?memberNo=${memberLoggedIn.memberNo}">포인트 확인</a></li>
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/mypage/mypage-review.do?memberNo=${memberLoggedIn.memberNo}&reviewWriter=${memberLoggedIn.memberEmail}">리뷰 확인</a></li>
                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/mypage/mypage-pQnA.do?memberNo=${memberLoggedIn.memberNo}">1:1문의</a></li>

                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath}/mypage/mypage-order.do?memberNo=${memberLoggedIn.memberNo}" >주문내역 조회</a></li>
                            </ul>
                        </div>
                    </div>
                    </c:if>
					<c:if test="${(memberLoggedIn != null) && fn:contains(memberLoggedIn.adminYn, 'Y')}">
					 <div class="sidebar-contact">
                        <h5>관리자페이지</h5>
                       
                        <div class="sidebar-contact-list">
                            <ul>
	                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath }/admin/enrollItem.do">상품등록</a></li>
	                             <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath }/admin/itemList.do">상품목록</a></li>
                                 <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath }/admin/adminPQnaList.do">1대1문의</a></li>
                                 <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath }/admin/adminItemQnaList.do">상품문의</a></li>
                                 <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath }/admin/deliveryList.do">배송현황</a></li>
                                 <li><i class="ti-hand-point-right"></i><a href="${pageContext.request.contextPath }/admin/adminGraph.do">매출현황</a></li>
                            </ul>
                        </div>
                    </div>
					</c:if>
                </div>
            </div>
        </div>
        <!-- main-search start -->
        <div class="main-search-active">
            <div class="sidebar-search-icon">
                <button class="search-close"><span class="ti-close"></span></button>
            </div>
            <div class="sidebar-search-input">
                <form action="${pageContext.request.contextPath }/item/searchAllItem.do" onsubmit="return keywordYn();">
                    <div class="form-search ui-widget">
                    	<input type="hidden" name="memberNo" value="${memberLoggedIn.memberNo }"/>
                        <input id="search" class="input-text" name="searchKeyword" placeholder="Search Entire Store" type="search" onclick="saveKeyword()">
                        <button>
                            <i class="ti-search"></i>
                        </button>
                        <div id="saveSearchKeyword" style="background-color: white;">
                        </div>
                        <!-- 실시간검색어 추가 -->
                        <div id="rank-content" class="mt-10">
                        	<div>
                        		<span style="color: white;">실시간 급상승 검색어(최근3시간)</span>
                        	</div>
				            <dl id="rank-list">
				                <dt>실시간 검색어</dt>
				                <dd>
				                    <ol id="realtiemRank">
				                        <li><a href="#" id="rank1">1 순위</a></li>
				                        <li><a href="#" id="rank2">2 순위</a></li>
				                        <li><a href="#" id="rank3">3 순위</a></li>
				                        <li><a href="#" id="rank4">4 순위</a></li>
				                        <li><a href="#" id="rank5">5 순위</a></li>
				                        <li><a href="#" id="rank6">6 순위</a></li>
				                        <li><a href="#" id="rank7">7 순위</a></li>
				                        <li><a href="#" id="rank8">8 순위</a></li>
				                        <li><a href="#" id="rank9">9 순위</a></li>
				                        <li><a href="#" id="rank10">10 순위</a></li>
				                    </ol>
				                </dd>
				            </dl>
				        </div>
				        <!-- 실시간검색어 추가 -->
				        <script>
				        function keywordYn(){
				        	if($("#search").val() == 0){
								alert("검색어를 입력해주세요.");
								return false;
							}
				        }
				        
				        $('#search').keydown(function(event) {
				        	let html = "";
				        	$("#saveSearchKeyword").html(html);
				        });

				        
				        function saveKeyword() {
				        	$.ajax({
	                        	//새로 등록된 상품 json요청
	                        	url: "${pageContext.request.contextPath}/saveKeyword.do?memberNo=${memberLoggedIn.memberNo}",
	                        	type: "GET",
	                        	dataType: "json",
	                        	success: data => {
	                        		let html = "";
	                        		console.log(data);
	                        		
	                        		for(let i in data){
	                        			let n = data[i];
	                        			console.log("test : " + n);
	                        		
	                        		html += "<span><a href='${pageContext.request.contextPath }/item/searchAllItem.do?memberNo=${memberLoggedIn.memberNo}&searchKeyword="+n.searchKeyword+"'>"+n.searchKeyword+"</a></span><br>";
	                                    
	                                    
	                        		}
	                        		console.log(html);
	                        		$("#saveSearchKeyword").html(html);
	                        	},
	                        	error: (x,s,e)=>{
	                        		console.log(x,s,e);
	                        	}
	                        	});
						};
				        
                    $(()=>{
                    	$.ajax({
                        	//새로 등록된 상품 json요청
                        	url: "${pageContext.request.contextPath}/searchRank.do",
                        	type: "GET",
                        	dataType: "json",
                        	success: data => {
                        		let html = "";
                        		console.log(data);
                        		
                        		for(let i in data){
                        			let n = data[i];
                        			console.log(n);
                        		
                        		html += "<li><a href='${pageContext.request.contextPath }/item/searchAllItem.do?memberNo=${memberLoggedIn.memberNo}&searchKeyword="+n+"' id='rank'"+i+"'>"+ i +"위 "+n+"</a></li>";
                                    
                                    
                        		}
                        		console.log(html);
                        		$("#realtiemRank").html(html);
                        	},
                        	error: (x,s,e)=>{
                        		console.log(x,s,e);
                        	}
                        	});
                    	
                    	timer = setInterval( function () {
                    	
                    	$.ajax({
                    	//새로 등록된 상품 json요청
                    	url: "${pageContext.request.contextPath}/searchRank.do",
                    	type: "GET",
                    	dataType: "json",
                    	success: data => {
                    		let html = "";
                    		console.log(data);
                    		
                    		for(let i in data){
                    			let n = data[i];
                    			console.log(n);
                    		
                    		html += "<li><a href='#' id='rank'"+i+"'>"+ i +"위 "+n+"</a></li>";
                                
                                
                    		}
                    		console.log(html);
                    		$("#realtiemRank").html(html);
                    	},
                    	error: (x,s,e)=>{
                    		console.log(x,s,e);
                    	}
                    	});
                    	
                        }, 25000);
                    	
                    });
                    
                   
                    </script>
  <script>
  $("#search").autocomplete({
      source : "${pageContext.request.contextPath}/searchAuto.do",
      //조회를 위한 최소글자수
      minLength: 2,
      select: function( event, ui ) {
      }
  });

  
</script>



                        
                    </div>
                </form>
            </div>
        </div>
