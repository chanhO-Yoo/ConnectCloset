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
                    <h2>Blog</h2>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active">Blog </li>
                    </ul>
                </div>
            </div>
        </div>
       
        <div class="blog-area pt-80 pb-80 gray-bg-4 container-padding-res blog-sidebar-page">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-8 pro-col-40">
                        <div class="row grid" data-show="9" data-load="3">
                    <c:forEach items="${list}" var="blog" varStatus="vs">
                            <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
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
                                                <li>${blog.blogDate }</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">${blog.blogTitle }</a></h4>
                                        <p>${blog.blogContent }  </p>
                                    </div>
                                </div>
                            </div>
                                </c:forEach>
                     <%--        <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
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
                                        <h4><a href="blog-details.html">Sienna Miller Has the New Uniform Cool Moms</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas...  </p>
                                    </div>
                                </div>
                            </div> --%>
                   <%--          <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
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
                                        <h4><a href="blog-details.html">How Nancy Cunard Bangle Inspired  Bronze </a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                  <%--           <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow mb-40">
                                    <div class="blog-img hover-3">
                                        <a href="blog-details.html">
                                            <img src="${pageContext.request.contextPath }/resources/img/blog/blog-10.jpg" alt="">
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
                                                <li>17 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">The 10 Best Beauty Looks of the Week and More</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                  <%--           <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow mb-40">
                                    <div class="blog-img hover-3">
                                        <a href="blog-details.html">
                                            <img src="${pageContext.request.contextPath }/resources/img/blog/blog-11.jpg" alt="">
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
                                                <li>14 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">Here’s What Go See This Year’s Frieze Art Fair</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas...  </p>
                                    </div>
                                </div>
                            </div> --%>
                      <%--       <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow mb-40">
                                    <div class="blog-img hover-3">
                                        <a href="blog-details.html">
                                            <img src="${pageContext.request.contextPath }/resources/img/blog/blog-12.jpg" alt="">
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
                                                <li>11 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">At Museum Contemporary Paintings Dreams</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                        <%--     <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow mb-40">
                                    <div class="blog-img hover-3">
                                        <a href="blog-details.html">
                                            <img src="${pageContext.request.contextPath }/resources/img/blog/blog-13.jpg" alt="">
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
                                                <li>09 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">Beautiful Bohemian Beach Getaway That Tulum</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                     <%--        <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow mb-40">
                                    <div class="blog-img hover-3">
                                        <a href="blog-details.html">
                                            <img src="${pageContext.request.contextPath }/resources/img/blog/blog-14.jpg" alt="">
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
                                                <li>07 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">Aurora, New York: Brought American Girl</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                   <%--          <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow mb-40">
                                    <div class="blog-img hover-3">
                                        <a href="blog-details.html">
                                            <img src="${pageContext.request.contextPath }/resources/img/blog/blog-15.jpg" alt="">
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
                                                <li>03 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">Middle of Ocean: Marina Gallo’s Polynesia</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                       <%--      <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow">
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
                                                <li>26 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">Karla Welch Launches Her Levi’s Collaboration</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                            <%-- <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow">
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
                                                <li>21 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">Sienna Miller Has the New Uniform Cool Moms</a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                     <%--        <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow">
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
                                                <li>29 April, 2018</li>
                                                <li><a href="#">4 <i class="ti-comment-alt"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="blog-details.html">How Nancy Cunard Bangle Inspired  Bronze  </a></h4>
                                        <p>Aenean sollicitudiln, lorem quis on endum auctor nisi elitod the cona sequat at ipsum, necas... </p>
                                    </div>
                                </div>
                            </div> --%>
                        </div>
                        <div class="pro-load-more load-more-border text-center mt-10">
                            <a class="load-more-toggle default-btn btn-hover" href="#">Load More Posts </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4">
                        <div class="pro-sidebar-style pl-20 sidebar-mrg">
                            <div class="pro-sidebar-search mb-55">
<!--                                 <form class="pro-sidebar-search-form" action="#">
                                    <input type="text" placeholder="Search here...">
                                    <button>
                                        <i class="ti-search"></i>
                                    </button> -->
                                    <div>
										<button>
										<a href="${pageContext.request.contextPath }/blog/blogForm.do">글쓰기</a>
										</button>
                                    </div>
                                </form>
                            </div>
                            <div class="sidebar-widget mb-55">
                                <h4 class="pro-sidebar-title">Recent Projects </h4>
                                <div class="sidebar-project-wrap mt-30">
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/img/portfolio/sidebar-1.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <span>Photography</span>
                                            <h4><a href="#">The Planetary Fund</a></h4>
                                        </div>
                                    </div>
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/img/portfolio/sidebar-2.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <span>Branding</span>
                                            <h4><a href="#">Let's Change the World</a></h4>
                                        </div>
                                    </div>
                                    <div class="single-sidebar-project">
                                        <div class="sidebar-project-img">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/img/portfolio/sidebar-3.jpg" alt=""></a>
                                        </div>
                                        <div class="sidebar-project-content">
                                            <span>Design</span>
                                            <h4><a href="#">Space Tesla Design</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-widget">
                                <h4 class="pro-sidebar-title">Categories </h4>
                                <div class="sidebar-categori mt-25">
                                    <ul>
                                        <li><a href="#">Artwork  <span>(9)</span></a></li>
                                        <li><a href="#">Branding  <span>(12)</span></a></li>
                                        <li><a href="#">Graphics  <span>(5)</span></a></li>
                                        <li><a href="#">Photography  <span>(16)</span></a></li>
                                    </ul>
                                </div>
                            </div>

<style>
.chat_list_wrap {
  list-style: none;
}
.chat_list_wrap .header {
  font-size: 14px;
  padding: 15px 0;
  background: #F18C7E;
  color: white;
  text-align: center;
  font-family: "Josefin Sans", sans-serif;
}
</style>

<!--실시간 채팅  -->
<div class="chat_list_wrap">
<div class="header">
ConnectClost Chat
</div>
<div>
<%-- <c:forEach items="${list}" var="chat" varStatus="vs"> --%>
	<!-- 채팅 -->
      <input type="text" id="sender" value="" style="display: none;">  
	 <!-- <input type="text" id="sender" value="seongjun" style="display: none;"> -->

	 <input type="text" id="messageinput"> <button type="button" onclick="send();">Send</button>
<%-- </c:forEach> --%>
 

        <button type="button" onclick="openSocket();">IN</button>
       
        <button type="button" onclick="closeSocket();">OUT</button>
</div>
</div>
​
    
    
		
   
    <!-- Server responses get written here -->
	
    <div id="messages" ></div> 
   
    <!-- websocket javascript -->
    <script type="text/javascript">
        var ws;
        var messages = document.getElementById("messages");
        
        function openSocket(){
            if(ws !== undefined && ws.readyState !== WebSocket.CLOSED){
            	 return;
            	writeResponse("이미 참여되어있습니다.");
               
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
            var text = document.getElementById("sender").value + document.getElementById("messageinput").value;
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









 





<jsp:include page="/WEB-INF/views/common/footer.jsp" />
