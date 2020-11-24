<%@ page language="java" contentType="text/html; charsest=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<title>Insert title here</title>
	
	<link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="/GSRationalCAr/resources/css/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/GSRationalCar/resources/css/css/styles.css" />
	
</head>
<body>
<%if(session.isNew() || session.getAttribute("id") == null) {%>
<% 
	String msg = (String)request.getAttribute("error");
	if(msg == null) msg="";
	%>
	<%= msg %>
	<section class="container">
			<section class="login-form">
				<div class="newform">
					<div id="login1">
					<input  type="text" name="id" placeholder="ID" required class="form-control input-lg" />
				</div>
				<div id="login2">
					<input  type="password" name="password" placeholder="Password" required class="form-control input-lg" />
				</div>
					
					<form class=loginbutton>
						<input type="button" name="go" class=" btn btn-lg btn-primary btn-block" value="Sign in">
					</form>
					
					<div style="text-align: center;">
						<a href="/GSRationalCar/views/join.jsp">Create account</a>
					</div>
				</div>
			</section>
	</section>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="/GSRationalCar/resources/js/login.js"></script>
</body>
</html>