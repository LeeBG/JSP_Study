<%@page import="model.AccountDAO"%>
<%@page import="model.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPro.jsp</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="input" class="model.AccountDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		AccountDTO user = dao.selectOne(input);
		String msg = "로그인 실패!!";
		
		if (user != null){
			session.setAttribute("user", user);
			msg = "로그인 성공!!!";
		}
	%>
	
<script>
	alert('<%=msg %>');
	<%if (user != null) {%>
	location.href = 'show.jsp';
	<%}else {%>
	location.href = 'login.jsp';
	<%}%>
</script>
	
</body>
</html>