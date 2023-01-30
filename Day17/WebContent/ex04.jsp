<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h1>JSTL core - 제어문</h1>
	<hr/>
	
	<c:if test="true">
		<h3>참입니다~</h3> <%--else는 따로 없다. --%>
	</c:if> <%--test에 true라는 글자가 들어가면 태그 사이의 내용을 실행 --%>

	<c:if test="10 > 5">
		<h3>여기는 참입니까??</h3>
	</c:if> <%--true외 다른 글자가 들어가면 모두 거짓으로 취급한다. --%>
	
	<c:if test="${10 > 5 }">	<%-- 비교 후 treu/false를 얻으려면 EL태그를 사용하기 --%>
		<h3>10은 5보다 큽니다.</h3>
	</c:if>
	
</body>
</html>