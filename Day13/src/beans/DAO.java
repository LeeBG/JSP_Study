package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// 접속이나 테스트 등 공용되는 부분은 상속으로 처리하면 재사용성 증가
public abstract class DAO {
	// 필드 : 접속에 필요한 준비물을 작성한다.
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
			System.out.println("접속성공 !!!");
		} catch (ClassNotFoundException e) {
			System.out.println("생성자 예외 : "+ e.getMessage());
		}
	}
	
	
	// 커넥션은 항상 다 쓰면 닫아야한다.
	// - 자주 사용하는 코드이므로 메서드로 작성해두면 재사용가능
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {}
	}
	
}
