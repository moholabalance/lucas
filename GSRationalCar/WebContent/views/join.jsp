<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
<title>Insert title here</title>

<link
	href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/GSRationalCar/resources/css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/GSRationalCar/resources/css/css/styles.css" />

</head>
<body>
	${error}
	<section class="container">
		<!-- 회원 가입 작성폼 join.js로 값이 전송된다. -->
		<section class="login-form">
			<div class="newform">
				<form action="/GSRationalCar/memberInsert.do" method="post">
					<input type="text" name="id" placeholder="사용하실 ID를 입력해주세요."
						required class="form-control input-lg" /> <input type="password"
						name="passwd" placeholder="비밀번호를 입력해주세요." required
						class="form-control input-lg" /> <input type="text" name="name"
						placeholder="이름을 입력해주세요." required class="form-control input-lg" />
					<input type="text" name="phone" placeholder="전화번호를 입력해주세요."
						required class="form-control input-lg" /> <input type="submit"
						value="회원가입">
				</form>
			</div>
		</section>
		<!-- 회원 가입 작성폼 끝 -->
	</section>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="/GSRationalCar/resources/js/join.js"></script>
	<!-- 입력받은 아이디 비밀번호를 처리하는 JS, 비밀번호 일치 여부 판별 -->
</body>
</html>