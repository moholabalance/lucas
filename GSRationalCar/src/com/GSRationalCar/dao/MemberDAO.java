package com.GSRationalCar.dao;

import java.sql.*;
import com.GSRationalCar.vo.MemberVO;

public class MemberDAO {
					
	private static MemberDAO dao = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		return dao;
	}
	public Connection connect() {
		Connection conn = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
	         conn = DriverManager.getConnection("jdbc:mariadb://gsitm-intern2020.c5tdqadv8vmd.ap-northeast-2.rds.amazonaws.com/it1456", "it1456", "it1456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if (rs !=null) {
			try {
				rs.close();
			} catch (Exception ex) {
				System.out.println("오류발생 : " +ex);
			}
		}
		close(conn, ps);
	}
	
	public void close(Connection conn, PreparedStatement ps) {
		if (ps !=null) {
			try {
				ps.close();
			} catch (Exception ex) {
				System.out.println("오류발생 : " +ex);
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception ex) {
				System.out.println("오류 발생 :" + ex);
			}
		}
	}

	public void memberInsert(MemberVO member) {
			Connection conn = null;
			PreparedStatement pstmt = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getPhone());
			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("오류 발생 :" +ex);
		} finally {
			close(conn, pstmt);
		}
	}
	
	public MemberVO memberLogin(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		MemberVO member = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select id, passwd from member where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member = new MemberVO();
				
				member.setId(rs.getString(1));
				member.setPasswd(rs.getString(2));
			}
			
		} catch (Exception ex) {
			System.out.println("오류 발생 :" +ex);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return member;
	}
}

