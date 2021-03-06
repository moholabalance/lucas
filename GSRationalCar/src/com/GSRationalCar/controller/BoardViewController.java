package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.GSRationalCar.dao.BoardDAO;
import com.GSRationalCar.vo.BoardVO;
//게시글 상세 조회 요청 발생시 실행되는 컨트롤러
public class BoardViewController implements Controller {

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String boardId = req.getParameter("boardId");
		BoardDAO boardDAO = BoardDAO.getInstance();
		BoardVO boardVO = new BoardVO();
		boardDAO.hitUpdate(boardId);
		boardVO = boardDAO.selectById(boardId);

		req.setAttribute("boardview", boardVO);

		RequestDispatcher rd = req.getRequestDispatcher("/result/view.jsp");
		rd.forward(req, resp);
	}

}
