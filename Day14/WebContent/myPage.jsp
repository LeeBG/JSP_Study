<%@page import="model.dto.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage.jsp</title>
<style>
	body {
		text-align : center;
	}
	table{
		display : inline-block;
		border-collapse: collapse;
	}
	td,th {
		border: 1px solid black;
		padding: 15px 20px;
	}
	a {
		text-decoration: none;
	}
</style>
</head>
<body>
	<%
		AccountDTO user = (AccountDTO) session.getAttribute("user");
		String msg = "내정보";
		if(user!=null){
			msg = user.getNick()+"님 정보";
		}else{
			response.sendRedirect("login.jsp");
			user = new AccountDTO();
		}
	%>
	<h1><%=msg %></h1>
	<hr/>
	<form action="update.jsp" method="POST">
		<table>
			<tr>
				<th>회원번호</th>
				<td><%=user.getIdx() %></td>	
			</tr>
			<tr>
				<th>아이디</th>
				<td><%=user.getUserid() %></td>	
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input name="userpw" type="password" required value="<%=user.getUserpw()%>"></td>	
			</tr>
			<tr>
				<th>닉네임</th>
				<td><%=user.getNick() %></td>	
			</tr>
			<tr>
				<th>이름</th>
				<td><%=user.getName() %></td>	
			</tr>
			<tr>
				<th>이메일</th>
				<td><input name="email" type="email" required value="<%=user.getEmail()%>"></td>	
			</tr>
			<tr>
				<th>가입일자</th>
				<td><%=user.getJoin_Date() %></td>	
			</tr>
		</table>
		<br/>
		
		<h3><%=user.getIdx() %></h3>
		<input name="idx" type="hidden" value="<%=user.getIdx() %>" required/>
		
		<button>수정</button>
		
		<a href="show.jsp"><button type="button">메인</button></a>
		<a href="delete.jsp?idx=<%=user.getIdx()%>">
			<button type="button">탈퇴</button>
		</a>
	</form>
</body>
</html>