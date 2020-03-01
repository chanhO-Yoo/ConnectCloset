<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<!-- all js here -->
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>     
        
        <jsp:include page="/WEB-INF/views/common/header.jsp" />
        
        <fmt:requestEncoding value="utf-8"/> 
      	<style>
      	
.mix-icon-container {
    display: inline-block;
    height: 1em;
    line-height: 1em;
    position: relative;
    width: 1em;
}
.mix-icon-container .mix-base-icon {
    font-size: 1em;
}
.mix-icon-container [class^="icon-"], .mix-icon-container [class*="icon-"] {
    display: block;
    font-size: 1em;
    font-weight: bold;
    height: 100%;
    line-height: inherit;
    position: absolute;
    text-align: center;
    width: 100%;
}
.mix-icon-container .glyphicon {
    font-size: 1em;
}

.mix-error-icon
{
  color: #ff0000;
}
      	</style>
     <!-- breadcrumb area -->
        <div class="breadcrumb-area bg-img pt-230 pb-152" style="background-image: url(${pageContext.request.contextPath }/resources/img/banner/breadcrumb-3.jpg);">
            <div class="container">
                <div class="breadcrumb-content breadcrumb-black2 text-center">
                    <h2>WISHLIST</h2>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active" action="${pageContext.request.contextPath }/shop/wishlist.do" method="post">WISHLIST </li>
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
        <div class="shop-area pt-80 pb-80" >
            <div class="container">
            	
                <div class="shop-area-wrapper pro-col-5">
                    <div class="row grid" >
                        <c:forEach items="${list}" var="wish" varStatus="vs">  
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                          
                            <div class="shop-wrap mb-5">
   
                                <div class="shop-img hover-3">
                                	
                                    <a href="single-product.html">
                                    <img src="${pageContext.request.contextPath }/resources/upload/item/${wish.ITEM_IMAGE_RE_NAME}" alt=""></a>
	                                    
	                                   
                                  
 
 
 
 
                                    
                                    <div class="shop-content3">
                                    
                                        <div class="s-content3-name">
                                        
                                            <h4><a href="single-product.html"></a>${wish.ITEM_NAME }</h4>
                                        </div>
                                       
                                        <div class="s-content3-price">
                                            <span>${wish.ITEM_PRICE }</span>
                                               <span class="glyphicon glyphicon-search"></span>
                                               
                                          <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                            <a title="Add To Cart" href='${pageContext.request.contextPath}/shop/cartInsert.do?itemNo=${wish.ITEM_NO }'><i class="ti-shopping-cart"></i></a>
                                         <a  href='${pageContext.request.contextPath}/shop/wishlistDelete.do?wishNo=${wish.WISH_NO}'  onclick="return confirm('정말 삭제 하시겠습니까?');">
                                          <input type="button" value="&#x02717;" style="WIDTH: 30pt; HEIGHT: 30pt"/> </a>
                                        </div>
                                    </div>
                                </div>
                             

                            </div>
                        </div>
                         	</c:forEach> 
                    	 </div> 
                    	 

             		</div>
                         <div class = "container">
                           <div class="offset-xl-4 col-xl-4" style="text-align: center;">
                              <c:if  test="${empty list}"> <위시리스트가 비어있습니다.> </c:if>
                           </div>
                         </div>            
                      </div>
     				</div>                  

             	   
         	
     	 
                      
                                 
                                     	           
  </body> 
                    <!--페이징바  -->
                      <!-- <div class="pro-pagination-style text-center mt-50">
                        <ul>
                            <li><a class="active" href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">...</a></li>
                            <li><a href="#">11</a></li>
                        </ul>
                    </div>   -->
     
       <%--  <footer class="footer-area theme-bg pt-70 pb-50 clear-fix">
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
            
             
</footer> --%>
        
          <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        
		

  





