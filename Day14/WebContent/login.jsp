<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	body{
		text-align: center;
	}
	
	fieldset {
		display: inline-block;	
	}
</style>
</head>
<body>
	<h1>로그인</h1>
	<hr/>
	
	<fieldset>
		<legend>로그인</legend>
		<form action="loginPro.jsp" method="POST">
			<p><input name="userId" type="text" placeholder="id입력" required></p>
			<p><input name="userPw" type="password" placeholder="pw입력" required></p>
			<button>로그인</button>
		</form>
	</fieldset>
</body>
</html>