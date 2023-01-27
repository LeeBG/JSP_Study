<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>EL</h1>
	<p>Expression Language</p>
	<hr/>
	
	<ul>
		<li>EL은 표현 언어라고 해서 표현식(&lt;%= %>)을 대체하기 위해 고안됨</li>
		
		<li>기존의 표현식은 Attribute 접근이 매우 불편한 구조</li>
		
		<li>EL은 Attribute 접근이 쉬우며</li>
		
		<li>pageContext -> request -> session -> application을 순차적으로 탐색 </li>
		
		<li>다운캐스팅(형변환)을 자동으로 해준다.</li>
		
		<li>jstl과 같이 사용하면 시너지가 매우 좋다.</li>
	</ul>
</body>
</html>