<%@page import="beans.AccountDto"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table{
		border-collapse: collapse;
	}
	th,td{
		border: solid 1px black;
		padding : 10px 15px;
	}
</style>
<title>ex02</title>
</head>
<body>

	<%
		// 1. DB연동 준비물
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
		String user = "c##itbank";
		String password = "it";
		
		Connection conn;
		Statement stmt;
		ResultSet rs;
		
		// 2. 드라이버 로딩
		Class.forName(driver);// 라이브러리를 불러온다
		
		
		// 3. 연결 객체 만들기 (연결 및 실행)
		conn = DriverManager.getConnection(url, user, password);
		stmt= conn.createStatement(); // sql 실행 객체를 만들어라
		
		
		String sql = "select * from person";
		rs =stmt.executeQuery(sql); // rs가 결과 집합(= SET)을 받는다.

		ArrayList<AccountDto> list = new ArrayList<AccountDto>();
		// 커서를 하나 밑으로 내린다.
		while(rs.next()){		// next() : 다음 행이 있으면 참. 그리고 다음 행을 이동
			AccountDto row = new AccountDto();
			row.setName(rs.getString("name"));
			row.setHeight(rs.getDouble("height"));
			row.setBirth(rs.getDate("birth"));
			list.add(row);
		}
	%>
	
	<h1>테이블</h1>
	<hr/>
	<table>
		<tr>
			<th>이름</th>
			<th>키</th>
			<th>생일</th>
		</tr>
		<%
		for(AccountDto row : list){
		%>
		<tr>
			<td><%=row.getName() %></td>
			<td><%=row.getBirth() %></td>
			<td><%=row.getBirth() %></td>
		</tr>
	<%}%>
	</table>
</body>
</html>