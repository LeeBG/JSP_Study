package model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.dto.BoardDTO;

public class BoardDAO extends DAO{

	public List<BoardDTO> selectAll(){
		String sql = "select * from board order by idx desc";
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
		}
		return null;
	}
}
