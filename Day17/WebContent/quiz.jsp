<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
<style type="text/css">

	body {
		text-align: center;
	}
	
	
	table {
		border-collapse:  collapse;
		display: inline-block;
	}
	
	th,td {
		border: 1px solid black;
		padding: 10px 15px;
	}
</style>
</head>
<body>
	<h1>Quiz</h1>
	<hr>
	
	<p>현재 페이지에서 구구단을 입력 받아서 현재 페이지에 출력 </p>
	
	<form method="POST">
		<input name="dan" type="number" placeholder="몇 단을 출력하시겠습니까???">
		<button>구구단 출력</button>
	</form>
	<hr/>
	
	<c:if test="${not empty param.dan }">
		<table>
			<tr>
				<th>식</th>
				<th>결과</th>
			</tr>
			<c:forEach var="i" begin="1" end="9">
				<tr>
					<td>${param.dan } x ${i }</td>
					<td>${param.dan * i }</td>
				<tr>
			</c:forEach>
		</table>
	</c:if>
	
</body>
</html>