<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<h1>JSTL core - 조건문 2</h1>
	<hr/>
	
	<form>
		<p><input name="name" type="text" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		<button>전송</button>
	</form>
	
	<br/>
	<hr/>
	
	<h3>결과</h3>
	
	<c:if test="${not empty param.age }">
		<p>${param.name }님의 나이는 ${param.age }세 입니다.</p>
	</c:if>

	<c:if test="${param.age >= 20 }">
		<p>${param.name }님은 성인입니다.</p>
	</c:if>
	
	<c:if test="${param.age < 20 }">
		<p>${param.name }님은 미성년자 입니다.</p>
	</c:if>
	
</body>
</html>