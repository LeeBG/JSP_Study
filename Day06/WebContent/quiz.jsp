<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
<style>
	body {
		text-align: center;
		margin: 0 auto;
	}
	fieldset {
		display: inline-block;
		margin: 20px;
	}
	button{
		position: relative;
		border-radius: 20px;
		border: 1px solid gray;
		width: 150px;
		height: 50px;
		font-size: 30px;
		background-color: skyblue;
	}
	
</style>
</head>
<body>
	<h1>로그인 프로세스 - Beans</h1>
	<hr/>
	
	<%--
		quiz.jsp 		로그인 폼을 작성 POST방식으로
						ID와 Pw, 전송 버튼이 필요
						작성결과는 quiz_result.jsp로 전달
					
		quiz_result.jsp 계정을 3개 정도 생성해 둔다. Java Beans 객체로 만들 것
						전달된 파라미터를 받아서 ID,PW가 
						일치하면 닉네임을 출력
						다르면 로그인 실패를 출력
						
		Account.java	java beans 클래스
						필드는 id,pw,nick을 가진다.
	 --%>
	 
	 <fieldset>
	 	<legend>로그인</legend>
	 	<form action="quiz_result.jsp" method="POST">
	 		<p><input name="id" placeholder="아이디를 입력하세요" required type="text"></p>
		 	<p><input name="pw" placeholder="패스워드를 입력하세요" required type="password"></p>
			<p><button>전송</button></p>
	 	</form>
	 </fieldset>
	 
</body>
</html>