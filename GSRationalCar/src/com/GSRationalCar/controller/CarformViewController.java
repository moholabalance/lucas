package com.GSRationalCar.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.GSRationalCar.dao.CarFormDAO;
import com.GSRationalCar.vo.CarformVO;

//매물 상세조회 요청 발생시 실행되는 컨트롤러
public class CarformViewController implements Controller {

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String carId = req.getParameter("carId");
		
		CarFormDAO DAO = CarFormDAO.getInstance();
		CarformVO VO = new CarformVO();
		DAO.hitUpdate(carId);
		VO = DAO.selectById(carId);

		req.setAttribute("carview", VO);

		RequestDispatcher rd = req.getRequestDispatcher("/views/cardetail.jsp");
		rd.forward(req, resp);
	}
	

}
