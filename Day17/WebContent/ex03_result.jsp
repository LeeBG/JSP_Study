<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_result.jsp	</title>
</head>
<body>
	<h1>결과</h1>
	<hr/>
	
	<c:remove var = "shin" scope="application"/>
	<%-- 이름이 겹치치 않으면 딱히 스코프를 작성할 필요가 없음 --%>
	
	<ul>
		<li>hong = ${hong }</li>
		<li>kim = ${kim }</li>
		<li>Lee = ${lee }</li>
		<li>Park = ${park }</li>
		<li>Shin = ${shin }</li>
		<li>user = ${empty user }</li> <%-- 빈 값은 attribute가 없다고 취급되고 --%>
		<li>login = ${empty login }</li> <%--null은 글자 그대로 들어간다. --%>
		<li>login = ${login }</li>
	</ul>
</body>
</html>