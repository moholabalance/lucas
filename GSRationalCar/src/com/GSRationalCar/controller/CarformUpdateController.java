package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.GSRationalCar.dao.CarFormDAO;
import com.GSRationalCar.vo.CarformVO;
//매물 수정요청 시 실행되는 컨트롤러, 매물 수정 페이지로 이동시켜준다.
public class CarformUpdateController implements Controller{

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String carId = req.getParameter("carId");
		CarFormDAO DAO = CarFormDAO.getInstance();
		CarformVO VO = new CarformVO();
		VO = DAO.selectById(carId);

		req.setAttribute("carupdate", VO);

		HttpUtil.forward(req, resp, "/views/car_formUpdate.jsp");
		return;
	}
}
