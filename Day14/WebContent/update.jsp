<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="input" class="model.AccountDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		
		System.out.println(input.getIdx());
		System.out.println(input.getEmail());
		System.out.println(input.getUserpw());
		
		int row = dao.update(input);
		
		String msg = "회원정보 실패";
		
		if(row != 0){
			msg = "회원정보 수정 완료";
		}
	%>
	<script>
		alert('<%=msg%>');
		//location.href='show.jsp';
	</script>
	
	
</body>
</html>