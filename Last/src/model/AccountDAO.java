package model;

import java.sql.SQLException;

import model.dto.AccountDTO;

public class AccountDAO extends DAO{
	
	// select one
	public AccountDTO login(AccountDTO input) {
		String sql = "select * from account where userid=? and userpw=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			rs = pstmt.executeQuery();
			rs.next();
			AccountDTO row = new AccountDTO();
			row.setIdx(rs.getInt("idx"));
			row.setEmail(rs.getString("email"));
			row.setJoin_date(rs.getDate("join_date"));
			row.setName(rs.getString("name"));
			row.setNick(rs.getString("nick"));
			row.setUserid(rs.getString("userid"));
			row.setUserpw(rs.getString("userpw"));
			
			return row;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return null;
	}

}
