package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.GSRationalCar.dao.CarFormDAO;
//매물 삭제 요청시 실행되는 컨트롤러
public class CarformDeleteController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String carId = req.getParameter("carId");
		CarFormDAO DAO = CarFormDAO.getInstance();
		DAO.del(Integer.parseInt(carId));

		resp.sendRedirect("/GSRationalCar/carlist.do?num=1");
	}

}
