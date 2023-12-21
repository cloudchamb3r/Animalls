<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//어느 페이지에 포함되었는지 정보를 얻어오기
	String currentPage=request.getParameter("current");
	//아이디 값
	String id = (String)session.getAttribute("id");
%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<header class="p-3 border-bottom fixed-top bg-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
	        <i class='fas fa-dog' style="font-size:36px"></i>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 link-body-emphasis">브랜드</a></li>
          <li><a href="productList.jsp" class="nav-link px-2 link-body-emphasis">제품</a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis">커뮤니티</a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis">고객지원</a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis">정기배송</a></li>
          <li><a href="customerReview.jsp" class="nav-link px-2 link-body-emphasis">고객리뷰</a></li>
        </ul>

        <form action="" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control" placeholder="검색어를 입력해주세요" name="">
        </form>
        
		<%if(id != null) {%>
			<div class="dropdown text-end">
	          <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
	            <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
	          </a>
	          <ul class="dropdown-menu text-small">
	            <li><a class="dropdown-item" href="myPage.jsp">My Page</a></li>
	            <li><a class="dropdown-item" href="cart.jsp">Cart</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="#">Sign out</a></li>
	          </ul>
	        </div>
		<%} else {%>
			<div class="dropdown text-end">
	          <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
	            <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
	          </a>
	          <ul class="dropdown-menu text-small">
	            <li><a class="dropdown-item" href="login.jsp">Login</a></li>
	            <li><a class="dropdown-item" href="signUp.jsp">Sign Up</a></li>
	          </ul>
	        </div>
		<%} %>
        
      </div>
    </div>
  </header>