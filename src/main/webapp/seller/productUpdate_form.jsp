<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int product_id=Integer.parseInt(request.getParameter("product_id"));
	ProductDto dto=ProductDao.getInstance().getData(product_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpdate.jsp</title>
</head>
<body>
	<div class="container">
		<form action="${pageContext.request.contextPath}/seller/productUpdate.jsp" method="post">
			<div>
				<label for="product_id">상품번호</label>
				<input type="text" id="product_id" name="product_id" value="<%=dto.getProduct_id()%>" readonly/>
				<br />
			</div>
			<div>
				<label for="thumbnail">이미지</label>
				<br />
			</div>
			<div>
				<label for="title">상품명 : </label> 
				<input type="text" id="title" name="title" value="<%=dto.getTitle()%>"/>
				<br />
			</div>
			<div>
				<label for="category">카테고리 : </label>  
					<select id="category" name="category" value="<%=dto.getCategory()%>">
						<option value="food">음식</option>
						<option value="clothes">옷</option>
						<option value="bath">목욕용품</option>
					</select>
				<br />
			</div>
			<div>
				<label for="org_price">판매가 : </label> 
				<input type="text" id="org_price" name="org_price" value="<%=dto.getOrg_price()%>"/>
				<br />
			</div>
			<div>
				<label for="sale_price">할인가격 : </label> 
				<input type="text" id="sale_price" name="sale_price" value="<%=dto.getSale_price()%>"/>
				<br />
			</div>
			<div>
				<label for="sales_state">상품상태 : </label>
					<select id="sales_state" name="sales_state" value="<%=dto.getSales_state()%>">
						<option value="on_sale">판매중</option>
						<option value="sold_out">품절</option>
						<option value="sales_end">판매종료</option>
					</select>
				<br />
				<br />
			</div>
			<div>
				<label for="description">비고 : </label> 
				<textarea id="description" name="description" value="<%=dto.getDescription()%>" cols="20" rows="5" 
				 style="resize: none; vertical-align:middle;"/></textarea>
				<button type="submit" style="vertical-align:bottom">수정하기</button>
				<button type="reset" style="vertical-align:bottom">취소</button>
			</div>
		</form>
	</div>
</body>
</html>