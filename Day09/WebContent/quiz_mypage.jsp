<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	body{
		text-align: center;
	}
	fieldset {
		display: inline-block;
	}
</style>
<head>
<meta charset="UTF-8">
<% 
	Account user = (Account)session.getAttribute("user");
%>
<title></title>
</head>
<body>
	<fieldset>
		<legend><%=user.getNick()%>님의 정보</legend>
		<form action="quiz.jsp" method="POST">
			<p><input name="id" type="text" placeholder="수정할 ID" value="<%=user.getId()%>"/></p>
			<p><input name="pw" type="password" placeholder="수정할 PW" value="<%=user.getPw()%>"/></p>
			<p><input name="nick" type="text" placeholder="수정할 닉네임" value="<%=user.getNick()%>"/></p>
			<button type="submit" onclick="edit()">수정하기</button>
		</form>
	</fieldset>
<script>
	function edit(){
		alert('수정이 완료되었습니다.');
	}
</script>
</body>
</html>
