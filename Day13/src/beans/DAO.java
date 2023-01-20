package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// �����̳� �׽�Ʈ �� ����Ǵ� �κ��� ������� ó���ϸ� ���뼺 ����
public abstract class DAO {
	// �ʵ� : ���ӿ� �ʿ��� �غ��� �ۼ��Ѵ�.
	protected String driver = "oracle.jdbc.driver.OracleDriver";
	protected String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	protected String user = "c##itbank";
	protected String password = "it";
		
	protected Connection conn;
	protected Statement stmt;
	protected ResultSet rs;
	
	
	public DAO() {
		try {
			Class.forName(driver);
			System.out.println("���Ӽ��� !!!");
		} catch (ClassNotFoundException e) {
			System.out.println("������ ���� : "+ e.getMessage());
		}
	}
	
	
	// Ŀ�ؼ��� �׻� �� ���� �ݾƾ��Ѵ�.
	// - ���� ����ϴ� �ڵ��̹Ƿ� �޼���� �ۼ��صθ� ���밡��
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {}
	}
	
}
