<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join.jsp</title>
<style>
	body {
		text-align: center;
	}
	
	fieldset {
		display: inline-block;
	}
	
	table{
		border-collapse: collapse;
	}
	
	th, td{
		border : 1px solid black;
		padding : 10px 15px;
	}
	
</style>
</head>
<body>
	<%
		AccountDAO dao = new AccountDAO();
	%>
	
	<h1>회원가입</h1>
	<hr/>
	<fieldset>
		<legend>회원가입 입력창</legend>
		<form action="joinPro.jsp" method="POST">
		<table>
			<tr>
				<th>아이디</th>
				<td><input name="userid" type="text" placeholder="id입력" required></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" placeholder="pw입력" required></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input name="email" type="email" placeholder="email 입력" required></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input name="nick" type="text" placeholder="닉네임 입력" required></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input name="name" type="text" placeholder="이름 입력" required></td>
			</tr>
		</table>
		<p><button>회원가입</button></p>
		<p>
			<a href="login.jsp"><button type="button">로그인</button></a>
			<a href="show.jsp"><button type="button">메인</button></a>
		</p>
		</form>
	</fieldset>
	
</body>
</html>