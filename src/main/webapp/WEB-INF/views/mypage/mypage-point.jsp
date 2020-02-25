<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>





<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

  <div class="checkout-area pt-95 pb-100" style="height: 750px;">
            <div class="container">
                <h4>포인트내역</h4>
                <br>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <table class="table" style="text-align: center; background-color: antiquewhite;">
                            <colgroup>
                                <col width="25%" />
                                <col width="50%" />
                                <col width="25%" />
                            </colgroup>
                      
                        </table>
                    </div>
                </div>
                <br>
               
                <style>
                    table tr{
                        height: 50px;
                    }
                    .point-save{
                        color: green;
                    }
                    .point-use{
                        color: red;
                    }
                </style>
                
                <div>
                    <table class="col-lg-12">
                        <tr>
                            <th>날짜</th>
                            <th>사용/적립</th>
                            <th>사유</th>
                            
                            <th>금액</th>
                        </tr>
                 <c:forEach var="p" items="${point}">
                        <tr class="point-save">
                            <td>${p.pointChangeDate} </td>
                            <c:choose>

								<c:when test="${p.pointStatus eq 'U'}"> 
								<td>사용</td>
								</c:when>
								
								<c:otherwise> 
								<td>적립</td>
								</c:otherwise>

                            </c:choose>

                            <td>${p.pointChangeReason} </td>
                            <td>${p.pointAmount}</td>
                        </tr>
               
                </c:forEach>
                    </table>
                </div>
                
            	${pageBar }
            </div>
        </div>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
		console.log(header);
	});
</script>