<%@page import="model.AccountDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
<style>
	body {
		text-align: center;
	}
	table {
		display: inline-block;
		border-collapse: collapse;
	}
	
	th,td {
		border : solid 1px black;
		padding : 10px 15px;
	}
	ul {
		text-align : left;
	}
	a {
		text-decoration: none;
		color:black;
	}
	a:hover{
		text-decoration:underline;
		color : red;
	}
</style>
</head>
<body>
	<%
		AccountDAO dao = new AccountDAO();
		List<AccountDTO> users = dao.selectAll();
		AccountDTO user = (AccountDTO)session.getAttribute("user");
		String msg = user == null ? "로그인 중 아님" : user.getNick()+"님 로그인 중" ;
	%>
	<h1>Account 테이블</h1>
	<hr/>	
	<h3><%=msg %></h3>
	<h3>Account 모든 테이블을 출력</h3>
	<table>
		<thead>
			<tr>
				<td>ID</td>
				<td>유저 ID</td>
				<td>유저 PW</td>
				<td>이메일</td>
				<td>닉네임</td>
				<td>이름</td>
				<td>가입일</td>
			</tr>
		</thead>
		<tbody>
		<%for(AccountDTO row : users){ %>
			<tr>
				<td><%=row.getIdx() %></td>
				<td><%=row.getUserid() %></td>
				<td><%=row.getUserpw() %></td>
				<td><%=row.getEmail() %></td>
				<td><%=row.getNick() %></td>
				<td><%=row.getName() %></td>
				<td><%=row.getJoin_date() %></td>
			</tr>
		<%} %>
		</tbody>
	</table>
	
	<ul>
		<li><a href="login.jsp" >로그인</a></li>
		<li><a href="join.jsp" >회원가입</a></li>
		<li><a href="myPage.jsp" >내정보</a></li>
		<li><a href="logout.jsp">로그아웃</a></li>
	</ul>
</body>
</html>