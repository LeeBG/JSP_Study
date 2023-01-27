<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>EL로 Parameter 처리</h1>
	<hr/>
	
	<form>
		<p><input name="name" type="text" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		
		<button>전송</button>
	</form>
	
	<hr/>
	
	<h3>결과</h3>
	
	<fieldset>
		<legend>표현식</legend>
		<ul>
			<li>이름 : <%=request.getParameter("name") %></li>
			<li>나이 : <%=request.getParameter("age") %></li>
			<li>나이 + 3 : <%=Integer.parseInt(request.getParameter("age")) + 3%></li>
		</ul>
	</fieldset>
	
	<fieldset>
		<legend>EL 표현식</legend>
		<ul>
			<li>이름 : ${param.name }</li>
			<li>나이 : ${param.age }</li>
			<li>나이 + 3 : ${param.age + 3}</li>
		</ul>
	</fieldset>
	
</body>
</html>