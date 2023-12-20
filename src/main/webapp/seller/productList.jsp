<%@page import="java.util.List"%>
<%@page import="dao.UserDao"%>
<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<UserDto> list=UserDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productList.jsp</title>
</head>
<body>

	<div class="container">
		<h1>판매자 상품 리스트</h1>
		<a href="productUpload_form.jsp">상품 추가</a>
		<table>
			<thead>
				<tr>
					<th>상품번호</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>카테고리</th>
					<th>판매가</th>
					<th>할인가격</th>
					<th>상품상태</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			<%for(UserDto tmp:list){ %>
				<tr>
					<td><%=tmp.getProduct_id() %></td>
					<td><%=tmp.getThumbnail() %></td>
					<td><%=tmp.getTitle() %></td>
					<td><%=tmp.getCategory() %></td>
					<td><%=tmp.getOrg_price() %></td>
					<td><%=tmp.getSale_price() %></td>
					<td><%=tmp.getSales_state() %></td>
					<td><%=tmp.getDescription() %></td>
				</tr>
			<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>