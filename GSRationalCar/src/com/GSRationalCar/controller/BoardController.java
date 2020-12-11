package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class BoardController implements Controller {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpUtil.forward(req, resp, "/result/board.jsp");
		return;
	}

}
