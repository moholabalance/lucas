<%@ page language="java" contentType="text/html; charsest=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
<title>Insert title here</title>

<link
	href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/GSRationalCAr/resources/css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/GSRationalCar/resources/css/css/styles.css" />

</head>
<body><!--  로그인 화면-->
<!--값이 비어있으면 세션에서 에러메세지 반환 -->

<%if(session.isNew() || session.getAttribute("id") == null) {%>
<% 
	String msg = (String)request.getAttribute("error");
	if(msg == null) msg="";
	%>
	<%= msg %>
<!-- 로그인 폼 sesseion.jsp로 값 전송-->
	<section class="container">
		<section class="login-form">
			
				<div class="newform">
				${result }
				<form action="/GSRationalCar/memberLogin.do" method="post">
						<input type="text" name="id" placeholder="ID" required class="form-control input-lg" />
						<input type="password" name="passwd" placeholder="Password" required class="form-control input-lg" /><br>
						<input type="submit" name="go" class=" btn btn-lg btn-primary btn-block" value="로그인"/>
						<input type ="hidden" name="job" value="login"/>
						</form>
		<!-- 로그인 폼 sesseion.jsp로 값 전송 끝-->
					<div style="text-align: center;">
						<a href="/GSRationalCar/views/join.jsp">Create account</a>
					</div>
				</div>
			
		</section>
	</section>
		<%} else{ %>
		<a>이미 로그인 되어 있습니다.</a>
	<%} %>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="/GSRationalCar/resources/js/llogin.js"></script><!-- 로그인 정보를 처리하는 로컬스토리지 JS, 현재 세션을 유지하는 JSP와 로컬스토리지가 담긴 JS 호환문제로 로컬스토리지를 사용하지 않고 있습니다. -->
</body>
</html>