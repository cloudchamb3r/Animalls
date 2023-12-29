<%@page import="util.SessionManager"%>
<%@page import="dto.NoticeItemDto"%>
<%@page import="dao.NoticeItemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	NoticeItemDto dto = new NoticeItemDto();
	dto.setWriterId(SessionManager.getInstance().getMemberId(request));
	dto.setNoticeTitle(request.getParameter("title"));
	dto.setNoticeContent(request.getParameter("content"));
	
	boolean result = NoticeItemDao.getInstance().insert(dto);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if (result) { %>
	<script>
		alert("새로운 공지가 등록되었습니다 ㅇㅅㅇ")
		document.location = "/Animalls/notice/noticeList.jsp";
	</script>
<% }  else { %>
	<script>
		alert("공지 작성 실패 ㅠㅠ")
		document.location = "/Animalls/notice/noticeList.jsp";
	</script>
<%} %>
</body>
</html>