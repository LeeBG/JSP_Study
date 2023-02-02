package model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.dto.BoardDTO;
import service.Paging;

public class BoardDAO extends DAO{

	public List<BoardDTO> selectAll(){
		String sql = "select * from board " + 
				"order by idx desc " + 
				"offset 0 rows " + 
				"fetch first 20 rows only";
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			List<BoardDTO> list = new ArrayList<BoardDTO>(); // 업캐스팅
			while(rs.next()) {
				BoardDTO row = new BoardDTO();
				row.setContents(rs.getString("contents"));
				row.setIdx(rs.getInt("idx"));
				row.setTitle(rs.getString("title"));
				row.setView_count(rs.getInt("view_count"));
				row.setWrite_date(rs.getDate("write_date"));
				row.setWriter(rs.getString("writer"));
				list.add(row);
			}
			return list;
		} catch (SQLException e) {
			System.err.println("selectAll()에러 : " + e.getMessage());
		} finally {
			close();
		}
		return null;
	}
	
	
	public List<BoardDTO> selectAll(int page){
		String sql = "select * from board " + 
				"order by idx desc " + 
				"offset ? rows " + 
				"fetch first ? rows only";
		int total = boardCount();
		Paging pg = new Paging(page, total);
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pg.getOffset());
			pstmt.setInt(2, pg.getPerCount());
			rs = pstmt.executeQuery();
			List<BoardDTO> list = new ArrayList<BoardDTO>(); // 업캐스팅
			while(rs.next()) {
				BoardDTO row = new BoardDTO();
				row.setContents(rs.getString("contents"));
				row.setIdx(rs.getInt("idx"));
				row.setTitle(rs.getString("title"));
				row.setView_count(rs.getInt("view_count"));
				row.setWrite_date(rs.getDate("write_date"));
				row.setWriter(rs.getString("writer"));
				list.add(row);
			}
			return list;
		} catch (SQLException e) {
			System.err.println("selectAll(page)에러 : " + e.getMessage());
		} finally {
			close();
		}
		return null;
	}
	
	public int boardCount() {
		String sql = "select count(*) as count from board";
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			
			return rs.getInt("count");
		} catch (SQLException e) {
			System.err.println("count에러" + e.getMessage());
		}finally {
			close();
		}
		return 0;
	}
	
	public BoardDTO selectOne(int idx) {
		
		String sql = "select * from board where idx = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			rs.next();
			BoardDTO row = new BoardDTO();
			row.setIdx(rs.getInt("idx"));
			row.setContents(rs.getString("contents"));
			row.setTitle(rs.getString("title"));
			row.setView_count(rs.getInt("view_count"));
			row.setWrite_date(rs.getDate("write_date"));
			row.setWriter(rs.getString("writer"));
			
			return row;
		} catch (SQLException e) {
			System.err.println("상세보기 에러:" + e.getMessage());
		}finally {
			close();
		}
		return null;
	}
	
	
	public Map<String, Object> selectAllPage(int page){
		String sql = "select * from board " + 
				"order by idx desc " + 
				"offset ? rows " + 
				"fetch first ? rows only";
		int total = boardCount();
		Paging pg = new Paging(page, total);
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pg.getOffset());
			pstmt.setInt(2, pg.getPerCount());
			rs = pstmt.executeQuery();
			List<BoardDTO> list = new ArrayList<BoardDTO>(); // 업캐스팅
			while(rs.next()) {
				BoardDTO row = new BoardDTO();
				row.setContents(rs.getString("contents"));
				row.setIdx(rs.getInt("idx"));
				row.setTitle(rs.getString("title"));
				row.setView_count(rs.getInt("view_count"));
				row.setWrite_date(rs.getDate("write_date"));
				row.setWriter(rs.getString("writer"));
				list.add(row);
			}
			map.put("list",list);
			map.put("pg", pg);
			return map;
		} catch (SQLException e) {
			System.err.println("selectAll(page)에러 : " + e.getMessage());
		} finally {
			close();
		}
		return null;
	}
	
}
