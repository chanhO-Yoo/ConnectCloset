<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
<jsp:include page="/WEB-INF/views/common/header.jsp" />


        <!-- Slider Start -->
        <div class="slider-area">
            <div class="slider-active pagination-style1 owl-carousel">
            	
            	<%-- 브랜드 값 넘겨주기 --%>
            	<%
            		HashMap<String, String> map = new LinkedHashMap<>();
            		map.put("lowclassic.jpg", "LOW CLASSIC");
            		map.put("balen.jpg", "BALENCIAGA");
            		map.put("givenchy.png", "GIVENCHY");
            		map.put("celine.jpg", "CELINE");
            		map.put("VALENTINO.jpeg", "Valentino");
            		map.put("burberry.jpg", "BURBERRY");
            		map.put("gucci.jpg", "GUCCI");
            		pageContext.setAttribute("map", map);
            	%>
            	<c:forEach items="${map }" var="brand" begin="0" end="7" step="1" varStatus="vs" >
                <div class="single-slider slider-overly bg-img pt-50 height-100vh d-flex align-items-center" data-dot="${vs.count }" style="background-image: url(${pageContext.request.contextPath }/resources/img/slider/${brand.key });">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="slider-text slider-animated-1 text-center">
                                    <h1 class="animated">${brand.value }</h1>
                                    <h5 class="animated">
                                       New Collections 2020 
                                    </h5>
                                    <div class="slider-btn mt-30">
                                        <a class="sub-slider-btn-1 animated mr-8 btn-hover" data-dot="${vs.count }" href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=brand-00${vs.count}">Shop now</a>
                                    </div>                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            	</c:forEach>
            </div>
        </div>
       
<!-- 하은 인덱스 샵 카테고리 이미지 수정 시작 -->      
        <div class="shop-area pt-115 pb-120">
            <div class="container">
                <div class="section-title-7 text-center mb-45">
                    <h2>Shop categories</h2>
                </div>
                <div class="categorie-slider-active owl-carousel">
                	<div class='shop-wrap'>
                		<div class='shop-img zoom-hover'>
                			<a class="image0" href='single-product.html'>
                				<img/>
                			</a>
                			<div class='shop-categories category0'>
                				<a href='${pageContext.request.contextPath}/shop/outerList.do'>OUTER</a>
                			</div>
                		</div>
                	</div>
                	<div class='shop-wrap'>
                		<div class='shop-img zoom-hover'>
                			<a class="image1" href='single-product.html'>
                				<img/>
                			</a>
                			<div class='shop-categories category1'>
                				<a href='${pageContext.request.contextPath}/shop/bottomList.do'>PANTS</a>
                			</div>
                		</div>
                	</div>
                	<div class='shop-wrap'>
                		<div class='shop-img zoom-hover'>
                			<a class="image2" href='single-product.html'>
                				<img/>
                			</a>
                			<div class='shop-categories category2'>
                				<a href='${pageContext.request.contextPath}/shop/shoesList.do'>SHOES</a>
                			</div>
                		</div>
                	</div>
                </div>
                <script>
                $(()=>{
                	$.ajax({
                		url: "${pageContext.request.contextPath}/shopCategories.do",
                    	type: "GET",
                    	dataType: "json",
                    	success: data => {
                    		let html = "";
                    		console.log(data);
                    		
                    		for(let i in data){
                    			let s = data[i];
                    			console.log(i);
                    			let str = "${pageContext.request.contextPath}/shop/single-product.do?itemNo="+s.itemNo;
                    			
                    			html ="<img id='image"+i+"'src='${pageContext.request.contextPath }/resources/upload/item/"+s.imageList[0].itemImageReName+"'>";
                    			html2 = "<a href='${pageContext.request.contextPath}/shop/single-product.do?itemNo="+s.itemNo+"'>category"+i+"</a>";
                    			$(".image"+i).html(html);
                    			$(".image"+i).attr('href',str);
                    			$(".category"+(i+1)).html(html2);
                    		}
                    	},		
                    	error: (x,s,e)=>{
                    		console.log(x,s,e);
                    	}
                	});
                });
                </script>

            </div>
        </div>
        <!-- 하은 인덱스 샵 카테고리 이미지 수정 끝 --> 
        
        <!--하은 새로 나온 상품 이미지 추가 -->
        <!-- 새로 나온 상품 -->
        <div class="shop-area pb-120">
            <div class="container">
                <div class="section-title-7 text-center mb-45">
                    <h2><strong>New Items</strong></h2>
                </div>
                <div class="row newItem"> 
                    
                    <script>
                    $(()=>{
                    	$.ajax({
                    	//새로 등록된 상품 json요청
                    	url: "${pageContext.request.contextPath}/newItem.do",
                    	type: "GET",
                    	dataType: "json",
                    	success: data => {
                    		let html = "";
                    		console.log(data);
                    		
                    		for(let i in data){
                    			let n = data[i];
                    			console.log(n);
                    		
                    		html += "<div class='col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12'>"
                    			 + "<div class='shop-wrap mb-35'>"
                    			 + "<div class='shop-img'>"
                    			 + "<a href='${pageContext.request.contextPath }/shop/single-product.do?itemNo="+n.itemNo+"'>"
                            	 + "<img src='${pageContext.request.contextPath }/resources/upload/item/"+n.imageList[0].itemImageReName+"'>"
                                 + "</a>"
                                 + "<div class='shop-hover'>"  
                                 + "<div class='shop-card'>"
                                 + "<a href='${pageContext.request.contextPath}/shop/cartInsert.do?itemNo=" + n.itemNo + "' title='Add To Cart' >Add To Cart <i class='ti-shopping-cart'></i></a>"
                                 + "</div>"   
                                 + "<div class='shop-wishlist'>"       
                                 + "<a title='Wishlist' href='${pageContext.request.contextPath}/shop/wishlistInsert.do?itemNo=" + n.itemNo + "'><i class='ti-heart'></i></a>"   
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



       


<!--------------------------------- 성준날씨  ----------------------------------> 
        <div class="discount-area pb-120">
            <div class="container">
                <div class="row align-items-center">
                  <div class="col-lg-7 col-md-6"> 
                      
                          <div id="current">
    	<h4><bold>HOW'S WEATHER TODAY?</bold></h4>
    	
​     <c:set var="temp" value="${Math.floor((data.main.temp - 273.15))}"/> 


    	<table  class="weather">
     		
   
       			 <tr>
          			<td>날짜</td>
          				<i class="wi wi-night-sleet"><td>날씨 이미지</td></i>
          			<td>온도</td>
         			 <td>습도</td>
         			 <td>날씨</td>
         			 <td>설명</td>
          			<td>바람</td>
          			<td>도시</td>
      			  </tr>
     			 
      					<tbody id="current_mytbody"></tbody>
   				 </table>
  			</div>
		
    </div> 
             
      
    <style>  
.weather {
  border-style: collapse;
  /* background: #ddd; */
}  
.weather tr {
 /*  padding: 13px;
  color: #168;
  border-bottom: 3px solid #168;
  text-align: center; */
   padding: 10px;
  color: #168;
  border-bottom: 3px solid #168;
  text-align: left;
}
.weather td {
/*   width : 93px;
  color: #669;
  padding: 10px;
  border-bottom: 1px solid #ddd;
  border: 1px solid #333333; */
  width : 93px;
    color: #669;
  padding: 10px;
  border-bottom: 1px solid #ddd;
}
.weather tr:hover td {
  color: #004;
}
</style> 
               
                    <div class="col-lg-5 col-md-6"> 
                     <c:set var = "Temp" scope = "session" />
                        <div class="discount-content">
                            <h2 style="font-size:35px"> Fit for today's weather ? <br>
                             &nbsp
                              <span id="temp"  ></span>℃ </h2>
                          
									
								
                            <p class="bright-color">
										Connect Closet is ready for you to worry about what to wear every day.<br> 
											Flex your clothes into your closet to match the weather and temperature of the day.</p>
                           
                           
                           
                           
                            <div class="summer-btn" >
                        		<a onclick="tempcc();" href="javascript:void(0);" id="tempbtn" class="default-btn btn-hover">CC Recommend </a>
                        	</div> 

                            <script>
                            
                           function tempcc(){
                            	var temp = $('#temp')[0].innerHTML;
                            
                            	console.log(temp);
                            	if(temp < -5 ){
                            		
                            		
                            		$("#tempbtn").attr("href", "http://localhost:9090/cc/shop/outerList.do");
                            	}
                            	else if(-5<temp<=0){
                            		 
                            		$("#tempbtn").attr("href", "http://localhost:9090/cc/shop/outerList.do");
                            	} 
                            	else if(0<temp<=5){
                            		
                            		$("#tempbtn").attr("href", "http://localhost:9090/cc/shop/topList.do");
                            	}
                            	
                            	else{
                            		$("#tempbtn").attr("href", "http://localhost:9090/cc/shop/topList.do");
                            		
                            	}
                            }
                            
                            </script>
                            
                            
                        </div>
                  	 </div> 
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

          var today = month+"/"+day;
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
                var 
                rowItem = '<tr >';
                rowItem += '<td>' + getDateHuman((data.dt * 1000)) + '</td>';
                rowItem += '<td><img src="http://openweathermap.org/img/wn/' + data.weather[0].icon + '@2x.png"/></td>';
                rowItem += '<td>' + Math.floor((data.main.temp - 273.15)) + '℃' + '</td>';
                rowItem += '<td>' + data.main.humidity + '%'+ '</td>';
                rowItem += '<td>' + data.weather[0].main + '</td>';
                rowItem +=
                  '<td>' + data.weather[0].description + '</td>';
                rowItem += '<td><img src="${pageContext.request.contextPath }/resources/img/weather/wind.png" alt="" width="50px" height="50px">' + data.wind.speed + 'm/s' + '</td>';
                rowItem += '<td>' + data.name + '</td>';
                rowItem += '</tr>';
                $('#current_mytbody').append(rowItem);
                
                $('#temp').append(Math.floor((data.main.temp - 273.15)));
                
              }
          });
        }
      });
    </script>
    
<!----------------------------------------------- 날씨 끝 -------------------------------------  -->
<!--하은 블로그 시작  -->
        <div class="blog-area gray-bg pt-120 pb-90">
            <div class="container">
                <div class="section-title-7 text-center mb-45">
                    <h2>Blog</h2>
                </div>
                <div class="row blogShow">
                </div>
                <script>
                $(()=>{
                	$.ajax({ 
                		//blog 최신글 요청
                    	url: "${pageContext.request.contextPath}/blogShow.do",
                    	type: "GET",
                    	dataType: "json",
                		success: data => {
                    		let html = "";
                    		console.log(data);
                    		
                    		
                    		for(let i in data){
                    			let n = data[i];
                    			console.log(n);
                    		
                    			html+="<div class='col-lg-4 col-md-6'>"
                    			+"<div class='blog-wrap-2 blog-shadow mb-40'>"
                    			+"<div class='blog-img hover-3'>"
                    			+"<a href='${pageContext.request.contextPath}/blog/blogView.do?blogNo="+n.blogNo+"'>"
                    			+"<img class='orderImage' src='${pageContext.request.contextPath }/resources/upload/blog/"+n.renamedFileName+"'>"
                    			+"</a>"
                    			+"<div class='readmore-icon'>"
                    			+"<a href='${pageContext.request.contextPath}/blog/blogView.do?blogNo="+n.blogNo+"'>"
                    			+"<i class='ti-arrow-right'></i>"
                    			+"</a>"
                    			+" </div>"
                    			+"</div>"
                    			
                    			+"<div class='blog-content-2'>"
                       			+"<div class='blog-meta-3'>"
                       			+"<ul>"
                       			+"<li>"+n.blogDate+"</li>"
                       			+"<li><a href='#'>4 <i class='ti-comment-alt'></i></a></li>"
                       			+"</ul>"
                       			+"</div>"
                       			+"<h4><a href='${pageContext.request.contextPath}/blog/blogView.do?blogNo="+n.blogNo+"'>"+n.blogTitle+"</a></h4>"
                       			+"<p>"+n.blogContent+"</p>"
                       			+" </div>"
                       			+"</div>"
                       			+"</div>";
                    		}
                    		$(".row.blogShow").append(html);
	                	},
                		error: (x,s,e)=>{
                    		console.log(x,s,e);
                    	}
                		
                		});
                	});
                </script>
                </div>
            </div>

        
  <%--       <div class="instagram-area">
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
       --%>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
