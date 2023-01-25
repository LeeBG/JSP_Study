package model;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.InflaterInputStream;

public class AccountDAO extends DAO {
	public List<AccountDTO> selectAll() {
		String sql = "select * from account order by idx";
		try {
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
				row.setJoin_Date(rs.getDate("join_date"));
				list.add(row);
			}
			return list;
		} catch (SQLException e) {
			System.out.println("SelectAll() 에러 : " + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	// 1. stmt를 사용시 : 변화가 많은 구문에서 속도가 떨어지며 보안성이 떨어진다.
	public AccountDTO selectOne1(AccountDTO input) {
		String sql = "select * from account "
				+ "where userid = '%s' and userpw = '%s'";
		sql  = String.format(sql, input.getUserId(), input.getUserPw());
		try {
			conn = DriverManager.getConnection(url,user,password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			// id,pw일치하는 것은 하나 밖에 없기 때문이다.
			rs.next();
			
			AccountDTO row = new AccountDTO();
			
			row.setEmail(rs.getString("email"));
			row.setIdx(rs.getInt("idx"));
			row.setJoin_Date(rs.getDate("join_date"));
			row.setName(rs.getString("name"));
			row.setNick(rs.getString("nick"));
			row.setUserId(rs.getString("userid"));
			row.setUserPw(rs.getString("userpw"));
			
			return row;
			
		} catch (SQLException e) {
			System.out.println("selectOne() 예외 : "+e.getMessage());
		}finally {
			close();
		}
		return null;
	}

	// 2. pstmt를 사용시 : 변화가 많은 구문에서 속도가 증가하며, SQL Injection을 방지
	public AccountDTO selectOne2(AccountDTO input) {
		String sql = "select * from account  "
				+ "where userid = ? and userpw = ?";
		// 						  1				 2
		// pstmt 는 sql구문이 미리 자료형을 지정하지 않는다.
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql); // 미리 sql구문을 만들어 놓는다.
			
			pstmt.setString(1, input.getUserId()); // set자료형(index, 값)
			pstmt.setString(2, input.getUserPw()); // - 해당 index에 데이터를 전달
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			AccountDTO row = new AccountDTO();
			
			row.setEmail(rs.getString("email"));
			row.setIdx(rs.getInt("idx"));
			row.setJoin_Date(rs.getDate("join_date"));
			row.setName(rs.getString("name"));
			row.setNick(rs.getString("nick"));
			row.setUserId(rs.getString("userid"));
			row.setUserPw(rs.getString("userpw"));
			
			return row;
			
		} catch (SQLException e) {
			System.out.println("selectOne 예외 : "+ e.getMessage());
		}finally {
			close();
		}
		
		return null;
	}

	// 3. insert, update delete는 실행 후 변경된 행 갯수를 정수로 반환
	// ※ select는 실행 후 table의 결과를 ResultSet으로 반환
	public int insert(AccountDTO input) {
		
		String sql  = "insert into"
				+ " account(userid,userpw,nick,name,email)"
				+ " values(?,?,?,?,?)";
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getUserId());
			pstmt.setString(2, input.getUserPw());
			pstmt.setString(3, input.getNick());
			pstmt.setString(4, input.getName());
			pstmt.setString(5, input.getEmail());
			
			int row = pstmt.executeUpdate();	
			// insert, update, delete는 모두 excuteUpdate();
			// select는 executeQuery() => ResultSet을 반환
			
			return row;
		} catch (SQLException e) {
			System.out.println("insert 예외 :" + e.getMessage());
		}finally {
			close();
		}
		
		return 0;
	}

}


