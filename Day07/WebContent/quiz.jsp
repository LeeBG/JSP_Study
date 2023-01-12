<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
<style>
	body{
		text-align: center;	
	}
		
	fieldset {
		display: inline-block;
		border: 1px solid gray;
		border-radius: 12px;
		width: 200px;
	}
	
	button{
		color: #FFFFFF;
		background: skyblue;
		width: 150px;
		height: 50px;
		font-weight: 700;
		font-size: 30px;
		border-radius: 20px;
		border: 1px solid gray;
	}
</style>

</head>
<body>
	<h1>quiz.jsp</h1>
	<hr/>
	
	<%--
		Account.java		id,pw를 가진 빈즈 킄래스
	
		quiz_result.jsp		Account클래스로 ID,PW를 3개 정도 생성한다.
							전달된 ID,PW와 비교해서
							일치하는 정보가 있으면 quiz_success.jsp로 리다이렉트
							일치하는 정보가 없으면 quiz_fils.jsp로 리다이렉트
							
		quiz_success.jsp	로그인 성공을 출력
		quiz_fail.jsp		로그인 실패를 출력
	 --%>
	<fieldset>
		<legend>로그인창</legend>
			<form action="quiz_result.jsp" method="POST">
				<p><input name="id" type="text" placeholder="ID를 입력하세요" required="required"></p>
				<p><input name="pw" type="password" placeholder="PW를 입력하세요" required="required"></p>
				<p><button>로그인</button></p>
			</form>
	</fieldset>
</body>
</html>