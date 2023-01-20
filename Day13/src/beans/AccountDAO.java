package beans;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

public class AccountDAO extends DAO{
	public String test() {
		try {
			String sql = "select banner from v$version";
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			
			return rs.getString("banner");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println("SQL 에러 : "+ e.getMessage());
		}finally {
			close();
		}
		return null;
	}
	
	public ArrayList<AccountDTO> selectAll(){
		try {
			String sql = "select * from account";
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			ArrayList<AccountDTO> list = new ArrayList<AccountDTO>();
			
			while(rs.next()) {
				AccountDTO row = new AccountDTO();
				row.setIdx(rs.getInt("idx"));
				row.setUserId(rs.getString("userid"));
				row.setUserPw(rs.getString("userpw"));
				row.setNick(rs.getString("nick"));
				row.setName(rs.getString("name"));
				row.setEmail(rs.getString("email"));
				row.setJoin_date(rs.getDate("join_date"));
				
				list.add(row);
			}
			return list;
		} catch (SQLException e) {
			System.err.println("SQL 에러 : "+ e.getMessage());
		}finally {
			close();
		}
		
		return null;
	}
	
	
}
