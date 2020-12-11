package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.GSRationalCar.dao.CarFormDAO;
import com.GSRationalCar.vo.CarformVO;
//매물 수정 시 수정된 값을 db로 전달하고 출력해주는 컨트롤러
public class CarformUpdateController2 implements Controller {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String carId = req.getParameter("carId");
		String carname = req.getParameter("carname");
		String carNum = req.getParameter("carNum");
		String carBth = req.getParameter("carBth");
		String carKm = req.getParameter("carKm");
		String carKm_de = req.getParameter("carKm_de");
		String carGas = req.getParameter("carGas");
		String carGas_de = req.getParameter("carGas_de");
		String carTune = req.getParameter("carTune");
		String carTune_de = req.getParameter("carTune_de");
		String carHis = req.getParameter("carHis");
		String carHis_de = req.getParameter("carHis_de");
		String carColor = req.getParameter("carColor");
		String carColor_de = req.getParameter("carColor_de");
		String carUse = req.getParameter("carUse");
		String carUse_de = req.getParameter("carUse_de");
		
		CarFormDAO DAO = CarFormDAO.getInstance();
		CarformVO VO = new CarformVO();
		VO.setCarId(Integer.parseInt(carId));
		VO.setCarname(carname);
		VO.setCarNum(carNum);
		VO.setCarKm(carKm);
		VO.setCarBth(carBth);
		VO.setCarKm_de(carKm_de);
		VO.setCarGas(carGas);
		VO.setCarGas_de(carGas_de);
		VO.setCarTune(carTune);
		VO.setCarTune_de(carTune_de);
		VO.setCarHis(carHis);
		VO.setCarHis_de(carHis_de);
		VO.setCarColor(carColor);
		VO.setCarColor_de(carColor_de);
		VO.setCarUse(carUse);
		VO.setCarUse_de(carUse_de);

		DAO.update(VO);
		resp.sendRedirect("/GSRationalCar/carlist.do?num=1");
	}
}