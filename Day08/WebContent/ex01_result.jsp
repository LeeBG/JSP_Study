<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%
		// attribute는 각각 수명을 가지고 있지만
		// 개발자가 원하는 시점에서 제거할 수도 있다.
		application.removeAttribute("p4");
	%>

	<h1>결과</h1>
	<hr/>
	<ul>
		<%-- Object getAttribute(String name) --%> 
		<li>페이지 	: <%=pageContext.getAttribute("p1") %></li>
		<li>리퀘 	: <%=request.getAttribute("p2") %></li>
		<li>세션 	: <%=session.getAttribute("p3")%></li>
		<li>앱		: <%=application.getAttribute("p4") %></li>
	</ul>
	
	<a href="ex01.jsp">
		<button>ex01</button>
	</a>
</body>
</html>