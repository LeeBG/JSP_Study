<%@page import="beans.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%-- 태그에서 Bean의 생성자를 불어오는 태그 --%>
	<jsp:useBean id="per" class="beans.Person"/>
	<%-- = <% Person per2 = new Person(); --%>
	
	<%-- per의 매개변수 넘어오는 것 다 넣어!! --%>
	<jsp:setProperty property="*" name="per"/>
	<%-- setProperty는 setter를 사용해서 인스턴스에 파라미터로 전송된 값을 채운다.--%>
	<%-- *는 파라미터명과 필드명이 동일하면 1:1로 모두 채워주는 효과가 있다. --%>
	<h1>결과</h1>
	<hr/>
	
	<ul>
		<li>이름 : <%=per.getName() %></li>
		<li>이름 : <jsp:getProperty property="name" name="per"/></li>
		<li>나이 : <%=per.getAge() %></li>
		<li>신장 : <%=per.getHeight() %></li>
		<li>이메일 : <%=per.getEmail() %></li>
		<li>주소 : <%=per.getAddress() %></li>
	</ul>
	
	<a href="ex01.jsp">
		<button>돌아가기</button>
	</a>
	
</body>
</html>