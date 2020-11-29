package com.GSRationalCar.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.GSRationalCar.vo.BoardVO;

public class BoardDAO {
	private static BoardDAO boardDAO = new BoardDAO();
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result = 0;
	
	private BoardDAO() {
		super();
	}
	
	public static BoardDAO getInstance() {
		return boardDAO;
	}
	
	public Connection getConnect() {
		Connection con = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
	         con = DriverManager.getConnection("jdbc:mariadb://gsitm-intern2020.c5tdqadv8vmd.ap-northeast-2.rds.amazonaws.com/it1456", "it1456", "it1456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public int nextval() {
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("SELECT MAX(BoardId)").append("FROM Board");
		
		try {
			pstmt = con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result = rs.getInt("MAX(BoardId)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return result;
	}


public int write(BoardVO boardVO) {

	con = getConnect();
	StringBuffer query = new StringBuffer();
	query.append("INSERT INTO Board ");
	query.append("(BoardId, BoardTitle, BoardContent, BoardDate, BoardHit, id) ");
	query.append("VALUES (?, ?, ?, now(), 0, ?)");
	try {
		pstmt = con.prepareStatement(query.toString());
		pstmt.setInt(1, boardVO.getBoardId());
		pstmt.setString(2, boardVO.getBoardTitle());
		pstmt.setString(3, boardVO.getBoardContent());
		pstmt.setString(4, boardVO.getId());
		result = pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(con, pstmt, null);
	}
	return result;
}

public List<BoardVO> selectList(){
	List<BoardVO> list = new ArrayList<>();
	
	try {
		con = getConnect();
		String sql ="SELECT * FROM Board ORDER BY BoardId ASC";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			BoardVO boardVO = new BoardVO();
			boardVO.setBoardId(rs.getInt("boardId"));
			boardVO.setBoardTitle(rs.getString("boardTitle"));
			boardVO.setBoardContent(rs.getString("boardContent"));
			boardVO.setBoardDate(rs.getTimestamp("boardDate"));
			boardVO.setBoardHit(rs.getInt("boardHit"));
			boardVO.setId(rs.getString("id"));
			list.add(boardVO);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		close(con, pstmt, rs);
	}
	return list;
}
public int hitUpdate(String boardId) {
	con = getConnect();
	String sql = "UPDATE Board SET BoardHit = BoardHit + 1 WHERE BoardId = ?";
	
	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, boardId);
		result = pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(con, pstmt, null);
	}
	return result;
}

public BoardVO selectById(String boardId) {
	BoardVO boardVO = new BoardVO();
	con = getConnect();
	String sql = "SELECT * FROM Board WHERE BoardId = ?";
	
	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, boardId);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			boardVO.setBoardId(rs.getInt("boardid"));
			boardVO.setBoardTitle(rs.getString("boardtitle"));
			boardVO.setBoardContent(rs.getString("boardcontent"));
			boardVO.setBoardDate(rs.getTimestamp("boarddate"));
			boardVO.setBoardHit(rs.getInt("boardhit"));
			boardVO.setId(rs.getString("id"));
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(con, pstmt, rs);
	}
	return boardVO;
}

public int del(int boardId) {
	con = getConnect();
	String sql = "DELETE FROM Board WHERE BoardId = ?";
	
	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, boardId);
		result = pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(con, pstmt, null);
	}
	return result;
}

public int update(BoardVO boardVO) {
	con = getConnect();
	StringBuffer query = new StringBuffer();
	query.append("UPDATE Board SET BoardTitle = ?, ");
	query.append("BoardContent = ? ");
	query.append("WHERE BoardId = ?;");
	
	try {
		pstmt = con.prepareStatement(query.toString());
		pstmt.setString(1, boardVO.getBoardTitle());
		pstmt.setString(2, boardVO.getBoardContent());
		pstmt.setInt(3, boardVO.getBoardId());
		result = pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(con, pstmt, null);
	}
	return result;
}
}
