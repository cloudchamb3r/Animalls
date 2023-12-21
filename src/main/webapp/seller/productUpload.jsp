<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@page import="dao.UserDao"%>
<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String seller_id=request.getParameter("seller_id");
	String title=request.getParameter("title");
	String category=request.getParameter("category");
	int org_price=Integer.parseInt(request.getParameter("org_price"));
	int sale_price=Integer.parseInt(request.getParameter("sale_price"));
	String sales_state=request.getParameter("sales_state");
	String description=request.getParameter("description");
	
	ProductDto dto=new ProductDto();
	dto.setSeller_id(seller_id);
	dto.setTitle(title);
	dto.setCategory(category);
	dto.setOrg_price(org_price);
	dto.setSale_price(sale_price);
	dto.setSales_state(sales_state);
	dto.setDescription(description);
	
	boolean isSuccess=ProductDao.getInstance().insert(dto);
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpload.jsp</title>
</head>
<body>
	<h1>알림</h1>

		<%if(isSuccess){%>
			<p>
				<strong><%=seller_id %></strong> 님의 판매 상품이 등록되었습니다.
				<a href="ProductList.jsp">판매 목록보기</a>
			</p>
		<%}else{%>
			<p>
				등록에 실패하였습니다. 다시 등록해주세요.
				<a href="productUpload_form.jsp">다시 작성하기</a>
			</p>
		<%}%>
<!-- 상품을 올리는 페이지입니다 -->
</body>
</html>