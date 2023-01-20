<%@page import="beans.AccountDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
<style>
	body{
		text-align: center;
	}
	table{
		border-collapse: collapse;
		display: inline-block;
	}
	
	td, th {
		border : solid 1px black;
		padding : 10px 15px;
	}
</style>
</head>

<body>
	<h1>Account 테이블을 DAO, DTO를 활용해서 테이블로 출력</h1>
	<hr/>
	
	<%
		AccountDAO dao = new AccountDAO();
		ArrayList<AccountDTO> list = dao.selectAll();
	%>
	
	<table>
		<thead>
			<tr>
				<th>idx</th>
				<th>유저 ID</th>
				<th>유저 PW</th>
				<th>유저 닉네임</th>
				<th>유저 이름</th>
				<th>이메일</th>
				<th>가입 일자</th>
			</tr>
		</thead>
		<%for(AccountDTO row : list) {%>
			<tr>
				<td><%=row.getIdx() %></td>
				<td><%=row.getUserId() %></td>
				<td><%=row.getUserPw() %></td>
				<td><%=row.getNick() %></td>
				<td><%=row.getName() %></td>
				<td><%=row.getEmail() %></td>
				<td><%=row.getJoin_date() %></td>
			</tr>
		<%} %>
		<tbody>
		</tbody>
	</table>
</body>
</html>