<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header2.jsp"></jsp:include>


	
	<div class="checkout-area pt-180 pb-180" style="height: 750px;" >
            <div class="container">
                <h4>이용후기</h4>
                <br>
                <div>
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">작성가능한 이용후기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">작성한 이용후기</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                      
                            <table class="col-lg-12">
                                <tr>
                                    <th>주문번호</th>
                                    <th>상품이름</th>
                                    <th>상품가격</th>
                                    
                                    <th></th>
                                </tr>
                                
                                <c:forEach var ="r" items="${orderReviewList}" >
                                <tr>
                                  
                                    <td>${r.orderNo} </td>
                                    <td>${r.itemName} </td>
                                    <td>${r.itemPrice} </td>
                                  
                                   
                                    <td><a href="${pageContext.request.contextPath}/mypage/mypage-reviewEnroll.do?orderNo=${r.orderNo}" class="btn btn-success">리뷰 작성</a>
                                    </td>
                                </tr>
                                
                                </c:forEach>
                              
                       
                              
                              </form>

                            </table>


                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                          
                            <table class="col-lg-12">
                                <tr>
                                   
                                    <th>상품정보</th>
                                    <th>상품가격</th>
                                    <th>상품내용</th>
                                     <th></th>
                                </tr>
                                
                                <c:forEach var ="re" items="${reviewList}">
                                <tr>
                                   
                                    <td>${re.itemName}</td>
                                    <td>${re.itemPrice}</td>
                                    <td>${re.reviewContent}</td>
                                     
                                     	 <td>
                                     <form action="${pageContext.request.contextPath}/mypage/mypage-reviewDelete.do?reviewNo=${re.reviewNo}&memberNo=${memberLoggedIn.memberNo}&reviewWriter=${memberLoggedIn.memberEmail}" method="post">
                                     	    <input type="submit" class="btn btn-success" value="삭제">
                                     
                                     </form>
                                     	 </td>
                                </tr>
                                
                                </c:forEach>
                                
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
