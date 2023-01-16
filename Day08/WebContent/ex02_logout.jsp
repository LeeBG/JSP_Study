<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h1>로그아웃</h1>
	<hr/>
	<%
	   	session.removeAttribute("user");
	   	response.sendRedirect("ex02.jsp");
	%>
	
<script>
	alert('로그아웃 되었습니다.');
	location.href = 'ex02.jsp';
</script>
</body>
</html>