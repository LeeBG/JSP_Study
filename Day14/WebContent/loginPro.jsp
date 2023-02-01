<%@page import="model.dto.AccountDTO"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPro.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="input" class="model.dto.AccountDTO"/>;
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		AccountDTO user = dao.selectOne2(input);
		String msg = "로그인 실패!!";
		
		if(user != null){
			session.setAttribute("user", user);
			msg = user.getNick() + "님 로그인 성공!!";
		}
	%>
<script>
	alert('<%=msg %>');
	location.href = 'show.jsp';
</script>
</body>
</html>