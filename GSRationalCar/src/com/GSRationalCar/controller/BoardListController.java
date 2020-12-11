package com.GSRationalCar.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.GSRationalCar.dao.BoardDAO;
import com.GSRationalCar.vo.BoardVO;
import com.GSRationalCar.vo.Page;

public class BoardListController implements Controller{

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BoardDAO dao = BoardDAO.getInstance();
		Integer num = Integer.parseInt(req.getParameter("num"));
		int count = dao.boardCount();
	
		
		
		
		Page page = new Page();
		page.setNum(num);
		page.setCount(count);	
		
		ArrayList<BoardVO> list = (ArrayList<BoardVO>) dao.selectList(page.getDisplayPost(), page.getPostNum());
		req.setAttribute("list", list);
		req.setAttribute("select", num);
		req.setAttribute("page", page);
		if(count == 0) {
			//데이터베이스에 데이터 없을 때 로직
			req.setAttribute("isEmptyList", 0);
		}else {
		req.setAttribute("isEmptyList", 1);
		}
		HttpUtil.forward(req, resp, "/result/board.jsp");
	}

}
