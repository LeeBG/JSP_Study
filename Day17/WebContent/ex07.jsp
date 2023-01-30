<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07.jsp</title>
</head>
<body>
	<h1>JSTL core - 반복문</h1>
	<hr/>
	
	<%-- step은 생략하면 default는 1이다. --%>
	<c:forEach var="i" begin="1" end="5" step="1" >
		<!-- <p><%=pageContext.getAttribute("i")%> : Hello JSP</p> -->
		<p>${i } : Hello JSP</p>
	</c:forEach>
	
	<hr/>
	
	<c:forEach var = "i" begin="1" end="5">
		<p>${6- i } : Hello JSP</p>
	</c:forEach>
	
</body>
</html>