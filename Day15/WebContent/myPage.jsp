<%@page import="model.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
<style>
	body {
		text-align: center;
	}
	
	fieldset, table {
		display : inline-block;
	}
	
	table {
		border-collapse: collapse;
	}
	
	th, td {
		border: 1px solid black;
		padding : 10px 15px;
	}
	
</style>
</head>
<body>
	<%
		AccountDTO user = (AccountDTO)session.getAttribute("user");
		String msg = "내 정보";
		if (user == null){
			response.sendRedirect("show.jsp");
			user = new AccountDTO();
		}else{
			msg = user.getNick()+"님의 정보";
		}
	%>
	<fieldset>
		<legend><%=msg %></legend>
		<form action="update.jsp" method="POST">
			<input name="idx" value="<%=user.getIdx() %>" hidden="hidden">
			<table>
				<tr>
					<th>유저 ID</th>
					<td><input name="userid" value="<%=user.getUserid() %>" disabled required></td>
				</tr>
				<tr>
					<th>유저 PW</th>
					<td><input name="userpw" value="<%=user.getUserpw() %>" required></td>
				</tr>
				<tr>
					<th>유저 Email</th>
					<td><input name="email" value="<%=user.getEmail() %>"required></td>
				</tr>
				<tr>
					<th>유저 닉네임</th>
					<td><input name="nick" value="<%=user.getNick() %>" disabled required></td>
				</tr>
				<tr>
					<th>유저 이름</th>
					<td><input name="name" value="<%=user.getName() %>" disabled required></td>
				</tr>
			</table>
			<p><button>수정완료</button></p>
			<p>
				<a href="delete.jsp?idx=<%=user.getIdx()%>"><button type="button" onclick="check()">회원탈퇴</button></a>
				<a href="show.jsp"><button type="button">메인</button></a>
			</p>
		</form>
	</fieldset>
<script>
	let checkDelete = '탈퇴한다';
	function check(){
		checkDelete = prompt('정말 탈퇴 하시겠습니까??');	
	}
</script>
</body>
</html>