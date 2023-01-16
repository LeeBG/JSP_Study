<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_login.jsp</title>

<style>
	body{
		text-align: center;
	}
	button {
		width: 150px;
		height: 50px;
		border: 1px solid gray;
		border-radius: 20px;
		background-color: skyblue;
		font-size: 20px;
	}

</style>
</head>
<body>
	<%! 
		Account[] db = new Account[]{
				new Account("itbank","it","아뱅","itbank@naver.com","홍길동"),
				new Account("root","123","관리자","root@gmail.com","김진호"),
				new Account("user1","1","유저1","user1@kakao.com","박찬호")
		};
	
		public Account login(Account user){
			for(Account acc : db){
				if(acc.equals(user)){
					return acc;
				}
			}
			return null;
		}
	%>
	
	<jsp:useBean id="user" class="beans.Account"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		user = login(user);
	
		System.out.println(user);
		String msg = "로그인 실패";
		if(user != null){
			msg = user.getNick() + "님 로그인";
			session.setAttribute("user", user);
			// user객체를 user라는 이름으로 attribute에 저장
		}
	%>
	<h1>로그인 결과</h1>
	<hr/>
	
	<h3><%=msg %></h3>
	<a href="ex02.jsp">
		<button>로그인으로</button>
	</a>
</body>
</html>