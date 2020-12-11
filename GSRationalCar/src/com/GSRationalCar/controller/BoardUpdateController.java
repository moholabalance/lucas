package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.GSRationalCar.dao.BoardDAO;
import com.GSRationalCar.vo.BoardVO;
//글 수정 요청 발생 시 수정페이지로 이동하는 컨트롤러
public class BoardUpdateController implements Controller {

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String boardId = req.getParameter("boardId");
		BoardDAO boardDAO = BoardDAO.getInstance();
		BoardVO boardVO = new BoardVO();
		boardVO = boardDAO.selectById(boardId);

		req.setAttribute("boardupdate", boardVO);
		RequestDispatcher rd = req.getRequestDispatcher("/views/boardupdate.jsp");
		rd.forward(req, resp);

	}

}
