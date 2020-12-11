package com.GSRationalCar.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.GSRationalCar.dao.CarFormDAO;
import com.GSRationalCar.vo.CarformVO;
import com.GSRationalCar.vo.Page2;

public class CarformListController implements Controller {

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarFormDAO dao = CarFormDAO.getInstance();
		Integer num = Integer.parseInt(req.getParameter("num"));
		int count = dao.carformCount();
		
	
		
		Page2 page = new Page2();
		page.setNum(num);
		page.setCount(count);	
		
		ArrayList<CarformVO> list = (ArrayList<CarformVO>) dao.selectList(page.getDisplayPost(), page.getPostNum());
		req.setAttribute("list", list);
		req.setAttribute("select", num);
		req.setAttribute("page", page);
		if(count == 0) {
			//데이터베이스에 데이터 없을 때 로직
			req.setAttribute("isEmptyList", 0);
		} else {
		req.setAttribute("isEmptyList", 1);
		}
		HttpUtil.forward(req, resp, "/views/market.jsp");
		
	}
	

}
