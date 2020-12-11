package com.GSRationalCar.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.GSRationalCar.service.MemberService;
import com.GSRationalCar.vo.MemberVO;

public class MemberInsertController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");

		if (id.isEmpty() || passwd.isEmpty() || name.isEmpty() || phone.isEmpty()) {
			request.setAttribute("error", "모든 항목을 빠짐없이 입력해주시기 바랍니다.");
			HttpUtil.forward(request, response, "/join.jsp");
			return;
		}

		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPasswd(passwd);
		member.setName(name);
		member.setPhone(phone);

		MemberService service = MemberService.getInstance();
		service.memberInsert(member);

		request.setAttribute("id", id);
		HttpUtil.forward(request, response, "/result/memberInsertOutput.jsp");
	}

}