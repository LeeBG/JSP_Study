package model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO extends DAO{
	public List<AccountDTO> selectAll(){
		String sql = "select * from account order by idx";
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			ArrayList<AccountDTO> list = new ArrayList<AccountDTO>();
			while(rs.next()) {
				AccountDTO row = new AccountDTO();
				row.setIdx(rs.getInt("idx"));
				row.setUserid(rs.getString("userid"));
				row.setUserpw(rs.getString("userpw"));
				row.setEmail(rs.getString("email"));
				row.setNick(rs.getString("nick"));
				row.setName(rs.getString("name"));
				row.setJoin_date(rs.getDate("join_date"));
				list.add(row);
			}
			return list;
		} catch (SQLException e) {
			System.out.println("SelectAll ¿¹¿Ü : " + e.getMessage());
		}finally {
			close();
		}
		
		return null;
	}

	public AccountDTO selectOne() {
		return null;
	}
}
