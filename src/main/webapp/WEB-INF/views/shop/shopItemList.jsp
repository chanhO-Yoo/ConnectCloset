<%@page import="java.net.URLDecoder"%>
<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	//쿠키 가져오기
	Cookie[] ck =request.getCookies();

	//페이지바 작업
	int totalContents = (int)request.getAttribute("totalContents");
	int cPage = (int)request.getAttribute("cPage");
	int numPerPage = (int)request.getAttribute("numPerPage");
	
	String brandNo = (String)request.getAttribute("brandNo");
	String itemTypeNo = (String)request.getAttribute("itemTypeNo");
	
	String url= "";
	String pageBar = "";
	
	if(itemTypeNo.equals("outer")){
		url = "outerList.do";
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else if(itemTypeNo.equals("top")){
		url = "topList.do";
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else if(itemTypeNo.equals("bottom")){
		url = "bottomList.do";
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else if(itemTypeNo.equals("dress")){
		url = "dressList.do";
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else if(itemTypeNo.equals("bag")){
		url = "bagList.do";
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else if(itemTypeNo.equals("shoes")){
		url = "shoesList.do";
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else if(itemTypeNo.equals("acc")){
		url = "accList.do";
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else{
		url = "shopItemList.do?brandNo="+brandNo+"&itemTypeNo="+itemTypeNo;
		pageBar = Utils.getBrandPageBar(totalContents, cPage, numPerPage, url);
	}
	
	
	pageContext.setAttribute("pageBar", pageBar);		
%>
<%
String newItemNoList = "";
if(ck!=null){
	for(Cookie c : ck){
		if(c.getName().indexOf("itemNoList") != -1){
			
			String[] itemNoArr = URLDecoder.decode(c.getValue(),"UTF-8").split(",");
			if(itemNoArr.length <= 5){
				for(int j=0;j<itemNoArr.length;j++) {
					newItemNoList = newItemNoList+","+itemNoArr[j];
				}
			}
			else{
				for(int j=0;j<5;j++) {
					newItemNoList = newItemNoList+","+itemNoArr[j];
				}
			}
			newItemNoList = newItemNoList.substring(1);
			
		}
	}
}
%>


<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
#shop-img {
	height: 300px !important;
}

#item-side-bar{
	padding-left: 25px !important; 
}

.shop-area-wrapper{
	padding-left: 10px !important;
}





</style>
        <div class="shop-area pt-80 pb-80 pro-col-40 section-padding-1">
            <div class="container-fluid">
            <p id="p">총 ${totalContents }개의 상품이 있습니다.</p>
                <div class="row">
                    <div class="col-xl-9 col-lg-9 col-md-9">
                        <div class="shop-area-wrapper">
                            <div class="row grid" data-show="9" data-load="3">
                            
                            <c:forEach items="${list }" var="item">
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12 item-hidden grid-item">
                                    <div class="shop-wrap mb-40">
                                        <div class="shop-img" id="shop-img">
                                            <a href="${pageContext.request.contextPath }/shop/single-product.do?itemNo=${item.itemNo}">
                                            	<c:if test="${item.imageList[0].itemImageReName == null }">
		                                        	<img src="${pageContext.request.contextPath }/resources/img/blog/blog-7.jpg" alt="">
	                                            </c:if>
	                                            <c:if test="${item.imageList[0].itemImageReName != null }">
		                                            <img src="${pageContext.request.contextPath }/resources/upload/item/${item.imageList[0].itemImageReName}" alt="">
	                                            </c:if>
                                            </a>
                                            <div class="shop-hover">
                                                <div class="shop-card">

                                                    <a href='${pageContext.request.contextPath}/shop/cartInsert.do?itemNo=${item.itemNo}' title="Add To Cart">Add To Cart <i class="ti-shopping-cart"></i></a>

                                                </div>
                                                <div class="shop-wishlist">
                                                    <a title="Wishlist" href='${pageContext.request.contextPath}/shop/wishlistInsert.do?itemNo=${item.itemNo}'><i class="ti-heart"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="shop-content">
                                            <div class="shop-name">
                                                <h4><a href="${pageContext.request.contextPath }/shop/single-product.do?itemNo=${item.itemNo}">&nbsp; &nbsp; ${item.itemName }</a></h4>
                                            </div>
                                            <div class="shop-price">
                                                <span>&nbsp; &nbsp;${item.itemPrice } &nbsp; &nbsp;</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    		</c:forEach>
                    		</div>
                    	</div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-2" id="item-side-bar">
                        <div class="shop-sidebar-style pl-10 port-mrg-res sidebar-mrg">
                            <div class="pro-sidebar-search mb-55">
                                <form class="pro-sidebar-search-form" action="${pageContext.request.contextPath }/shop/shopSearchItem.do" onsubmit="search(event)">
                                <input type="text" id="searchKeyword" name="searchKeyword" placeholder="Search here">
                                    <button id="searchBtn">
                                        <i class="ti-search"></i>
                                    </button>
                                </form>
                            </div>
                            <div class="sidebar-widget">
                                <div class="sidebar-categori mt-25">
								<h4 class="pro-sidebar-title">Categories</h4>
                                    <ul>
                                    <li></li>
                                    	<c:if test="${sort == 1}">
	                                    	<c:forEach items="${categoryMap }" var="map">
	   	                                  	  <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=a&itemTypeNo=${map.getKey()}">${map.getValue() }</a></li>
	                                    	</c:forEach>
                                   	 	</c:if>
                                   	 	<c:if test="${sort == 2}">
	                                    	<c:forEach items="${categoryMap }" var="map">
	   	                                  	  <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=a&itemTypeNo=${map.getKey()}">${map.getValue() }</a></li>
	                                    	</c:forEach>
                                   	 	</c:if>
                                   	 	<c:if test="${sort == 3}">
	                                    	<c:forEach items="${categoryMap }" var="map">
	   	                                  	  <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=a&itemTypeNo=${map.getKey()}">${map.getValue() }</a></li>
	                                    	</c:forEach>
                                   	 	</c:if>
										<c:if test="${sort == 4}">
	                                    	<c:forEach items="${categoryMap }" var="map">
	   	                                  	  <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=a&itemTypeNo=${map.getKey()}">${map.getValue() }</a></li>
	                                    	</c:forEach>
                                   	 	</c:if>
                                   	 	<c:if test="${sort == 5}">
	                                    	<c:forEach items="${categoryMap }" var="map">
	   	                                  	  <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=a&itemTypeNo=${map.getKey()}">${map.getValue() }</a></li>
	                                    	</c:forEach>
                                   	 	</c:if>
                                   	 	<c:if test="${sort == 6}">
	                                    	<c:forEach items="${categoryMap }" var="map">
	   	                                  	  <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=a&itemTypeNo=${map.getKey()}">${map.getValue() }</a></li>
	                                    	</c:forEach>
                                   	 	</c:if>
                                   	 	<c:if test="${sort == 7 }">
	                                    	<c:forEach items="${categoryMap }" var="map">
	   	                                  	  <li><a href="${pageContext.request.contextPath }/shop/shopItemList.do?brandNo=a&itemTypeNo=${map.getKey()}">${map.getValue() }</a></li>
	                                    	</c:forEach>
                                   	 	</c:if>
                                    </ul>
                                </div>
                            </div>
                           

                        </div>
                    </div>
                </div>
            </div>
            ${pageBar }
        </div>
<div id="sidebox">
	<p align="center">최근 본 상품</p>
	<hr/>
	<div id="recentImage"></div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<style>
#sidebox { background-color:#F0F0F0; position:absolute; width:120px; height:650px; top:100px; right:10px; padding: 3px 10px; z-index: 0; }
</style>
<script>
var currentPosition = parseInt($("#sidebox").css("top")); $(window).scroll(function() { var position = $(window).scrollTop(); $("#sidebox").stop().animate({"top":position+currentPosition+"px"},1000); });
</script>
<script>
//------------윤지 수정
//상품 검색
function search(event) {
	 event.preventDefault();
	
	var searchKeyword = $("#searchKeyword").val();
	var cPage = 1;
	console.log("++"+searchKeyword);
	
	$.ajax({
		url: "${pageContext.request.contextPath }/shop/shopSearchItem.do?searchKeyword="+searchKeyword+"&cPage"+cPage,
		dataType: "json",
		type: "GET",
		success: data=>{
			console.log(data);
			
 			let html="";
			
			for(let i in data.list){
    			let n = data.list[i];
			html += "<div class='col-xl-4 col-lg-4 col-md-4 item-hidden grid-item'>"
            	 + "<div class='blog-wrap-2 blog-shadow mb-40'>"
            	 + "<div class='blog-img hover-3'>"
                 + "<a href='${pageContext.request.contextPath }/admin/editItem.do?itemNo="+n.itemNo+"'>"
                 + "<img src='${pageContext.request.contextPath }/resources/img/blog/blog-7.jpg' width='220px'>"
                 /* + "<img src='${pageContext.request.contextPath }/resources/upload/item/"+n.imageList[0].itemImageReName+"' width='220px'>" */
                 + "</a>"
                 + "<div class='readmore-icon'>"
                 + "<a href='${pageContext.request.contextPath }/admin/editItem.do?itemNo="+n.itemNo+"'>"
                 + "<i class='ti-arrow-right'></i>"
                 + "</a>"
                 + "</div>"
                 + "</div>"
            	 + "<div class='blog-content-2' style='height: 250px'>"
                 + "<h4><a href='${pageContext.request.contextPath }/admin/editItem.do?itemNo="+n.itemNo+"'>"+n.itemName+"</a></h4>"
                 + "<h5>"+n.itemPrice+"</h5>"
                 + "<p>"+n.itemInfo+"</p>"
	             + "</div>"
        		 + "</div>"
     			 + "</div>";
			
			}
			$("#itemList").html(html);
			
			var url = "shopSearchItem.do?searchKeyword="+searchKeyword;
			
			let pageBar= pageBarFunc(data.totalContents, data.cPage, data.numPerPage, url);
			
			console.log(pageBar);
			$(".pagination").html(pageBar);
			console.log("changed!!");
		},
		error: (x,s,e) => {
			console.log("ajax요청실패",x,s,e);
		}
		
	})
	
	return false;
}
//------------윤지 끝

$(()=>{
	var newItemNoList = "<%=newItemNoList%>";
	console.log(newItemNoList);
	$.ajax({
	//최근 본 상품 목록 출력 
	url: "${pageContext.request.contextPath}/recentItem.do?itemNoList="+newItemNoList,
	type: "GET",
	dataType: "json",
	success: data => {
		let html = "";
		console.log(data);
		
		for(let i in data){
			let n = data[i];
			console.log(n);
			
		
		html += "<div class='col-12'>"
			 + "<div class='shop-wrap mb-35'>"
			 + "<div class='shop-img'>"
			 + "<a href='${pageContext.request.contextPath }/shop/single-product.do?itemNo="+n.itemNo+"'>"
        	 + "<img src='${pageContext.request.contextPath }/resources/upload/item/"+n.itemImageReName+"'>"
             + "</a>"
             + "</div>"
             + "</div>"
             + "</div>";
            
            
		}
		$("#recentImage").append(html);
	},
	error: (x,s,e)=>{
		console.log(x,s,e);
	}
	});
});

$(document).ready(function(){
	var header=$("header").attr('class','theme-bg');
	console.log(header);
});
</script>

