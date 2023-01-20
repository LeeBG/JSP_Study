
<%@page import="beans.BookDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body {
		text-align: center;
	}
	table {
		border-collapse: collapse;
		text-align : center;
	}
	th td {
		border: 1px solid black;
		padding : 10px 15px;
	}
</style>
<title>quiz</title>
</head>
<body>
	<h1>book 테이블</h1>
	<hr/>
	
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
			
			String sql = "select * from book";
			rs = stmt.executeQuery(sql);
			
			ArrayList <BookDto> list = new ArrayList<BookDto>();
			while(rs.next()){
				BookDto row = new BookDto();
				row.setBook_title(rs.getString("book_title"));
				row.setBook_author(rs.getString("book_author"));
				row.setBook_pub(rs.getString("book_pub"));
				row.setBook_date(rs.getDate("book_date"));
				row.setBook_price(rs.getInt("book_price"));
				
				list.add(row);
			}
	%>
	
	<table>
		<thead>
			<tr>
				<th>책이름</th>
				<th>작가</th>
				<th>출판사</th>
				<th>출판일</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
		<%for(BookDto row : list) { %>
			<tr>
				<td><%=row.getBook_title() %><td>
				<td><%=row.getBook_author() %><td>
				<td><%=row.getBook_pub() %><td>
				<td><%=row.getBook_date() %><td>
				<td><%=row.getBook_price() %><td>
			</tr>
		 <% } 
		 	conn.close();
		 	stmt.close();
		 	rs.close();
		 %>		
		</tbody>
	</table>
</body>
</html>