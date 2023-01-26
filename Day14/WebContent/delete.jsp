<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>
</head>
<body>
	<jsp:useBean id="input" class="model.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	<%
		AccountDAO dao = new AccountDAO();
		int row = dao.delete(input.getIdx());
	%>
</body>
</html>