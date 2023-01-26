package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public abstract class DAO {
	protected Context ct;
	protected DataSource ds;
	
	protected Connection conn;
	protected Statement stmt;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	
	
	// web.xml에서 참조 중인 DataSource를 받아온다
	public DAO() {
		try {
			ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/oracle");
			
		} catch (NamingException e) {
			System.out.println("생성자 예외 : " + e.getMessage());
			
		} finally {
			close();
			// - DataSource를 불러오면 커넥션이 활성화 되어있다
			// - 이를 일단 닫아 준다
		}
	}
	
	public void close() {
		// DBCP를 사용하면 close()를 호출해도 실제로 커넥션을 닫는게 아니고,
		// Pool에다 반납을 하는 형태로 변하게 된다
		try {
			if (rs != null) 	rs.close();
			if (pstmt != null) 	pstmt.close();
			if (stmt != null) 	stmt.close();
			if (conn != null) 	conn.close();
			
		} catch(Exception e) {}
	}
	
	public String test() {
		String sql = "select banner from v$version";
		
		try {
			// 커넥션은 이미 생성자에서 DataSource에 받아놨다
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getString("banner");
			
		} catch (SQLException e) {
			System.out.println("test 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		return null;
	}
	
	
}
