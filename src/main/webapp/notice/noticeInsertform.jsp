<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="notice" name="current"/>
	</jsp:include>
	
	<div class="container my-4">
		<h1>공지사항</h1>
		<hr/>
		
		<h3>공지사항 작성</h3>
		<form action="noticeInsert.jsp" method="post">
			<div class="mb-2">
				<label class="form-label" for="title">제목</label>
				<input class="form-control" type="text" name="title" id="title"/>
			</div>
			<div class="mb-2">
				<label class="form-label" for="content">내용</label>
				<textarea class="form-control" name="content" id="content"  rows="10"></textarea>
			</div>
			<div class="d-flex justify-content-end">
				<button onclick="submitContents(this)" class="btn btn-success" type="submit">저장</button>
			</div>
			
		</form>
	</div>

	<jsp:include page="/include/components/smarteditor.jsp">
		<jsp:param value="content" name="placeholder"/>
	</jsp:include>
	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="notice" name="current"/>
	</jsp:include>
</body>
</html>