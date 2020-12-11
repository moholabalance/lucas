<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><!-- 세션해제페이지 -->
</head>
<body>
	<%
		if (request.getMethod().equals("GET")) {//세션에 아이디가 남아있을 경우 해제 시켜주는 함수.
		if (session != null && session.getAttribute("id") != null) {
			session.invalidate();
			RequestDispatcher wd = request.getRequestDispatcher("/index.do");//
			wd.forward(request, response);//세션 해제 후 메인화면으로 이동.
		} else {
			out.print("현재 로그인 상태가 아닙니다.");
	%>
	<a href="/index.do">홈으로 이동</a>
	<%
		}
	}
	%>
</body>
</html>