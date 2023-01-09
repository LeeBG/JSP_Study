<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
<style>
	form {
		position: relative;
		font-size: 24px;
		left: 50px;
	}
	
	input {
		width: 50px;
		height: 30px;
		text-align: center;
	}
	
	button {
		width: 50px;
		height: 30px;
		background-color: skyblue;
		border: skyblue;
		border-radius: 300;
	}
	
	input {
		padding: 0;
	}
	
</style>
</head>
<body>
	<h1>Quiz2</h1>
	<hr/>
	
	<ul>
		<li>정수 두개를 입력후 action페이지에 전송</li>
		<li>결과 페이지에서는 두 정수의 합계를 출력</li>
	</ul>
	
	<form action="quiz2_result.jsp">
		<input name = "n1" type="number">
		+
		<input name="n2" type="numver">
		=
		<button>전송</button>
	</form>
</body>
</html>