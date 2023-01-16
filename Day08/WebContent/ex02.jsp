<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
<style>
	body {
		text-align: center;
	}

	fieldset {
		display: inline-block;	
		border-radius: 12px;
	}
	p > input{
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
	
	a {
		text-decoration: none;
	}
	
</style>
</head>
<body>
	<%
		// 로그인 정보를 가져온다.
		Account user = (Account)session.getAttribute("user");
		String nick = "로그인 중 아님";
		String myPage="";
		if (user != null) {
			nick = user.getNick() + "님";
			myPage = "(내정보)";
		}
		
	%>
	<h1>Session을 활용한 로그인 유지</h1>
	<hr/>
	
	<h3>로그인 상태 : <%= nick %>
		<a href="ex02_myPage.jsp"><%=myPage %></a>
	</h3>
	<fieldset>
		<legend>계정</legend>
		<form action="ex02_login.jsp" method="POST">
		<% if(user == null) {%>
			<p><input name="id" type="text" placeholder="ID입력" required="required"></p>
			<p><input name="pw" type="password" placeholder="PW입력" required></p>
			
			<button>로그인</button>
		<%} %>
			<a href="ex02_logout.jsp">
				<button type="button">로그아웃</button>
			</a>
		</form>
	</fieldset>
</body>
</html>