<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>응답(Response)</h1>
	<hr/>
	
	<%-- 
		웹서버는 요청과 응답을 처리하는 역할을 한다.
		
		응답은 리다이렉트, 쿠키, 에러 상태코드를 전송할 때 주로 사용
		
		1. 리다이렉트	: 방향 재지정, 현재 페이지에서 요청을 처리할 수 없을 때
						다른 페이지로 이동 시키는 방식
		2. 쿠키			: 웹 서버의 정보를 유지하기 위한 작은 데이터
		3. 에러 상태코드: 요청을 처리할 수 없을 때, 응답으로 에러를 보낼수 있다.
	 --%>
	 
	 <%
	 	// localhost:8080/Day07/ex01.jsp 페이지를 열기위한 요청이 오면 바로 
	 	// 네이버 서버로 재요청을 해서 네이버 페이지를 응답해준다. 
	 	// response.sendRedirect("https://www.naver.com");
	 	// 302는 redirect 상태코드를 받게 된다.	(ex01.jsp에서)
	 	
	 	
	 	// 서버에서의 문제는 500번대 에러페이지
	 	response.sendError(500);
	 %>
	
</body>
</html>