package model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.dto.BoardDTO;
import service.Paging;

public class BoardDAO extends DAO{

	// 메인화면에서 보여줄 최신글 20개(고정)
	public List<BoardDTO> selectAll(){
		String sql = "select * from board " + 
				"order by idx desc " + 
				"offset 0 rows " + 
				"fetch first 20 rows only";
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			List<BoardDTO> list = new ArrayList<BoardDTO>();
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
	
	// Board리스트에서 보여줄 최신글 + 페이징
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
			List<BoardDTO> list = new ArrayList<BoardDTO>(); // ��ĳ����
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
	
	// board 총 갯수
	public int boardCount() {
		String sql = "select count(*) as count from board";
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			
			return rs.getInt("count");
		} catch (SQLException e) {
			System.err.println("count 에러" + e.getMessage());
		}finally {
			close();
		}
		return 0;
	}
	
	// 하나의 게시글 상세보기
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
			List<BoardDTO> list = new ArrayList<BoardDTO>();
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
	
	public int save(BoardDTO input) {
		String sql = "insert into " + 
				"board(title, contents, writer) "
				+ "values(?, ?, ?) ";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("save에러 : "+e.getMessage());
		} finally {
			close();
		}	
		return 0;
	}
}
