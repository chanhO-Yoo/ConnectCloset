<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<jsp:include page="/WEB-INF/views/common/header.jsp" />


        <!-- Slider Start -->
        <div class="slider-area">
            <div class="slider-active pagination-style1 owl-carousel">
            	
            	<%-- 브랜드 값 넘겨주기 --%>
            	<%
            		HashMap<String, String> map = new HashMap<>();
            		map.put("balen.jpg", "발렌시아가");
            		map.put("burberry.jpg", "버버리");
            		map.put("celine.jpg", "셀린느");
            		map.put("givenchy.png", "지방시");
            		map.put("gucci.jpg", "구찌");
            		map.put("lowclassic.jpg", "로우클래식");
            		map.put("VALENTINO.jpeg", "발렌티노");
            		
            		pageContext.setAttribute("map", map);
            	%>
            	<c:forEach items="${map }" var="brand" begin="0" end="7" step="1" varStatus="vs">
                <div class="single-slider slider-overly bg-img pt-50 height-100vh d-flex align-items-center" data-dot="${vs.count }" style="background-image: url(${pageContext.request.contextPath }/resources/img/slider/${brand.key });">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="slider-text slider-animated-1 text-center">
                                    <h1 class="animated">${brand.value }</h1>
                                    <h5 class="animated">
                                       New Collections 2019 
                                    </h5>
                                    <div class="slider-btn mt-30">
                                        <a class="sub-slider-btn-1 animated mr-8 btn-hover" href="single-product.html">Shop now</a>
                                    </div>                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            	</c:forEach>
                          
            </div>
        </div>
        
       
        <div class="shop-area pt-115 pb-120">
            <div class="container">
                <div class="section-title-7 text-center mb-45">
                    <h2>Shop categories</h2>
                </div>
                <div class="categorie-slider-active owl-carousel">
                    <div class="shop-wrap">
                        <div class="shop-img zoom-hover">
                            <a href="single-product.html">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-categories-1.jpg" alt="">
                            </a>
                            <div class="shop-categories">
                                <a href="#">Flip flops</a>
                            </div>
                        </div>
                    </div>
                    <div class="shop-wrap">
                        <div class="shop-img zoom-hover">
                            <a href="single-product.html">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-categories-2.jpg" alt="">
                            </a>
                            <div class="shop-categories">
                                <a href="#">Sneakers</a>
                            </div>
                        </div>
                    </div>
                    <div class="shop-wrap">
                        <div class="shop-img zoom-hover">
                            <a href="single-product.html">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-categories-3.jpg" alt="">
                            </a>
                            <div class="shop-categories">
                                <a href="#">Shoes</a>
                            </div>
                        </div>
                    </div>
                    <div class="shop-wrap">
                        <div class="shop-img zoom-hover">
                            <a href="single-product.html">
                                <img src="${pageContext.request.contextPath }/resources/img/product/shop-categories-2.jpg" alt="">
                            </a>
                            <div class="shop-categories">
                                <a href="#">Sneakers</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 새로 나온 상품 -->
        <div class="shop-area pb-120">
            <div class="container">
                <div class="section-title-7 text-center mb-45">
                    <h2><strong>새로 나온 상품</strong></h2>
                </div>
                <div class="row newItem"> 
                    
                    <!-- 
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                        <div class="shop-wrap mb-35">
                            <div class="shop-img">
                                <a href="single-product.html">
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
                                    <h4><a href="single-product.html">Product Name</a></h4>
                                </div>
                                <div class="shop-price">
                                    <span>$100</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                        <div class="shop-wrap mb-35">
                            <div class="shop-img">
                                <a href="single-product.html">
                                    <img src="${pageContext.request.contextPath }/resources/img/product/shop-3.jpg" alt="">
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
                                    <span class="old">$329</span>
                                    <span class="new">$150</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                        <div class="shop-wrap mb-35">
                            <div class="shop-img">
                                <a href="single-product.html">
                                    <img src="${pageContext.request.contextPath }/resources/img/product/shop-4.jpg" alt="">
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
                    
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                        <div class="shop-wrap mb-35">
                            <div class="shop-img">
                                <a href="single-product.html">
                                    <img src="${pageContext.request.contextPath }/resources/img/product/shop-5.jpg" alt="">
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
                    
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                        <div class="shop-wrap mb-35">
                            <div class="shop-img">
                                <a href="single-product.html">
                                    <img src="${pageContext.request.contextPath }/resources/img/product/shop-6.jpg" alt="">
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
                     -->
                    
                    <script>
                    $(()=>{
                    	$.ajax({
                    	//새로 등록된 상품 json요청
                    	url: "${pageContext.request.contextPath}/newItem.do",
                    	type: "POST",
                    	dataType: "json",
                    	success: data => {
                    		let html = "";
                    		console.log(data);
                    		
                    		for(let i in data){
                    			let n = data[i];
                    		
                    		html += "<div class='col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12'>"
                    			 + "<div class='shop-wrap mb-35'>"
                    			 + "<div class='shop-img'>"
                    			 + "<a href='single-product.html'>"
                            	 + "<img src='${pageContext.request.contextPath }/resources/img/product/shop-1.jpg'>"
                                 + "</a>"
                                 + "<div class='shop-hover'>"  
                                 + "<div class='shop-card'>"
                                 + "<a href='#' title='Add To Cart'>Add To Cart <i class='ti-shopping-cart'></i></a>"
                                 + "</div>"   
                                 + "<div class='shop-wishlist'>"       
                                 + "<a title='Wishlist' href='#'><i class='ti-heart'></i></a>"   
                                 + "</div>"       
                                 + "</div>"   
                                 + "</div>"
                            	 + "<div class='shop-content'>"
                            	 + "<div class='shop-name'>"
                                 + "<h4><a href='single-product.html'>"+n.itemName+"</a></h4>"
                                 + "</div>"   
                                 + "<div class='shop-price'>"
                                 + "<span>"+n.itemPrice+"</span>"
                                 + "</div>"
                                 + "</div>"
                                 + "</div>"
                                 + "</div>";
                    		}
                    		$(".row.newItem").append(html);
                    	},
                    	error: (x,s,e)=>{
                    		console.log(x,s,e);
                    	}
                    	});
                    });
                    </script>
                    
                </div>
            </div>
        </div>
        <!-- 날씨  -->
    <script type="text/javascript">
      $(document).ready(function() {
    	  getCurrentWeatheInfo();
    	  
        function getDateHuman(time) {
          var date = new Date(time);
          var year = date.getFullYear();
          var month = date.getMonth()+1
          var day = date.getDate();
          if(month < 10){
              month = "0"+month;
          }
          if(day < 10){
              day = "0"+day;
          }

          var today = year+"년 "+month+"월 "+day+"일 ";
          return today;
        }
        
        function getCurrentWeatheInfo() {
          //var apiURI = 'http://api.openweathermap.org/data/2.5/forecast?q=Gangnam-gu,kr&mode=json&appid=8b96fa909b07bad5fca2aacb8567b747';
          var apiURI = 'http://api.openweathermap.org/data/2.5/weather?q=Gangnam-gu,kr&mode=json&appid=8b96fa909b07bad5fca2aacb8567b747';
          $.ajax({
            url: apiURI,
            type: 'GET',
            data: '',
            dataType: 'json',
            async: 'false',
            success: function(data) {
              console.log(data);
                var rowItem = '<tr>';
                rowItem += '<td>' + getDateHuman((data.dt * 1000)) + '</td>';
                rowItem += '<td><img src="http://openweathermap.org/img/wn/' + data.weather[0].icon + '@2x.png"/></td>';
                rowItem += '<td>' + Math.floor((data.main.temp - 273.15)) + '℃' + '</td>';
                rowItem += '<td>' + data.main.humidity + '%'+ '</td>';
                rowItem += '<td>' + data.weather[0].main + '</td>';
                rowItem +=
                  '<td>' + data.weather[0].description + '</td>';
                rowItem += '<td>' + data.wind.speed + 'm/s' + '</td>';
                rowItem += '<td>' + data.name + '</td>';
                rowItem += '</tr>';
                $('#current_mytbody').append(rowItem);
              }
          });
        }
      });
    </script>
   
  <div id="current">
    <h1>현재 시간의 강남구 날씨 정보</h1>
​
    <table border="1">
      <thead>
   
        <tr>
          <td>날짜</td>
          <td>날씨 이미지</td>
          <td>현재온도</td>
          <td>현재습도</td>
          <td>날씨</td>
          <td>상세날씨설명</td>
          <td>바람</td>
          <td>도시이름</td>
        </tr>
      </thead>
      <tbody id="current_mytbody"></tbody>
    </table>
  </div>
<br />
<br />
<br />
<br />
<br />
​
<h3>채팅</h3>
​
	<!-- 채팅 -->
      <input type="text" id="sender" value="${sessionScope.memberLoggedIn.memberEmail }" style="display: none;">  
	 <!-- <input type="text" id="sender" value="seongjun" style="display: none;"> -->
	 <input type="text" id="messageinput"  >
    
    
		
    <div>
        <button type="button" onclick="openSocket();">채팅참여</button>
        <button type="button" onclick="send();">보내기</button>
        <button type="button" onclick="closeSocket();">채팅나가기</button>
    </div>
    <!-- Server responses get written here -->
	
    <div id="messages" ></div> 
   
    <!-- websocket javascript -->
    <script type="text/javascript">
        var ws;
        var messages = document.getElementById("messages");
        
        function openSocket(){
            if(ws !== undefined && ws.readyState !== WebSocket.CLOSED){
                writeResponse("이미 참여되어있습니다.");
                return;
            }
            
            //웹소켓 객체 만드는 코드
            ws = new WebSocket("ws://localhost:9090/cc/chat.do");
        
            ws.onopen=function(event){
                if(event.data === undefined) return;
                
                writeResponse(event.data);
            };
            
            ws.onmessage = function(event){
                writeResponse(event.data);
            };
            
            ws.onclose = function(event){
                writeResponse("채팅방을 나왔습니다.");
            };
        }
        
        function send(){
            var text = document.getElementById("messageinput").value+"," + document.getElementById("sender").value;
            ws.send(text);
            text = "";
        };
        
        function closeSocket(){
            ws.close();
        };
        
        function writeResponse(text){
            messages.innerHTML += "<br/>" + text;
        };
        
  </script>
        <div class="discount-area pb-120">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-6">
                        <div class="discount-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath }/resources/img/banner/discount.jpg" alt="discount-img">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="discount-content">
                            <h2>Winter Discount <br>Up to 30%</h2>
                            <p class="bright-color">Lorem Ipsum is simply dummy text. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            <div class="summer-btn">
                                <a href="about-us.html" class="default-btn btn-hover">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="blog-area gray-bg pt-120 pb-90">
            <div class="container">
                <div class="section-title-7 text-center mb-45">
                    <h2>Latest Blog</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="blog-wrap-2 blog-shadow mb-40">
                            <div class="blog-img hover-3">
                                <a href="blog-details.html">
                                    <img src="${pageContext.request.contextPath }/resources/img/blog/blog-7.jpg" alt="">
                                </a>
                                <div class="readmore-icon">
                                    <a href="blog-details.html">
                                        <i class="ti-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-3">
                                    <ul>
                                        <li>22 April, 2018</li>
                                        <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Karla Welch Launches Her Levi’s Collaboration With</a></h4>
                                <p>Aenean sollicitudin, lorem quis on endum uctor nisi elitod the cona sequat ipsum, necas sagittis sem natoque nibh id penatibus elit imperdiet... </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="blog-wrap-2 blog-shadow mb-40">
                            <div class="blog-img hover-3">
                                <a href="blog-details.html">
                                    <img src="${pageContext.request.contextPath }/resources/img/blog/blog-8.jpg" alt="">
                                </a>
                                <div class="readmore-icon">
                                    <a href="blog-details.html">
                                        <i class="ti-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-3">
                                    <ul>
                                        <li>20 April, 2018</li>
                                        <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Sienna Miller Has the New Uniform for Cool Moms</a></h4>
                                <p>Aenean sollicitudin, lorem quis on endum uctor nisi elitod the cona sequat ipsum, necas sagittis sem natoque nibh id penatibus elit imperdiet... </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="blog-wrap-2 blog-shadow mb-40">
                            <div class="blog-img hover-3">
                                <a href="blog-details.html">
                                    <img src="${pageContext.request.contextPath }/resources/img/blog/blog-9.jpg" alt="">
                                </a>
                                <div class="readmore-icon">
                                    <a href="blog-details.html">
                                        <i class="ti-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-3">
                                    <ul>
                                        <li>18 April, 2018</li>
                                        <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">How Nancy Cunard And Her Bangles Inspired an Bronze </a></h4>
                                <p>Aenean sollicitudin, lorem quis on endum uctor nisi elitod the cona sequat ipsum, necas sagittis sem natoque nibh id penatibus elit imperdiet... </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="instagram-area">
            <div class="instagram-wrap-3">
                <div class="instragram-active-4 owl-carousel">
                    <div class="single-instragram zoom-hover">
                        <a href="#"><img alt="" style="width: 292px; height: 293px; object-fit: cover;" src="${pageContext.request.contextPath }/resources/img/brand-logo/1.jpg"></a>
                    </div>
                    <div class="single-instragram zoom-hover">
                        <a href="#"><img alt="" style="width: 292px; height: 293px; object-fit: cover;" src="${pageContext.request.contextPath }/resources/img/brand-logo/2.jpg"></a>
                    </div>
                    <div class="single-instragram zoom-hover" >
                        <a href="#"><img alt="" style="width: 292px; height: 293px; object-fit: cover;" src="${pageContext.request.contextPath }/resources/img/brand-logo/3.jpg"></a>
                    </div>
                    <div class="single-instragram zoom-hover">
                        <a href="#"><img alt="" style="width: 292px; height: 293px; object-fit: cover;" src="${pageContext.request.contextPath }/resources/img/brand-logo/4.jpg"></a>
                    </div>
                    <div class="single-instragram zoom-hover">
                        <a href="#"><img alt="" style="width: 292px; height: 293px; object-fit: cover;" src="${pageContext.request.contextPath }/resources/img/brand-logo/5.png"></a>
                    </div>
                </div>
            </div>
        </div>
        <script>
        $(document).ready(function () {
            //you can set this, as long as it's not greater than the slides length
            var show = 4;
            //calculate each slides width depending on how many you want to show
            var w = $('.instagram-area').width() / show;
            var l = $('.single-instragram zoom-hover').length;
            
            //set each slide width
            $('.instagram-area').width(w);
            //set the container width to fix the animation and make it look sliding
            $('.instagram-wrap-3').width(w * l)
            
            function slider() {
                $('.single-instragram zoom-hover:first-child').animate({
                    marginLeft: -w //hide the first slide on the left
                }, 'slow', function () {
                    //once completely hidden, move this slide next to the last slide
                    $(this).appendTo($(this).parent()).css({marginLeft: 0});
                });
            }
            //use setInterval to do the timed execution and animation
            var timer = setInterval(slider, 2000);
            
            /* pausing the slider */   
            $('.instagram-area').hover(function(){
                //mouse in, clearinterval to pause
                clearInterval(timer);
            },function(){
                //mouse out, setinterval to continue
                timer = setInterval(slider, 2000);
            });
        });
        </script>
        


<jsp:include page="/WEB-INF/views/common/footer.jsp" />