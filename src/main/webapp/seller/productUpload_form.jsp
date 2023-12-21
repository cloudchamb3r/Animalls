<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpdate_form.jsp</title>
</head>
<body>
	<div class="container">
		<h3>판매자 상품수정</h3>
		<form action="${pageContext.request.contextPath}/seller/update.jsp" method="post">
			<div>
				<label for="thumbnail">이미지</label>
				<br />
			</div>
			<div>
				<label for="title">상품명 : </label> 
				<input type="text" id="title" name="title"/>
				<br />
			</div>
			<div>
				<label for="category">카테고리 : </label>  
					<select id="category" name="category">
						<option value="food">음식</option>
						<option value="clothes">옷</option>
						<option value="bath">목욕용품</option>
					</select>
				<br />
			</div>
			<div>
				<label for="org_price">판매가 : </label> 
				<input type="text" id="org_price" name="org_price"/>
				<br />
			</div>
			<div>
				<label for="sale_price">할인가격 : </label> 
				<input type="text" id="sale_price" name="sale_price"/>
				<br />
			</div>
			<div>
				<label for="sales_state">상품상태 : </label>
					<select id="sales_state" name="sales_state">
						<option value="on_sale">판매중</option>
						<option value="sold_out">품절</option>
						<option value="sales_end">판매종료</option>
					</select>
				<br />
				<br />
			</div>
			<div>
				<label for="description">비고 : </label> 
				<textarea id="description" name="description" cols="20" rows="5" 
				 style="resize: none; vertical-align:middle;"/></textarea>
				<button type="submit" style="vertical-align:bottom">등록</button>
			</div>
		</form>
	</div>
</body>
</html>