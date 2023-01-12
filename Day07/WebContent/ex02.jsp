<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>리다이렉트</h1>
	<hr/>
	<h3>
		리다이렉트는 외/내부 사이트 모두 이동 가능하다.
	</h3>
	
	<form action="ex02_result.jsp">
		<select name=site>
			<option value="https://www.naver.com/">네이버</option>
			<option value="https://www.google.com/">구글</option>
			<option value="https://www.youtube.com/">유튜브</option>
			<option value="ex01.jsp">ex01.jsp</option>
		</select>
		
		<button>전송</button>
	</form>
</body>
</html>