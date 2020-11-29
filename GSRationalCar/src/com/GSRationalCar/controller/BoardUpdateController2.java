package com.GSRationalCar.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.GSRationalCar.dao.BoardDAO;
import com.GSRationalCar.vo.BoardVO;

public class BoardUpdateController2 implements Controller{
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String boardId = req.getParameter("boardId");
		String boardTitle = req.getParameter("boardTitle");
		String boardContent = req.getParameter("boardContent");
		System.out.println("이건?");
		BoardDAO boardDAO = BoardDAO.getInstance();
		BoardVO boardVO = new BoardVO();
		boardVO.setBoardId(Integer.parseInt(boardId));
		boardVO.setBoardTitle(boardTitle);
		boardVO.setBoardContent(boardContent);
		
		boardDAO.update(boardVO);
		resp.sendRedirect("/GSRationalCar/board.do");
	}
	}


