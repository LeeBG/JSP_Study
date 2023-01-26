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
</style>
</head>
<body>
	<h1>회원 가입</h1>
	<hr/>
	<fieldset>
		<legend>회원가입</legend>
		<form action="joinPro.jsp" method="POST">
			<p><input name="userid" type="text" placeholder="ID입력" required></p>
			<p><input name="userpw" type="password" placeholder="PW입력" required></p>
			<p><input name="nick" type="text" placeholder="닉네임 입력" required></p>
			<p><input name="name" type="text" placeholder="이름 입력" required></p>
			<p><input name="email" type="email" placeholder="이메일 입력" required></p>
			<button>가입</button>
		</form>
	</fieldset>
</body>
</html>