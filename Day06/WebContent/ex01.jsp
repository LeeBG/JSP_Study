<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>
	fieldset {
		text-align: center;
		display: inline-block;
	}
	
</style>
</head>
<body>
	<h1>Java Beans</h1>
	<hr/>
	
	<ul>
		<li>데이터를 주고 받기 위해서 고안된 클래스</li>
		<li>웹에서는 파라미터를 받거나, DB와 데이터를 주고 받기 위해서 자주 사용</li>
		<li>작성 규칙있기 때문에 꼭 지켜준다.</li>
	</ul>
	
	<fieldset>
		<legend>정보 입력</legend>
		<form action="ex01_result.jsp" method="get">
			<p><input name="name" type="text" placeholder="이름 입력" required autofocus></p>
			<p><input name="age2" type="number" placeholder="나이 입력" required ></p>
			<p><input name="height" type="number" step="0.1" placeholder="키 입력" required ></p>
			<p><input name="email" type="email" placeholder="이메일 입력" required ></p>
			<p><input name="address" type="text" placeholder="주소 입력" required ></p>
			<p><button>전송</button>
		</form>
		
	</fieldset>
	
	
</body>
</html>