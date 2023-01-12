<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>포워드(forward)</h1>
	<hr/>
	
	<%--
		서버에서 페이지를 전환하는 대표적인 기법은
		1. redirect	: 클라이언트에게 이동할 페이지를 알려주고 클라이언트가 해당 페이지로 재요청을 보냄
		2. forward	: 클라이언트에게 이동할 페이지를 알려주지 않고, 서버 내부에서 응답할 페이지가 전환된다.
		
		차이)
		1. forward는 외부 사이트로는 불가능하다.
		2. forward는 request가 유지된 채로 페이지가 전환된다.
		
		forward는 주로 요청하는 페이지와 응답하는 페이지가 별도로 관리되어야 하는 경우에 사용
		ex) MVC2, Spring MVC 등
		
		※ 우리 JSP 수업에서는 크게 사용할 일이 없다.
		※ Spring에서 굉장히 빈번하게 사용된다.
		 
	 --%>
	 
	 <%
	 	// 요청하는 주소와 응답하는 주소가 달라진다.
	 	RequestDispatcher rd = request.getRequestDispatcher("ex02.jsp");
	 	rd.forward(request, response);
	 %>
</body>
</html>