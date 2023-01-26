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
	
	
	// web.xml���� ���� ���� DataSource�� �޾ƿ´�
	public DAO() {
		try {
			ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/oracle");
			
		} catch (NamingException e) {
			System.out.println("������ ���� : " + e.getMessage());
			
		} finally {
			close();
			// - DataSource�� �ҷ����� Ŀ�ؼ��� Ȱ��ȭ �Ǿ��ִ�
			// - �̸� �ϴ� �ݾ� �ش�
		}
	}
	
	public void close() {
		// DBCP�� ����ϸ� close()�� ȣ���ص� ������ Ŀ�ؼ��� �ݴ°� �ƴϰ�,
		// Pool���� �ݳ��� �ϴ� ���·� ���ϰ� �ȴ�
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
			// Ŀ�ؼ��� �̹� �����ڿ��� DataSource�� �޾Ƴ���
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getString("banner");
			
		} catch (SQLException e) {
			System.out.println("test ���� : " + e.getMessage());
			
		} finally {
			close();
		}
		return null;
	}
	
	
}
