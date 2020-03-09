<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
#buttoncss{
border: 1px solid black;
/* background-color: rgba(0,0,0,0); */
background-color: black;
color: white;
}
#blog-img {
	height: 300px !important;
}
</style>

<!-- breadcrumb area -->
       
        <div class="blog-area pt-80 pb-80 gray-bg-4 container-padding-res blog-sidebar-page">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-8 pro-col-40">
                        <div class="row grid" data-show="9" data-load="3">
                    	<c:forEach items="${list}" var="blogCollectionMap" varStatus="vs">
                            <div class="col-xl-4 col-lg-6 col-md-6 item-hidden grid-item">
                                <div class="blog-wrap-2 blog-shadow mb-40">
                                    <div class="blog-img hover-3 blog-img" id="blog-img">	
                                         <a href="${pageContext.request.contextPath}/blog/blogView.do?blogNo=${blogCollectionMap.blogNo}">
                            			  	 <c:if test="${blogCollectionMap.attachmentList[0].renamedFileName == null }">
                                         		 <img src="${pageContext.request.contextPath }/resources/upload/${blogCollectionMap.renamedFileName}" alt="">
                                          	</c:if> 
                                          
                                          	 <c:if test="${blogCollectionMap.attachmentList[0].renamedFileName != null }">
		                                            <img src="${pageContext.request.contextPath }/resources/upload/blog/${blogCollectionMap.attachmentList[0].renamedFileName}" alt="">
	                                         </c:if>   
                                        </a>
                                        <div class="readmore-icon">
                                            <a href="${pageContext.request.contextPath}/blog/blogView.do?blogNo=${blogCollectionMap.blogNo}">
                                        
                                                <i class="ti-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-content-2">
                                        <div class="blog-meta-3">
                                            <ul>
                                                <li>${blog.blogDate }</li>
                                                <%-- <li>< <a href="${pageContext.request.contextPath}/blog/blogView.do?blogNo=${blog.blogNo}">>4 <i class="ti-comment-alt"></i></a></li> --%>
                                            </ul>
                                        </div>
                                        <h4><a href="${pageContext.request.contextPath}/blog/blogView.do?blogNo=${blogCollectionMap.blogNo}">${blogCollectionMap.blogTitle }</a></h4>
                                        <p>${blogCollectionMap.blogContent }  </p>
                       
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        </div>
                        <div class="pro-load-more load-more-border text-center mt-10">
                            <a class="load-more-toggle default-btn btn-hover" href="#">Load More Posts </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4">
                        <div class="pro-sidebar-style pl-20 sidebar-mrg">
                            <div class="pro-sidebar-search mb-55">
                                    <div>
										<button id="buttoncss">
										<a href="${pageContext.request.contextPath }/blog/blogForm.do" style="color: white; text-decoration: none;">★  write ★</a>
										</button>
                                    </div>
                            </div>
                            <div>
								 <h4><a href="#"><i class="fa fa-twitter" ></i>Cc Chat</a></h4>
							
								
								<div class="input-container">
									<input type="text" id="userId" placeholder="접속아이디"   style="width:235px;height:30px;"/>
									<button id="btn-connect">접속</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
                    
<jsp:include page="/WEB-INF/views/common/footer.jsp" /> 
<!--==============================================성준 채팅 시작  -->       

<script>
$(()=>{
	console.log("jquery로딩 완료");
	$("#btn-connect").click(()=>{
		var $userId = $("#userId");
		if($userId.val().trim().length==0) return;
		
		location.href = "<%=request.getContextPath()%>/chat/chatRoom?userId="+$userId.val().trim();
	})
})
</script>

<style>
#talk{
font-family: fantasy;
font-size: 40px;
}
#btn-connect {
 padding-bottom: 40px;
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #5cb85c;
  cursor: pointer;
  border: 1px solid #4cae4c;
  border-radius: .25em;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
   padding: 20px 4;
  background: #F18C7E;
 float: right;"
}

#btn-connect:hover {
  background-color: #6ed36e;
}


</style>
 <!--==============================================성준 채팅 끝  -->   
                            


 <!--실시간 채팅  -->
<%-- <div class="chat_list_wrap">
<div class="header">
ConnectClost Chat
</div>
<div>
<c:forEach items="${list}" var="chat" varStatus="vs"> --%>
	<!-- 채팅 -->
   <!--    <input type="text" id="sender" value="" style="display: none;">   -->
	 <!-- <input type="text" id="sender" value="seongjun" style="display: none;"> -->

	<%--  <input type="text" id="messageinput"> <button type="button" onclick="send();">Send</button>
</c:forEach>
 

        <button type="button" onclick="openSocket();">IN</button>
       
        <button type="button" onclick="closeSocket();">OUT</button>
<%-- </div> --%>
<!-- </div>  -->
​

    <!-- Server responses get written here -->
	
   <!--  <div id="messages" ></div>  -->
   
<!--     websocket javascript
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
        
  </script> -->


<script>
$(document).ready(function(){
	var header=$("header").attr('class','theme-bg');
	console.log(header);
});
</script>