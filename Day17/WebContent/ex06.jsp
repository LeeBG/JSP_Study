<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>
	<h1>JSTL core - 조건문 3</h1>
	<hr/>
	
	<form>
		<p><input name="name" type="text" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		<button>전송</button>
	</form>
	
	<br/><hr/>
	
	<h3>결과</h3>
	
	<c:if test="${not empty param.age }">
		<p>${param.name }님은 ${param.age }세 입니다.</p>
		
		<c:choose>
			<c:when test="${param.age >= 20 }">
				<p>성인입니다.</p>
			</c:when>	
			<c:when test="${param.age >= 17}">
				<p>고등학생입니다.</p>
			</c:when>
			<c:when test="${param.age >= 14}">
				<p>중학생입니다.</p>
			</c:when>
			<c:otherwise>
				<p>초등학생 이하 입니다.</p>
			</c:otherwise>
		</c:choose>
	</c:if>
</body>
</html>