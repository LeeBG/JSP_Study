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
			System.out.println("SelectAll 예외 : " + e.getMessage());
		}finally {
			close();
		}
		
		return null;
	}

	public AccountDTO selectOne(AccountDTO input) {
		String sql = "select * "
				+ "from account where userid = ? and userpw = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			rs = pstmt.executeQuery();
			rs.next();
			
			AccountDTO row = new AccountDTO();
			row.setIdx(rs.getInt("idx"));
			row.setUserid(rs.getString("userid"));
			row.setUserpw(rs.getString("userpw"));
			row.setEmail(rs.getString("email"));
			row.setNick(rs.getString("nick"));
			row.setName(rs.getString("name"));
			row.setJoin_date(rs.getDate("join_date"));
			
			return row;
		} catch (SQLException e) {
			System.out.println("selectOne 에러 : "+e.getMessage());
		}finally {
			close();
		}
		return null;
	}

	public int join(AccountDTO input) {
		
		String sql = "insert into account(userid, userpw, email, nick, name)"
				+ "values(?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			pstmt.setString(3, input.getEmail());
			pstmt.setString(4, input.getNick());
			pstmt.setString(5, input.getName());
			
			int row = pstmt.executeUpdate();
			
			return row;
		} catch (SQLException e) {
			System.out.println("회원가입 에러 : " + e.getMessage());
		}finally {
			close();
		}
		return 0;
	}

	public int update(AccountDTO input) {
		
		String sql = "update account set userpw = ? , email = ? where idx = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getUserpw());
			pstmt.setString(2, input.getEmail());
			pstmt.setInt(3, input.getIdx());
			int row = pstmt.executeUpdate();
			return row;
		} catch (SQLException e) {
			System.out.println("update 에러 : "+e.getMessage());
		}finally {
			close();
		}
		
		return 0;
	}

	public int delete(int idx) {
		
		String sql = "delete from account where idx = ? ";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			int row = pstmt.executeUpdate();
			return row;
		} catch (SQLException e) {
			System.out.println("delete 에러 : " + e.getMessage());
		}finally {
			close();
		}
		
		return 0;
		
	}
}
