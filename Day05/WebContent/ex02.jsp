<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>

<style>
	ol > li { margin: 20px 0; }
	
	fieldset { display: inline-block; }

</style>
</head>
<body>
	<h1>요청 메서드</h1>
	<hr/>
	
	<details>
		<summary>요청 메서드 종류</summary>
	
		<ol>
			<li>GET : 파라미터를 주소창에 담아서 전송
				
				<ul>
					<li>속도가 빠르다</li>
					<li>전송 크기에 제한이 있다</li>
					<li>인/디코딩이 자동으로 수행된다</li>
					<li>주소창에 전송되므로 파라미터가 쉽게 노출된다</li>
				</ul>
			</li>
			<li>POST : 파라미터를 HTTP header라는 부분에 담아서 전송
				
				<ul>
					<li>GET보단 조금 느리다</li>
					<li>전송 크기에 제한이 없다</li>
					<li>인/디코딩 방식을 직접 지정해야 한다</li>
					<li>주소창에 데이터가 노출되지 않는다</li>
				</ul>
			</li>
		</ol>
	</details>
	<br>


	<fieldset>
		<legend>GET</legend>
		
		<%-- GET은 기본값이므로 생략 가능. 대소문자 구분 없음 --%>
		<form action="ex02_result.jsp" method="GET">
			<p><input name="name" type="text" placeholder="이름 입력" required></p>
			<p><input name="age" type="number" placeholder="나이 입력" required></p>
			<p><input name="email" type="email" placeholder="이메일 입력" required></p>
			
			<button>전송</button>
		</form>
	</fieldset>


	<fieldset>
		<legend>POST</legend>
		
		<form action="ex02_result.jsp" method="POST">
			<p><input name="name" type="text" placeholder="이름 입력" required></p>
			<p><input name="age" type="number" placeholder="나이 입력" required></p>
			<p><input name="email" type="email" placeholder="이메일 입력" required></p>
			
			<button>전송</button>
		</form>
	</fieldset>

</body>
</html>