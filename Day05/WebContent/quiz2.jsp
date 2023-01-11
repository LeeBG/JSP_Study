<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
<style>
	body{
		margin: auto;
		text-align: center;
	}

	fieldset {
		display: inline-block;
		border-radius: 20px;
	}
	
	button{
		position: relative;
		border-radius: 12px;
		border: 1px solid gray;
		width: 180px;
		height: 50px;
		font-size: 30px;
		background-color: skyblue;
	}
	
</style>
</head>
<body>
	<h1>로그인 프로세스2</h1>
	<hr>
	
	<%--
		quiz2.jsp 	로그인 폼을 작성한다(ID,PW, 전송버튼)
					요청 메서드는 POST로 지정(ID,PW가 주소창에 노출되면 곤란)
					
		quiz2_result.jsp 
					선언문에 문자열로 id, pw를 3개 정도 작성해 둔다.
					quiz2.jsp에서 보낸 파라미터를 받아서 
					작성해둔 id, pw를 비교해서
					이 중 하나와  일치하면 로그인 성공을 화면에 출력
					하나라도 다르면 로그인 실패를 화면에 출력
					
		q
	 --%>
	 
	 <fieldset >
	 	<legend>로그인</legend>
	 	<form action="quiz2_result.jsp">
	 		<p>ID : <input name=id type="text" placeholder="ID를 입력하세요" required="required"></p>
	 		<p>PW : <input name=pw type="password" placeholder="PW를 입력하세요" required="required"></p>
	 		<button>로그인</button>
	 	</form>
	 	<br/>
	 </fieldset>
</body>
</html>