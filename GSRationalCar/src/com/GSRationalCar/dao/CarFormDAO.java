package com.GSRationalCar.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.GSRationalCar.vo.BoardVO;
import com.GSRationalCar.vo.CarformVO;

public class CarFormDAO {
	private static CarFormDAO carformdao = new CarFormDAO();
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result = 0;

	private CarFormDAO() {
		super();
	}

	public static CarFormDAO getInstance() {
		return carformdao;
	}

	public static Connection getConnect() { //DB와 자바 연결
		Connection con = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mariadb://gsitm-intern2020.c5tdqadv8vmd.ap-northeast-2.rds.amazonaws.com/it1456", "it1456",
					"it1456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
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

	public int nextval() { // 매물번호 증가 함수
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("SELECT MAX(carId)").append("FROM car");

		try {
			pstmt = con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result = rs.getInt("MAX(carId)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return result;
	}

	public int write(CarformVO carformvo) {//매물 등록

		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO car");
		query.append(
				"(carId, carHit, carBth, carNum, id, carKm, carGas, carTune, carHis, carColor, carUse, carKm_de, carGas_de, carTune_de, carHis_de, carColor_de, carUse_de, carDate, path, carname, createtime)");
		query.append("VALUES (?,0,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate(),?,?,sysdate())");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setInt(1, carformvo.getCarId());// carId int
			pstmt.setString(2, carformvo.getCarBth());// carBth int
			pstmt.setString(3, carformvo.getCarNum());// carNum int
			pstmt.setString(4, carformvo.getId());// id String
			pstmt.setString(5, carformvo.getCarKm());// carKm String
			pstmt.setString(6, carformvo.getCarGas());// carGas String
			pstmt.setString(7, carformvo.getCarTune());// carTune String
			pstmt.setString(8, carformvo.getCarHis());// carHis String
			pstmt.setString(9, carformvo.getCarColor());// carColor String
			pstmt.setString(10, carformvo.getCarUse());// carUse String
			pstmt.setString(11, carformvo.getCarKm_de());// carKm_de String
			pstmt.setString(12, carformvo.getCarGas_de());// carGas_de String
			pstmt.setString(13, carformvo.getCarTune_de());// carTune_de String
			pstmt.setString(14, carformvo.getCarHis_de());// carHis_de String
			pstmt.setString(15, carformvo.getCarColor_de());// carColor_de String
			pstmt.setString(16, carformvo.getCarUse_de());// carUse_de String
			pstmt.setString(17, carformvo.getPath());
			pstmt.setString(18, carformvo.getCarname());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}

	public List<CarformVO> selectList(int startPage, int endPage) {// 등록된 매물 리스트 DB에서 가져옴.
		List<CarformVO> list = new ArrayList<>();

		try {
			con = getConnect();
			String sql = "SELECT * FROM car ORDER BY carId DESC limit ?, ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startPage);
			pstmt.setInt(2, endPage);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				CarformVO carformvo = new CarformVO();
				carformvo.setCarId(rs.getInt("carId"));
				carformvo.setCarHit(rs.getInt("carHit"));
				carformvo.setCarBth(rs.getString("CarBth"));
				carformvo.setCarname(rs.getString("Carname"));
				carformvo.setId(rs.getString("Id"));
				carformvo.setCarUse_de(rs.getString("CarUse_de"));
				carformvo.setPath(rs.getString("path"));
				carformvo.setCarKm(rs.getString("carKm"));
				carformvo.setCarGas(rs.getString("carGas"));
				carformvo.setCarTune(rs.getString("carTune"));
				carformvo.setCarHis(rs.getString("carHis"));
				carformvo.setCarColor(rs.getString("carColor"));
				carformvo.setCarUse(rs.getString("carUse"));
				carformvo.setCarKm_de(rs.getString("carKm_de"));
				carformvo.setCarGas_de(rs.getString("carGas_de"));
				carformvo.setCarTune_de(rs.getString("carTune_de"));
				carformvo.setCarHis_de(rs.getString("carHis_de"));
				carformvo.setCarColor_de(rs.getString("carColor_de"));
				carformvo.setCarDate(rs.getTimestamp("carDate"));
				list.add(carformvo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return list;
	}

	public int carformCount() {
		try {
			con = getConnect();
			String sql = "SELECT count(*) from car";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return -1;

	}
	public int hitUpdate(String carId) { // 클릭 시 조회수 증가 메서드
		con = getConnect();
		String sql = "UPDATE car SET carHit = carHit + 1 WHERE carId = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, carId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}

	public CarformVO selectById(String carId) {//수정을 위한 데이터 불러옴
		CarformVO carformvo = new CarformVO();
		con = getConnect();
		String sql = "SELECT * FROM car WHERE carId = ?";//carId는 매물번호로 PK이다.

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, carId);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				carformvo.setCarId(rs.getInt("carId"));
				carformvo.setCarHit(rs.getInt("carHit"));
				carformvo.setCarBth(rs.getString("CarBth"));
				carformvo.setCarname(rs.getString("Carname"));
				carformvo.setId(rs.getString("Id"));
				carformvo.setCarUse_de(rs.getString("CarUse_de"));
				carformvo.setPath(rs.getString("path"));
				carformvo.setCarKm(rs.getString("carKm"));
				carformvo.setCarGas(rs.getString("carGas"));
				carformvo.setCarTune(rs.getString("carTune"));
				carformvo.setCarHis(rs.getString("carHis"));
				carformvo.setCarColor(rs.getString("carColor"));
				carformvo.setCarUse(rs.getString("carUse"));
				carformvo.setCarKm_de(rs.getString("carKm_de"));
				carformvo.setCarGas_de(rs.getString("carGas_de"));
				carformvo.setCarTune_de(rs.getString("carTune_de"));
				carformvo.setCarHis_de(rs.getString("carHis_de"));
				carformvo.setCarColor_de(rs.getString("carColor_de"));
				carformvo.setCarDate(rs.getTimestamp("carDate"));
				carformvo.setCarNum(rs.getString("carNum"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return carformvo;
	}

	public int del(int carId) {//매물 삭제 메서드
		con = getConnect();
		String sql = "DELETE FROM car WHERE carId = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, carId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}
	
	public int update(CarformVO VO) { //매물 수정적용 메서드
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("UPDATE car SET carname = ?, ");
		query.append("carNum = ?, ");
		query.append("carBth = ?, ");
		query.append("carKm = ?, ");
		query.append("carKm_de = ?, ");
		query.append("carGas = ?, ");
		query.append("carGas_de = ?, ");
		query.append("carTune = ?, ");
		query.append("carTune_de = ?, ");
		query.append("carHis = ?, ");
		query.append("carHis_de = ?, ");
		query.append("carColor = ?, ");
		query.append("carColor_de = ?, ");
		query.append("carUse = ?, ");
		query.append("carUse_de = ?, ");
		query.append("updatetime = sysdate() ");
		query.append("WHERE carId = ?;");

		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, VO.getCarname());//
			pstmt.setString(2, VO.getCarNum());
			pstmt.setString(3, VO.getCarBth());
			pstmt.setString(4, VO.getCarKm());
			pstmt.setString(5, VO.getCarKm_de());
			pstmt.setString(6, VO.getCarGas());
			pstmt.setString(7, VO.getCarGas_de());
			pstmt.setString(8, VO.getCarTune());
			pstmt.setString(9, VO.getCarTune_de());
			pstmt.setString(10, VO.getCarHis());
			pstmt.setString(11, VO.getCarHis_de());
			pstmt.setString(12, VO.getCarColor());
			pstmt.setString(13, VO.getCarColor_de());
			pstmt.setString(14, VO.getCarUse());
			pstmt.setString(15, VO.getCarUse_de());
			pstmt.setInt(16, VO.getCarId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}

}
