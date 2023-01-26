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
				row.setUserid(rs.getString("userid"));
				row.setUserpw(rs.getString("userpw"));
				row.setNick(rs.getString("nick"));
				row.setName(rs.getString("name"));
				row.setEmail(rs.getString("email"));
				row.setJoin_Date(rs.getDate("join_date"));
				list.add(row);
			}
			return list;
		} catch (SQLException e) {
			System.out.println("SelectAll() ���� : " + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	// 1. stmt�� ���� : ��ȭ�� ���� �������� �ӵ��� �������� ���ȼ��� ��������.
	public AccountDTO selectOne1(AccountDTO input) {
		String sql = "select * from account "
				+ "where userid = '%s' and userpw = '%s'";
		sql  = String.format(sql, input.getUserid(), input.getUserpw());
		try {
			conn = DriverManager.getConnection(url,user,password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			// id,pw��ġ�ϴ� ���� �ϳ� �ۿ� ���� �����̴�.
			rs.next();
			
			AccountDTO row = new AccountDTO();
			
			row.setEmail(rs.getString("email"));
			row.setIdx(rs.getInt("idx"));
			row.setJoin_Date(rs.getDate("join_date"));
			row.setName(rs.getString("name"));
			row.setNick(rs.getString("nick"));
			row.setUserid(rs.getString("userid"));
			row.setUserpw(rs.getString("userpw"));
			
			return row;
			
		} catch (SQLException e) {
			System.out.println("selectOne() ���� : "+e.getMessage());
		}finally {
			close();
		}
		return null;
	}

	// 2. pstmt�� ���� : ��ȭ�� ���� �������� �ӵ��� �����ϸ�, SQL Injection�� ����
	public AccountDTO selectOne2(AccountDTO input) {
		String sql = "select * from account  "
				+ "where userid = ? and userpw = ?";
		// 						  1				 2
		// pstmt �� sql������ �̸� �ڷ����� �������� �ʴ´�.
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql); // �̸� sql������ ����� ���´�.
			
			pstmt.setString(1, input.getUserid()); // set�ڷ���(index, ��)
			pstmt.setString(2, input.getUserpw()); // - �ش� index�� �����͸� ����
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			AccountDTO row = new AccountDTO();
			
			row.setEmail(rs.getString("email"));
			row.setIdx(rs.getInt("idx"));
			row.setJoin_Date(rs.getDate("join_date"));
			row.setName(rs.getString("name"));
			row.setNick(rs.getString("nick"));
			row.setUserid(rs.getString("userid"));
			row.setUserpw(rs.getString("userpw"));
			
			return row;
			
		} catch (SQLException e) {
			System.out.println("selectOne ���� : "+ e.getMessage());
		}finally {
			close();
		}
		
		return null;
	}

	// 3. insert, update delete�� ���� �� ����� �� ������ ������ ��ȯ
	// �� select�� ���� �� table�� ����� ResultSet���� ��ȯ
	public int insert(AccountDTO input) {
		
		String sql  = "insert into"
				+ " account(userid,userpw,nick,name,email)"
				+ " values(?,?,?,?,?)";
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			pstmt.setString(3, input.getNick());
			pstmt.setString(4, input.getName());
			pstmt.setString(5, input.getEmail());
			
			int row = pstmt.executeUpdate();	
			// insert, update, delete�� ��� excuteUpdate();
			// select�� executeQuery() => ResultSet�� ��ȯ
			
			return row;
		} catch (SQLException e) {
			System.out.println("insert ���� :" + e.getMessage());
		}finally {
			close();
		}
		
		return 0;
	}

	public int update(AccountDTO input) {
		
		String sql = "update account "
				+ "set userpw=?, email=? "
				+ "where idx=?";
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,input.getUserpw());
			pstmt.setString(2, input.getEmail());
			pstmt.setInt(3, input.getIdx());
			
			return pstmt.executeUpdate();// ����� �� ��� ������ ��ȯ�Ѵ�.
			
		} catch (SQLException e) {
			System.out.println("update ���� : "+ e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}

	public int delete(int idx) {
		String sql = "delete from account where idx = ?";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("delete ���� : "+ e.getMessage());
		}finally {
			close();
		}
		
		return 0;
		
	}
}


