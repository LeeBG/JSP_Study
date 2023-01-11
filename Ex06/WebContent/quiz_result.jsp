<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
<style>
	body{
		text-align: center;
	}
	h3 {
		font-size: 50px;
	}
	button{
		position: relative;
		border-radius: 20px;
		border: 1px solid gray;
		width: 180px;
		height: 50px;
		font-size: 30px;
		background-color: skyblue;
	}
	
</style>
</head>
<body>
	<%!
		Account[] accs = new Account[] {
				new Account("itbank","it","아뱅"),
				new Account("root","123","관리자"),
				new Account("user","1","유저1")
		};
	
	
		public String showMsg(String id, String pw){
			String msg  = "로그인 실패!!!";
			
			for(Account a:accs){
				boolean sameId = a.getId().equals(id);
				boolean samePw = a.getPw().equals(pw);
				if(sameId && samePw){
					 msg = a.getNick()+"님이 로그인 했습니다.";
				}
			}
			return msg;
		}
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String req_id = request.getParameter("id");
		String req_pw = request.getParameter("pw");
		String msg = showMsg(req_id, req_pw);
	%>
	
	<jsp:useBean id="acc" class="beans.Account"></jsp:useBean>
	<jsp:setProperty property="*" name="acc"/>

	<h1>로그인 결과</h1>
	<hr/>
	
	<h3><%=msg %></h3>
	<a href="quiz.jsp">
		<button>돌아가기</button>
	</a>
</body>
</html>