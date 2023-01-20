<%@page import="beans.PersonDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jps</title>
<style>
	div {
		text-align: center	;
	}
	
	
	table {
		display: inline-block;
		border-collapse: collapse;
	}
	th, td{
		border: solid 1px black;
		padding: 20px 30px;
	}
</style>
</head>
<body>
	<h1>DAO : Database Access Object</h1>
	<hr/>
	
	<h4>DAO는 DB접근을 객체로 구현한 것. 재사용성이 증가</h4>
	<%
		PersonDAO dao = new PersonDAO();
		String ver = dao.test();
		
		ArrayList<PersonDto> list = dao.selectAll();
	%>
	
	<p><h4><%=ver %></h4></p>
	<div>
		<h2>  테이블 </h2>
		<table>
			<tr>
				<th>이름</th>
				<th>키</th>
				<th>생년월일</th>
			</tr>
			
			<%for(PersonDto row : list) { %>
			<tr>
				<td><%=row.getName()%></td>
				<td><%=row.getHeight()%></td>
				<td><%=row.getBirth()%></td>
			</tr>	
			<%}%>
		</table>
	</div>
</body>
</html>