<%@page import="dao.UserDao"%>
<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String title=request.getParameter("title");
	String category=request.getParameter("category");
	String org_price=request.getParameter("org_price");
	String sale_price=request.getParameter("sale_price");
	String sales_state=request.getParameter("sales_state");
	String description=request.getParameter("description");
	
	UserDto dto=new UserDto();
	dto.setTitle(title);
	dto.setCategory(category);
	dto.setOrg_price(org_price);
	dto.setSale_price(sale_price);
	dto.setSales_state(sales_state);
	dto.setDescription(description);
	
	boolean isSuccess=UserDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpload.jsp</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			alert("상품을 성공적으로 등록 했습니다.");
			location.href="${pageContext.request.contextPath}/seller/productList.jsp";
		<%}else{%>
			alert("등록에 실패하였습니다. 다시 등록해주세요.");
			location.href="${pageContext.request.contextPath}/seller/productUpload.jsp";
		<%}%>
	</script>
<!-- 상품을 올리는 페이지입니다 -->
</body>
</html>