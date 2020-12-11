package com.GSRationalCar.controller;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.GSRationalCar.dao.BoardDAO;
//글 삭제 요청 관리 컨트롤러
public class BoardDeleteController implements Controller {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String boardId = req.getParameter("boardId");
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.del(Integer.parseInt(boardId));

		resp.sendRedirect("/GSRationalCar/boardlist.do?num=1");

	}

}
