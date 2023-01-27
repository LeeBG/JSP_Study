<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	

	<% 
		int idx= Integer.parseInt(request.getParameter("idx"));
		AccountDAO dao = new AccountDAO();
	   	int row = dao.delete(idx);
	   	
	   	String msg = "탈퇴 실패!!";
	   	
	   	if(row != 0){
	   		msg = "탈퇴 성공";
	   	}
	%>
<script>
	alert('<%=msg %>');
	location.href = 'show.jsp';
</script>
</body>
</html>