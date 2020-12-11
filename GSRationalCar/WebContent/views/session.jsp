<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.GSRationalCar.vo.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<title>Result</title> <!-- 세션유지 페이지 -->
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<%
		MemberVO vo = (MemberVO) request.getAttribute("member");
	session.setAttribute("id", vo.getId());
	request.setAttribute("id", vo.getId());
	RequestDispatcher rd = request.getRequestDispatcher("/index.do");
	rd.forward(request, response);//세션이 유지된 메인화면으로 이동.
	%>


</body>
<script src="/GSRationalCar/resources/js/login.js"></script>
<script src="/GSRationalCar/resources/js/join.js"></script>
</html>