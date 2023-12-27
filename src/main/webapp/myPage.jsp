<%@page import="util.URLConverter"%>
<%@page import="java.io.UnsupportedEncodingException"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String userId = "gildong123";
	String username = "홍길동";
	String userRank = "브론즈";
	String nextRank = "실버";
	int rankUpPrice = 360000;
	int recentlyUsedPrice = 100;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Animalls/css/footer.css" />

<style>
.shop-block {
	height: 320px;
}
.bcl div:nth-child(11){
	opacity:0;
}
.bcl div:nth-child(12){
	opacity:0;
}
@media (max-width:768px) {
  .mq-100 {
    width:100%;
  }


</style>
</head>

<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="myPage" name="current"/>
	</jsp:include>
	
	<div class="container my-5">
		<strong>마이 쇼핑</strong>
		<hr />
		<div class="border my-3 d-flex">
			<span class="border-right border-secondary m-2 p-2">
				<img width="64" src="${pageContext.request.contextPath}/assets/bronze-medal.png" alt="medal-image" />
			</span>
			<div class="m-2 p-2">
				<p>
					저희 쇼핑몰을 이용해주셔서 감사합니다. <strong class="text-success"><%= username %></strong> 님은 [<%= userRank %>] 회원이십니다.
				</p>
				<p>
					[<%= nextRank %>] 까지 남은 구매 금액은 <%= rankUpPrice %> 원 입니다. (최근 12 개월 동안 구매 금액 : <%= recentlyUsedPrice %> 원)
				</p>
			</div>				
		</div>
		
		<div class="border my-3 d-flex">
			<div class="p-3 w-full">
				<p class="text-primary">주소를 복사하여 친구를 쇼핑몰에 초대해보세요</p>
				<div class="input-group">
					<input class="form-control" type="text" id="invite-link" readonly/>
					<label for="invite-link" class="btn border">주소복사</label>
				</div>
				<ul >
					<li><sub>친구에게는 가입 즉시 10000원의 적립금이 지급됩니다</sub></li>
					<li><sub>회원님에는 친구 가입 확인후 10000원의 적립금이 지급됩니다</sub></li>
				</ul>					
			</div>
		</div>
		
		<div class="border w-full">
			<div class="bg-light p-2">
				<strong class="text-dark">나의 주문처리 현황</strong>
				<span class="small">(최근 <strong class="text-primary">3</strong>개월 기준)</span>
			</div>
			<div class="d-flex w-full my-2">
				<div class="flex-grow-1 text-center my-auto">
					<div>입금전</div>
					<a href="#" class="text-decoration-none font-weight-bolder">0</a>
				</div>
				<div class="flex-grow-1 text-center my-auto">
					<div>배송 준비중</div>
					<a href="#" class="text-decoration-none font-weight-bolder">0</a>
				</div>
				<div class="flex-grow-1 text-center my-auto">
					<div>배송중</div>
					<a href="#" class="text-decoration-none font-weight-bolder">0</a>
				</div>
				<div class="flex-grow-1 justify-content-center">
					<ul class="my-auto">
						<li class="small">취소 : <a class="text-decoration-none small" href="#">0</a></li>
		배송				<li class="small">교환 : <a class="text-decoration-none small" href="#">0</a></li>
			in progress			<li class="small">반품 : <a class="text-decoration-none small" href="#">0</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="mt-4 mb-4 bcl">
			<div class="d-flex flex-wrap justify-content-between">
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/1.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.1\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>

				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/2.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.2\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/3.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.3\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/4.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.4\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/5.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.5\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
			
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/6.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.6\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>

				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/7.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.7\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/8.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.8\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/9.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.9\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				<jsp:include page="/include/components/shopblock.jsp">
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/10.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.10\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				<jsp:include page="/include/components/shopblock.jsp">
					<jsp:param name="style" value="<%= URLEncoder.encode(\"opacity:0;\", \"UTF-8\") %>" />
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/10.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.10\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
				<jsp:include page="/include/components/shopblock.jsp">
					<jsp:param name="style" value="<%= URLEncoder.encode(\"opacity:0;\", \"UTF-8\") %>" />
				    <jsp:param name="src" value="/Animalls/assets/shop-blocks/10.png"/>
				    <jsp:param name="title" value="<%= URLConverter.encode(\"Title No.10\") %>"/>
				    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"작은 한글 제목\") %>"/>
				    <jsp:param name="description" value="<%= URLConverter.encode(\"고객님 어쩌고 저쩌고 아무튼 감사합니다\") %>"/>
				</jsp:include>
			</div>
		</div> <!-- / mt-4 -->
		
	</div>
	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	
	
	<script>
		document.addEventListener('DOMContentLoaded', () => {
			console.log('content loaded');
			const inviteLink = document.querySelector("#invite-link");
			inviteLink.value = document.location.origin + "${pageContext.request.contextPath}/invite/?recommender=<%= userId %>";
		}); 
	
	</script>
</body>
</html>