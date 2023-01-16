<%@page import="beans.Account"%>
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
	}
	
</style>
</head>
<body>

	<%--
		quiz.jsp		로그인 폼을 작성 .메서드는 POST
						ID, PW, 자동완성 체크박스
						데이터는 quiz_login,jsp로 전송
						
						만약 쿠키가 있다면 id, pw는 자동으로 채워지게 된다.
						
		Account.java 	ID,PW,Nick을 가지는 자바 빈즈
		
		quiz_login.jsp	Account 클래스로 계정을 3개정도 선언부에 생성해둔다.
						quiz.jsp에서 넘어온 Id,Pw와
						일치하는 데이터가 있으면 로그인 성공을 출력하고
						세션에 로그인 정보를 저장
						일치하는 데이터가 없으면 로그인 실패를 출력
						
						만약, 자동완성을 체크했다면 쿠키로 id,pw를 발금
	 --%>
	 <%
	 	Cookie[] cookies = request.getCookies();
	 	String cookie_id, cookie_pw;
	 	cookie_id = cookie_pw = "";
	 	if (session.getAttribute("user")!=null){
	 		Account user = (Account)session.getAttribute("user");
	 		out.print("<h3>"+user.getNick()+"님 로그인 중</h3>");
	 	}
	 	
	 	if (cookies!=null){
	 		for(Cookie ck : cookies){
		 		switch(ck.getName()){
		 		case "id":
		 			cookie_id = ck.getValue();
		 			break;
		 		case "pw":
		 			cookie_pw=ck.getValue();
		 			break;
		 		}
		 	}
	 	}
	 %>

	 <h1>로그인 - 세션, 쿠키</h1>
	<hr/>
	 <fieldset>
	 	<legend>로그인</legend>
	 	<form action="quiz_login.jsp">
	 		<p><input name="id" type="text" placeholder="ID입력" value="<%=cookie_id%>"></p>
	 		<p><input name="pw" type="password" placeholder="PW입력" value="<%=cookie_pw%>"></p>
	 		<input name="store" type="checkbox" value="yes" checked/>
	 		<button>로그인</button>
	 	</form>	
	 </fieldset>
</body>
</html>