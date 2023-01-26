<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<style>
	body{
		text-align: center;
	}
	
	fieldset {
		display: inline-block;
	}
</style>
<body>
	<h1>로그인</h1>
	<hr/>
	
	<fieldset>
		<legend>로그인</legend>
		<form action="loginPro.jsp" method="POST">
			<p><input name="userid" type="text" placeholder="ID입력" required></p>
			<p><input name="userpw" type="password" placeholder="PW입력" required></p>
			<p><button>로그인</button></p>
			<a href="show.jsp"><button type="button">메인</button></a>
			<a href="join.jsp"><button type="button">회원가입</button></a>
		</form>
	</fieldset>
</body>
</html>