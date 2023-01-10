<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과창</title>
<style>
	body{
		margin: auto;
		text-align: center;
	}
	p {
		font-size: 100px;
	}
</style>
</head>
<body>
	
	<h1>로그인 결과</h1>
	<hr/>
	
	<%!
		private final String ID = "root";
		private final String PW = "qwe@123"; 
	%>
	
	<%
		String req_id = request.getParameter("id");
		String req_pw = request.getParameter("pw");
		
		if(ID.equals(req_id)&&PW.equals(req_pw)){
			out.println("<p><h1 style=\"color: blue\">로그인 성공!!!</h1></p>");
		}
		else{
			out.println("<p><h1 style=\"color: red\">로그인 실패!!!</h1></p>");
		}
	%>
	
</body>
</html>