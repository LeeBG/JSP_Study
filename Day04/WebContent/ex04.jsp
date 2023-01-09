<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.html</title>
</head>
<body>
	<h1>실행부 활용</h1>
	<hr/>
	
	<%
		out.print("<ul>");
		for(int i=1;i<=5;i++){
			out.println("<li>"+i+": Hello JSP!!! </li>");
		}
		out.print("</ul>");
	%>
	
	<hr>
	<h4>실행부는 끊어서 사용 가능</h4>
	<ul>
		<%for(int i=1;i<=5;i++){ %>
			<li><%= i %>: Hello JSP!!!</li>
		<%} %>
	</ul>
</body>
</html>