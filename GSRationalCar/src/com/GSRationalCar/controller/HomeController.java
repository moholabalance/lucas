package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.GSRationalCar.dao.CarFormDAO;

public class HomeController implements Controller {

	
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarFormDAO dao = CarFormDAO.getInstance();
		int count = dao.carformCount();
		req.setAttribute("count", count);
		
		HttpUtil.forward(req, resp, "/index.jsp");
	}

}
