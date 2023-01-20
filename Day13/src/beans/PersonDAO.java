package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

// DAO : DB�� ������ �� ��ü
// - DB������ ���� �߻��ϴ� ���̽� �̹Ƿ� ���뼺�� ���̱� ����
// Ŭ������ �ۼ��Ѵ�.

public class PersonDAO {
	// �ʵ� : ���ӿ� �ʿ��� �غ��� �ۼ��Ѵ�.
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	// ������ : ������ �ϴ� �ڵ带 ����.
	public PersonDAO() {
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
	
	// �޼��� : �� SQL������ �����Ѵ�.
	public String test() {
		String sql = "select banner from v$version";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getString("banner");
		} catch (SQLException e) {
			System.out.println("SQL ���� : "+ e.getMessage());
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
			System.out.println("SQL���� : "+e.getMessage());
		}finally {
			close();
		}
		
		return null;

	}
}
