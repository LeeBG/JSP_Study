<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz_login.jsp</title>
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
	<%!
		
		Account[] accs = new Account[]{
			new Account("itbank","it","아뱅"),
			new Account("root","qwe@123","관리자"),
			new Account("user1","1","유저1")
		};
	
		public Account login(Account user){
			for(Account acc : accs){
				if(acc.equals(user)){
					return acc;
				}
			}
			return null;
		}
	%>
	<%request.setCharacterEncoding("utf-8");%>
	<jsp:useBean id="user" class="beans.Account"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
		String msg = "로그인 실패";
		String store = request.getParameter("store");
	
		user = login(user);
		
		if(user != null){
			session.setAttribute("user", user);
			msg = user.getNick()+"님 로그인 성공";
			
			Cookie[] cookies = new Cookie[]{
					new Cookie("id",user.getId()),
					new Cookie("pw",user.getPw()),
					new Cookie("store",store)
			};
			
			for(int i=0;i<cookies.length;i++){
				cookies[i].setMaxAge(0);
				if("yes".equals(store)){
					cookies[i].setMaxAge(60*60*24*7);
				}
				response.addCookie(cookies[i]);
			}
		}
	%>
	<h1>로그인 결과</h1>
	<hr/>
	
	<h3><%=msg %></h3>
	<a href="quiz.jsp">
		<button>login</button>
	</a>
</body>
</html>