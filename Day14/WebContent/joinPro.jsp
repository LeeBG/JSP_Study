<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinPro.jsp</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="input" class="model.dto.AccountDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		int row = dao.insert(input);
		String msg = "회원가입 실패";
		if (row != 0){
			msg = "회원가입 성공";
		}
	%>
	<script type="text/javascript">
		alert('<%=msg %>');
		location.href = 'show.jsp';
	</script>
	<ul>
		<li><%=input.getUserid() %></li>
		<li><%=input.getUserpw() %></li>
		<li><%=input.getNick() %></li>
		<li><%=input.getName() %></li>
		<li><%=input.getEmail() %></li>
	</ul>
	
</body>
</html>