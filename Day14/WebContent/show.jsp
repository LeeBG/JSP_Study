<%@page import="java.util.List"%>
<%@page import="model.AccountDTO"%>
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
	
	ul {
		text-align: left;
	}
	
	table{
		display: inline-block;
		border-collapse: collapse;
	}
	
	th,td {
		border: 1px solid black;
		padding: 10px 15px;
	}
	
	a {
		text-decoration: none;
		color : black;
	}
	
	a:hover{
		text-decoration: underline;
	}
</style>
</head>
<body>
	<%
		AccountDAO dao = new AccountDAO();
		String ver = dao.connectTest();
		List<AccountDTO> list = dao.selectAll();
		
		// 2. 세션 확인
		AccountDTO user = (AccountDTO) session.getAttribute("user");
		String nick = "없음";
		String login = "login.jsp";
		String loginBtn = "로그인";
		
		if(user != null) {
			nick = user.getNick();
			login = "logout.jsp";
			loginBtn = "로그 아웃";
		}
	%>
	
	<h1>Account 테이블 목록</h1>
	<hr/>
	<h4>현재 접속 : <%=nick %> </h4>
	
	<ul>
		<li><a href="<%=login %>"><%=loginBtn %></a></li>
		<li><a href="join.jsp">회원가입</a></li>
		<li><a href="myPage.jsp">내정보</a>
	</ul>
	
	<table>
		<thead>
			<tr>
				<th>NO</th>
				<th>ID</th>
				<th>PW</th>
				<th>닉네임</th>
				<th>이름</th>
				<th>이메일</th>
				<th>가입일자</th>
			</tr>
		</thead>
		<tbody>
		<%for(AccountDTO row : list) { %>
			<tr>
				<td><%=row.getIdx() %></td>
				<td><%=row.getUserid() %></td>
				<td><%=row.getUserpw() %></td>
				<td><%=row.getNick() %></td>
				<td><%=row.getName() %></td>
				<td><%=row.getEmail() %></td>
				<td><%=row.getJoin_Date() %></td>
			</tr>
		<%} %>
		</tbody>
	</table>
	
	
	
</body>
</html>