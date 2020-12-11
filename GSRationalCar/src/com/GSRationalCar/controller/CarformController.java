package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;
public class CarformController implements Controller {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpUtil.forward(req, resp, "/views/market.jsp");
		return;

}
}
