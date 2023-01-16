<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
	Account user = (Account)session.getAttribute("user");
	if (user == null){
		response.sendRedirect("ex02.jsp");
		return;
	}		
%>
<title>회원정보</title>
<style>
	body{
		text-align: center;
	}

	fieldset {
		display: inline-block;
		border-radius: 20px;
	}
	
	p {
		margin: 10px 5%;
		text-align: left;
	}
	
	p > input{
		width : 100%;
		height: 25px;
		font-size: 20px;
	}
	
	button {
		width: 100px;
		height: 30px;
		border: 1px solid gray;
		border-radius: 20px;
		background-color: skyblue;
		font-size: 20px;
	}
	
</style>
</head>
<body>

	<h3>내 정보</h3>
	<hr/>

	<fieldset>
		<legend><%=user.getNick() %>님 정보</legend>
		<%--내 정보 수정은 지금은 구현할 수 없다. --%>
		
		<form action="ex02_edit.jsp" method="POST">
			<p>id 	 : <input name="id" value="<%=user.getId() %>" required></p>
			<p>pw 	 : <input name="pw" type="password"  value="<%=user.getPw() %>" required></p>
			<p>name  : <input name="name" value="<%=user.getName()%>"></p>
			<p>nick  : <input name="nick" value="<%=user.getNick()%>"></p>
			<p>email : <input name="email" type="email" value="<%=user.getEmail()%>"></p>	
			
			<button type="button" disabled>수정하기</button>
		
			<a href="ex02.jsp">
				<button type="button">ex02</button>
			</a>	
		</form>
		
		<table>
			<tr>
				<th>ID</th>
				<td><%=user.getId()%>
			</tr>
			<tr>
				<th>PW</th>
				<td><%=user.getPw()%>
			</tr>
			<tr>
				<th>Name</th>
				<td><%=user.getName()%>
			</tr>
			<tr>
				<th>Nick</th>
				<td><%=user.getNick()%>
			</tr>
			<tr>
				<th>Email</th>
				<td><%=user.getEmail()%>
			</tr>	
			
		</table>
	</fieldset>
	
</body>
</html>