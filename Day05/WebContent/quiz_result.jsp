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
	.result {
		font-size: 100px;
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
	
	<h1>로그인 결과</h1>
	<hr/>
	
	<%!
		private String ID = "root";
		private String PW = "qwe@123"; 
	%>
	
	<%
	
		request.setCharacterEncoding("utf-8");
		// UTF-8 Encoding
		
		String req_id = request.getParameter("id");
		String req_pw = request.getParameter("pw");
		
		if(ID.equals(req_id)&&PW.equals(req_pw)){
			out.println("<p><h1 class=\"result\" style=\"color: blue\">로그인 성공!!!</h1></p>");
		}
		else{
			out.println("<p><h1 class=\"result\" style=\"color: red\">로그인 실패!!!</h1></p>");
		}
	%>
	
	<a href="quiz.jsp">
		<button>quiz</button>
	</a>
</body>
</html>