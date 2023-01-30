<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex08.jsp</title>
</head>
<body>
	
	<%
		int[] arr = new int[] {10,20,30,40,70,90};
	
		pageContext.setAttribute("arr", arr);
	%>

	<h1>JSTP core - 반복문 2</h1>
	<hr>
	
	<c:forEach var="n" items="${arr }"> <%--items는 배열,list,Set과 같은 묶음 타입을 지정 --%>
		<p>n = ${n }</p>
	</c:forEach>
	
</body>
</html>