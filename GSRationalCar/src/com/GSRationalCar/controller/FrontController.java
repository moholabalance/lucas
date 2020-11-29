package com.GSRationalCar.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class FrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	String charset = null;
	HashMap<String, Controller> list = null;
	
	@Override
	public void init(ServletConfig sc) throws ServletException{
		charset = sc.getInitParameter("charset");
		list = new HashMap<String, Controller>();
		list.put("/memberInsert.do", new MemberInsertController());
		list.put("/memberLogin.do", new MemberLoginController());
		list.put("/write.do", new BoardWriteController());
		list.put("/board.do", new BoardController());
		list.put("/boardview.do", new BoardViewController());
		list.put("/boarddelete.do", new BoardDeleteController());
		list.put("/boardupdate.do", new BoardUpdateController());
		list.put("/boardupdate2.do", new BoardUpdateController2());
	}
	 		
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding(charset);
		String url = request.getRequestURI();
		String contextPath = request.getContextPath();
		String path = url.substring(contextPath.length());
		Controller subController = list.get(path);
		subController.execute(request, response);
	}

}
