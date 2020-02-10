<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>





<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header2.jsp" />

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
                            <tr>
                                <td><strong>기간검색</strong></td>
                                <td>
                                    <button type="button" class="btn btn-light">1개월</button>
                                    <button type="button" class="btn btn-light">3개월</button>
                                    <button type="button" class="btn btn-light">6개월</button>
                                    <button type="button" class="btn btn-light">전체</button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-info">검색</button>
                                </td>
                            </tr>
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
                        <tr class="point-save">
                            <td>20200131</td>
                            <td>적립</td>
                            <td>상품구매</td>
                            <td>500</td>
                        </tr>
                        <tr class="point-save">
                            <td>20200120</td>
                            <td>적립</td>
                            <td>상품구매</td>
                            <td>300</td>
                        </tr>
                        <tr class="point-use">
                            <td>20200116</td>
                            <td>사용</td>
                            <td>상품구매</td>
                            <td>1000</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />