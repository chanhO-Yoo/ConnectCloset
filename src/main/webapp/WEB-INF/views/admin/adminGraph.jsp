<%@page import="com.connectcloset.cc.order.model.vo.Graph"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.connectcloset.cc.common.util.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%
	int count = 0;

	//그래프 날짜 변환작업
	Date d = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yy-MM");
	String date = sdf.format(d);
	
	//최근 12달 배열생성
	String[] monthArr = new String[12];
	for(int i=0;i<monthArr.length;i++){
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, count--);
		monthArr[i] = sdf.format(cal.getTime());
	}
	count=0;
	
	//월별 판매 판매금액 / 판매량
	List<Graph> grahpList = (List<Graph>)request.getAttribute("monthly_sales");
	
	int[] mIncome = {0,0,0,0,0,0,0,0,0,0,0,0};
	for(int i=0;i<grahpList.size();i++){
		mIncome[i] = Integer.parseInt(grahpList.get(i).getMonthlySales());
	}
	int[] mAmount = {0,0,0,0,0,0,0,0,0,0,0,0};
	for(int i=0;i<grahpList.size();i++){
		mAmount[i] = Integer.parseInt(grahpList.get(i).getMonthlySalesVolume());
	}
%>

	<div class="row">
		<div id="montly_chart2" class="col-lg-6 col-md-6" style="display: block; margin: 0 atuo !important; width: auto"></div>
		<div id="montly_chart" class="col-lg-6 col-md-6" style="display: block; margin: 0 atuo !important; width: auto"></div>
	</div>
  
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
	});
</script>
<script>
google.charts.load('current', {'packages':['corechart']});

google.charts.setOnLoadCallback(drawChart);
google.charts.setOnLoadCallback(drawChart2);

function drawChart() {
	// Some raw data (not necessarily accurate)
	var data = google.visualization.arrayToDataTable([
        ['월', '판매량'],
        
        <%for(int i = 0;i<monthArr.length;i++){%>
       		['<%=monthArr[11-i]%>', <%=mAmount[11-i]%>],
        <%}%>
      ]);
      var data3 = google.visualization.arrayToDataTable([
        ['월', '판매금액', {type: 'string', role: 'tooltip'}, '판매량'],
        
        <%for(int i = 0;i<monthArr.length;i++){%>
       		['<%=monthArr[11-i]%>', <%=mIncome[11-i]%>/10000, '<%=monthArr[11-i]%> 판매금액:<%=mIncome[11-i]/10000.0%>만원', <%=mAmount[11-i]%>],
        <%}%>
      ]);

      var options = {
        title : '최근 1년간 월별 판매량 변화',
        animation: { //차트가 뿌려질때 실행될 애니메이션 효과
            startup: true,
            duration: 1000,
            easing: 'inAndOut' },
        seriesType: 'bars',
        series: {1: {type: 'line'}},
        'width':1000,
        'height':750,
        chartArea:{left:'15%',width:'50%',height:'75%'}};

      var chart = new google.visualization.ComboChart(document.getElementById('montly_chart'));
      chart.draw(data, options);
    }
    
function drawChart2() {
	// Some raw data (not necessarily accurate)
	var data = google.visualization.arrayToDataTable([
        ['월', '판매금액'],
        
        <%for(int i = 0;i<monthArr.length;i++){%>
       		['<%=monthArr[11-i]%>', <%=mIncome[11-i]%>/10000],
        <%}%>
      ]);
      var data3 = google.visualization.arrayToDataTable([
        ['월', '판매금액', {type: 'string', role: 'tooltip'}, '판매량'],
        
        <%for(int i = 0;i<monthArr.length;i++){%>
       		['<%=monthArr[11-i]%>', <%=mIncome[11-i]%>/10000, '<%=monthArr[11-i]%> 판매금액:<%=mIncome[11-i]/10000.0%>만원', <%=mAmount[11-i]%>],
        <%}%>
      ]);

      var options = {
        title : '최근 1년간 월별 판매금액 변화',
        animation: { //차트가 뿌려질때 실행될 애니메이션 효과
            startup: true,
            duration: 1000,
            easing: 'inAndOut' },
        seriesType: 'line',
        'width':1000,
        'height':750,
        chartArea:{left:'15%',width:'50%',height:'75%'}};

      var chart = new google.visualization.ComboChart(document.getElementById('montly_chart2'));
      chart.draw(data, options);
    }
    
</script>
