package com.GSRationalCar.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

import com.GSRationalCar.dao.BoardDAO;
import com.GSRationalCar.vo.BoardVO;

public class BoardWriteController implements Controller {


	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		String boardTitle = req.getParameter("boardTitle");
		String boardContent = req.getParameter("boardContent");
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		BoardVO boardVO = new BoardVO();
		boardVO.setBoardId(boardDAO.nextval() +1);
		boardVO.setBoardTitle(boardTitle);
		boardVO.setBoardContent(boardContent);
		boardVO.setId(id);
		
		int wResult = boardDAO.write(boardVO);
		System.out.println(wResult);
		resp.sendRedirect("/GSRationalCar/board.do");
		}
	
	
	
	
}
