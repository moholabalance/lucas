package com.GSRationalCar.controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.GSRationalCar.service.MemberService;
import com.GSRationalCar.vo.MemberVO;

public class MemberLoginController implements Controller{
	public void execute (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String job = request.getParameter("job");
		String path = null;
		if (job.equals("login"))
			path = "/views/session.jsp";
		
		if (id.isEmpty()||passwd.isEmpty()) {
			request.setAttribute("error", "ID 혹은 Password를 입력해주시기 바랍니다.!");
			HttpUtil.forward(request, response, path);
			return;
		}
		
		MemberService service = MemberService.getInstance();
		MemberVO member = service.memberLogin(id);
		
		
		if(member == null) {
			request.setAttribute("result", "존재하지 않는 계정입니다!");
			HttpUtil.forward(request, response, "views/login.jsp");
			return;
		}
		
		request.setAttribute("member", member);
		
		if(!passwd.equals(member.getPasswd())) {
			request.setAttribute("result", "아이디 비밀번호가 일치하지 않습니다.");
			HttpUtil.forward(request, response, "/views/login.jsp");
		} else if (job.equals("login")) { 
			System.out.print("hi");
			path="/views/session.jsp";
		HttpUtil.forward(request, response, path);
		}
	}

}
