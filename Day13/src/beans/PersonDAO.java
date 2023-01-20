package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

// DAO : DB에 접근을 할 객체
// - DB접근은 자주 발생하는 케이스 이므로 재사용성을 높이기 위해
// 클래스로 작성한다.

public class PersonDAO {
	// 필드 : 접속에 필요한 준비물을 작성한다.
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	// 생성자 : 접속을 하는 코드를 쓴다.
	public PersonDAO() {
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
	
	// 메서드 : 각 SQL구문을 구현한다.
	public String test() {
		String sql = "select banner from v$version";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getString("banner");
		} catch (SQLException e) {
			System.out.println("SQL 예외 : "+ e.getMessage());
		}finally {
			close();
		}
		return null;
	}

	public ArrayList<PersonDto> selectAll(){
		
		String sql = "select * from person";
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			ArrayList<PersonDto> list = new ArrayList<PersonDto>();
			while(rs.next()) {
				PersonDto row = new PersonDto();
				row.setName(rs.getString("name"));
				row.setHeight(rs.getDouble("height"));
				row.setBirth(rs.getDate("birth"));
				
				list.add(row);
			}
			return list;
		} catch (SQLException e) {
			System.out.println("SQL예외 : "+e.getMessage());
		}finally {
			close();
		}
		
		return null;

	}
}
