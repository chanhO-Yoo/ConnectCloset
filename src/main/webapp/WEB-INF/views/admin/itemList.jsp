<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	//페이비자 작업
	int totalContents = (int)request.getAttribute("totalContents");
	int cPage = (int)request.getAttribute("cPage");
	int numPerPage = (int)request.getAttribute("numPerPage");
	
	int brandYn = (int)request.getAttribute("brandYn");
	
	String url = "";
	String pageBar = "";
	if(brandYn == 0){
		url = "itemList.do"; //간단한 상대주소로 접근
		pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, url);
	}
	else{
		String brandNo = (String)request.getAttribute("brandNo");
		url = "adminSearchItembyBrand.do?brandNo="+brandNo;
		pageBar = Utils.getBrandPageBar(totalContents, cPage, numPerPage, url);
	}
	
	
	
	pageContext.setAttribute("pageBar", pageBar);
%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- breadcrumb area -->
        <div class="breadcrumb-area bg-img pt-230 pb-152 default-overlay-2" style="background-image: url(${pageContext.request.contextPath }/resources/img/banner/breadcrumb.jpg);">
            <div class="container">
                <div class="breadcrumb-content text-center">
                    <h2>ItemList</h2>
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
                <p>총 ${totalContents }개의 상품이 있습니다.</p>
                <div class="row">
                    <div class="col-xl-9 col-lg-8 pro-col-40">
                        <div class="row grid" data-show="9" data-load="3" id="itemList">
			                <c:forEach items="${list }" var="item">
	                            <div class="col-xl-4 col-lg-4 col-md-4 item-hidden grid-item">
	                                <div class="blog-wrap-2 blog-shadow mb-40">
	                                    <div class="blog-img hover-3">
	                                        <a href="${pageContext.request.contextPath }/admin/editItem.do?itemNo=${item.itemNo}">
	                                        	<c:if test="${item.imageList[0].itemImageReName == null }">
		                                            <img src="${pageContext.request.contextPath }/resources/img/blog/blog-7.jpg" alt="" width="220px">
	                                            </c:if>
	                                            <c:if test="${item.imageList[0].itemImageReName != null }">
		                                            <img src="${pageContext.request.contextPath }/resources/upload/item/${item.imageList[0].itemImageReName}" alt="" width="220px">
	                                            </c:if>
	                                        </a>
	                                        <div class="readmore-icon">
	                                            <a href="${pageContext.request.contextPath }/admin/editItem.do?itemNo=${item.itemNo}">
	                                                <i class="ti-arrow-right"></i>
	                                            </a>
	                                        </div>
	                                    </div>
	                                    <div class="blog-content-2" style="height: 250px">
	                                        <h4><a href="${pageContext.request.contextPath }/admin/editItem.do?itemNo=${item.itemNo}">${item.itemName }</a></h4>
	                                        <h5>${item.itemPrice }</h5>
	                                        <p>${item.itemInfo }</p>
	                                    </div>
	                                </div>
	                            </div>
				            </c:forEach>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4">
                        <div class="pro-sidebar-style pl-20 sidebar-mrg">
                            <div class="pro-sidebar-search mb-55">
                            <form class="pro-sidebar-search-form" action="${pageContext.request.contextPath }/admin/adminSearchItem.do" onsubmit="search(event)">
                                <input type="text" id="searchKeyword" name="searchKeyword" placeholder="Search here...">
                                <button id="searchBtn">
                                    <i class="ti-search"></i>
                                </button>
                                </form>
                            </div>
                            <div class="sidebar-widget">
                                <h4 class="pro-sidebar-title">Categories </h4>
                                <div class="sidebar-categori mt-25">
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath }/admin/adminSearchItembyBrand.do?brandNo=brand-001">&nbsp;-&nbsp;로우클래식  </a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/adminSearchItembyBrand.do?brandNo=brand-002">&nbsp;-&nbsp;발렌시아가  </a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/adminSearchItembyBrand.do?brandNo=brand-003">&nbsp;-&nbsp;지방시  </a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/adminSearchItembyBrand.do?brandNo=brand-004">&nbsp;-&nbsp;셀린느  </a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/adminSearchItembyBrand.do?brandNo=brand-005">&nbsp;-&nbsp;발렌티노  </a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/adminSearchItembyBrand.do?brandNo=brand-006">&nbsp;-&nbsp;버버리  </a></li>
                                        <li><a href="${pageContext.request.contextPath }/admin/adminSearchItembyBrand.do?brandNo=brand-007">&nbsp;-&nbsp;구찌  </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="sidebar-widget mt-55">
                                <div class="facebook-banner-wrap default-overlay-2">
                                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/banner/banner-17.jpg" alt=""></a>
                                    <div class="facebook-banner-content">
                                        <i class="ti-facebook"></i>
                                        <h4>FaceboOk Fans Page</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- pageBar 출력 부분 -->
		${pageBar }
        </div>
        

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script>
function search(event) {
	 event.preventDefault();
	
	var searchKeyword = $("#searchKeyword").val();
	var cPage = 1;
	console.log("++"+searchKeyword);
	
	$.ajax({
		url: "${pageContext.request.contextPath }/admin/adminSearchItem.do?searchKeyword="+searchKeyword+"&cPage"+cPage,
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
			
			var url = "adminSearchItem.do?searchKeyword="+searchKeyword;
			
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

function changePage(cPage) {
	
	var searchKeyword = $("#searchKeyword").val();

	console.log(cPage);
	
	console.log("++"+searchKeyword);
	
	$.ajax({
		url: "${pageContext.request.contextPath }/admin/adminSearchItem.do?searchKeyword="+searchKeyword+"&cPage="+cPage,
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
			
			var url = "adminSearchItem.do?searchKeyword="+searchKeyword;
			
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

function pageBarFunc(totalContents, cPage, numPerPage, url){
	var pageBar = "";
	//페이지바 길이
	var pageBarSize= 5;
	//총페이지
	var totalPage = Math.ceil(totalContents/numPerPage);
	console.log(Math.floor((cPage-1)/pageBarSize));
	var pageStart = Math.floor((cPage-1)/pageBarSize) * pageBarSize + 1;
	var pageEnd = pageStart + pageBarSize -1;
	//페이지바 순회용 증감변수
	var pageNo = pageStart;
	
	//[이전]
	if(pageNo == 1) {
		pageBar += "<li class=\"page-item disabled\">" + 
				"      <a class=\"page-link\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">이전</a>" + 
				"    </li>";
	}
	else {
		pageBar += "<li class=\"page-item\">"
				+ "<a class=\"page-link\" href=\"javascript:changePage("+(pageNo-1)+");\">이전</a>"
				+ "</li>";
	}
	
	//[pageNo]
	while(!(pageNo>pageEnd || pageNo>totalPage)) {
		if(pageNo == cPage) {
			pageBar += "<li class=\"page-item\">"
					+ "<a class=\"page-link\">"+pageNo+"</a>"
					+ "</li>";
		}
		else {
			pageBar += "<li class=\"page-item\">"
					+ "<a class=\"page-link\" href=\"javascript:changePage("+pageNo+");\">"+pageNo+"</a>"
					+ "</li>";
		}
		pageNo++;
	}
	
	
	//[다음]
	if(pageNo > totalPage) {
		pageBar += "<li class=\"page-item disabled\">" + 
				"      <a class=\"page-link\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">다음</a>" + 
				"    </li>";
	}
	else {
		pageBar += "<li class=\"page-item\">"
				+ "<a class=\"page-link\" href=\"javascript:changePage("+pageNo+");\">다음</a>"
				+ "</li>";
	}
	
	return pageBar;
	
}
</script>
