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
<title>ex01.jsp</title>
</head>
<body>
	<h1>ex01.jsp</h1>
	<hr/>
	
	<h3>JDBC : Java Database Connectivity</h3>
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
		conn = DriverManager.getConnection(url, user, password); //연결
		stmt= conn.createStatement(); // sql 실행 객체를 만들어라
		
		// 여기서 sql문안에는 ';'을 넣지 않는다.
		String sql = "select * from v$version";
		rs =stmt.executeQuery(sql); // rs가 결과 집합(= SET)을 받는다.
		String ver;
		// 커서를 하나 밑으로 내린다.
		if(rs.next()){
			ver = rs.getString("banner"); 	// get 자료형(열 이름);
			out.print(ver);
		}
		
		conn.close();
		stmt.close();
		rs.close();
	%>
	
</body>
</html>