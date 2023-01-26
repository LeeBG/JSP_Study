<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
	<% 
		AccountDAO dao = new AccountDAO();
		String ver = dao.test();
	%>
	<h1>DBCP</h1>
	<hr/>
	
	<h4>DataBase Connection Pooling</h4>
	
	<ul>
		<li>기존 JDBC는 JAVA로 DB에 접근 및 제어하기 위한 라이브러리</li>
		<li>이때, 커넥션 생성 -> SQL 실행 -> 커넥션 제거 과정을 거치는 데</li>
		<li>매번 커넥션 생성/제거를 하게 되면 효율이 떨어진다.</li>
		<li>이를 효율적으로 사용하기 위해서 고안되는 라이브러리가 DBCP</li>
		<li>DBCP는 서버 실행시 Pool이라는 공간에ㅔ 미리 커넥션을 일정량 미리 생성해두고</li>
		<li>커넥션이 필요하면 Pool에서 꺼내 쓰고 다 쓰면 반납하는 방식을 취한다.</li>
	</ul>
	
	<h4>테스트 : <%=ver %></h4>
</body>
</html>