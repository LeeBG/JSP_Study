<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<%! int n1 = 10; %>
	
	<% int n2 = 20; %>
	
	<h1>멤버 변수 VS 지역변 수</h1>
	<hr/>
	
	<h4>F5를 눌러서 새로고침 해보세요~</h4>
	
	<ul>
		<li>필드 n1 = <%=n1++ %></li>
		<li>지역 n2 = <%=n2++ %></li>
	</ul>
	
	<hr/>
	<h3>● 결과</h3>
	
	<ul>
		<li>실행부는 페이지가 요청될 때마다 실행되고, 응답이 완료 후 사라진다.</li>
		<li>따라서, 지역변수는 요청시 마다 생성되고 제거된다.</li>
		
		<li>선언부는 서버 실행 후 최초 요청시 한번만 생성되고, 그 후 계속 유지가 된다.</li>
		<li>따라서, 필드는 서버가 재실행되거나 JSP파일을 다시 컴파일 시 초기화된다.</li>	
	</ul>
	
	<p>멤버변수(필드)와 지역변수는 수명이 다르다!!</p>
</body>
</html>