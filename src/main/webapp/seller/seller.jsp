<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sellerId = "minsu1234";
	String sellerName = "김민수";
	int nowSellCount = 123; 
	int unProcessedCount = 67;
	int recentlySell = 2000000;
	int unCalculated = 3000000;
	int unProcessedClaimCount = 15;
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 마이페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/Animalls/css/footer.css" />

<style>
.seller-block {
	height: 200px;
}

</style>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	
	<div class="container my-5">
		<strong>판매자 페이지</strong>
		<hr />
		<div class="border my-3 d-flex"></div>
			<span class="border-right border-secondary m-2 p-2">
				<img width="64" alt="${pageContext.request.contextPath}/assets/shop-blocks/6.png" alt="seller-image"/>
			</span>
			<div class="m-2 p-2">
				<p><a href=""><img width="10" alt="${pageContext.request.contextPath}/assets/bronze-medal.png" alt="seller-image"/></a><a href=""><strong class="text-primary">
				<%= sellerName %></strong></a> 판매자님 안녕하세요.</p>
				<p>판매중인 상품 <a href="">[ <%= nowSellCount %> ]</a> 개</p>
				<p>미처리된 상품 <a href="">[ <%= unProcessedCount%> ]</a> 개</p>
				<p>미처리된 클레임 <a href="">[ <%= unProcessedClaimCount%> ]</a> 개</p>
				<p>정산예정 금액 <a href="">[ <%= unCalculated%> ]</a> 원</p>
			</div>
	</div>
	
	<div class="container">
		나의 판매현황
	</div>
	<br />
	<div class="container">
		<ul>
			
			<li><a href="${pageContext.request.contextPath}/seller/productList.jsp">상품 목록보기</a></li>
			<br />
			<strong class="text-primary"><%= sellerName %></strong>님의 가장 잘팔린 상품 <small>3개월 기준</small>
		</ul>
	</div>
	
	
</body>
</html>