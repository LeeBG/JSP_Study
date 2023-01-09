<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<h1>입력 form</h1>
	<hr/>
	
	<form action="ex05_result.jsp">
		<%-- type : 입력 폼의 타입을 지정, text가 기본값 --%>
		<%-- placeholder : 폼에 내용이 없을 때 무엇을 입력할지 출력하는 구문 --%>
		<p><input name="name" type="text" placeholder="이름 입력"></p>
		<p><input name="age" type="number" placeholder="나이 입력"></p>
		<button type="submit">전송</button>
	</form>
</body>
</html>