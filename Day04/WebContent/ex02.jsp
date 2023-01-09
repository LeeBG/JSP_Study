<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>지시자</h1>
	<hr/><!-- out.write로 자바파일로 쓰여지고있는 중이다.(Jasper라는 녀석이 만들어줌) -->
	<%-- 외부 라이브러리를 가져온다.--%>
	<%@page import="java.util.Date"%>
	<%@page import="java.text.SimpleDateFormat"%>
	
	<%
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh시 mm분 ss초 (E요일)");
		
		String fdate = sdf.format(date);
	%>
	<h3>현재 시간 : <%=date %></h3>
	<h3>현재 시간 : <%=fdate %></h3>
</body>
</html>