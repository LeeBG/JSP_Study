<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공!!</title>
</head>
<style>
	body{
		text-align: center;
		justify-content: center;
	}
	h1 {
		color: blue;
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

<body>	
	<h1>로그인 성공!!</h1>
	<hr/>
	
	<%-- <h3><%=request.getParameter("id")%>님 로그인!</h3> --%>
	
	<a href="quiz.jsp">
		<button>돌아가기</button>
	</a>
</body>
</html>