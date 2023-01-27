<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 진행중</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="input" class="model.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		int row = dao.join(input);
		String msg = "회원가입 실패";
		if(row != 0){
			msg = "회원가입 성공";
		}
	%>
	
	<script>
		alert('<%=msg%>');
		location.href='show.jsp';
	</script>
	
</body>
</html>