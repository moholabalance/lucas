<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.GSRationalCar.dao.CarFormDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="/GSRationalCar/resources/css/tablecss.css">
	<script src="../lib/jquery-3.5.1.min.js"></script>
	<script src="../lib/jquery.counterup.min.js"></script>
	<script>
	   jQuery(document).ready(function($) {
           $('.counter').counterUp({
               delay: 10,
               time: 1000
           });
       });
	</script>
<title>GS Rational Car</title>
</head>
<header>
	<div
		style="background-image: url(/GSRationalCar/resources/image/back.png);">
		<!-- 헤더 로고 -->
		<a href="/GSRationalCar/index.do"><img id="logo"
			src="/GSRationalCar/resources/image/gsitm.PNG" alt="logo"></a> <img
			id="logo" src="/GSRationalCar/resources/image/logo.PNG">
	</div>
	<!-- 헤더 로고 끝 -->
	<div style="background-color: rgba(204, 204, 204, 0.938);">
		<nav>
			<!-- 상단 메뉴 로그인 한 회원에게만 보여진다.-->
			<ul>
				<c:if test="${id != null || id == 'admin' }">
					<li><a href="/GSRationalCar/index.do">HOME</a></li>
					<li><a href="/GSRationalCar/carlist.do?num=1">장터</a></li>
					<li><a href="/GSRationalCar/boardlist.do?num=1">후기</a></li>
					<li><a href="/GSRationalCar/views/sessionout.jsp">로그아웃</a></li>
				</c:if>
				<li></li>
			</ul>
		</nav>
		<!-- 상단 메뉴 끝 -->
	</div>
</header>

<div style="height: 500px;">
	<div style="width: 55%; height: 500px; float: left;">
		<img id="target" src="/GSRationalCar/resources/image/maincar1.png"
			style="width: 100%; height: 100%;">
	</div>
	<div
		style="float: left; width: 40%; height: 500px; text-align: center;">
		<br>
		<div style="height: 200px; margin-right: 10px; margin-left: 100px;">
			<a>현재 등록되어있는 매물</a><br>
				<span class="counter"style="font-size: 40px; color: cadetblue;">${count}</span>
		</div>
		<c:if test="${id == null }">
			<div style="height: 300px;">
				<div style="float: left; margin-left: 150px;">
					<a href="/GSRationalCar/views/join.jsp"> <img
						src="/GSRationalCar/resources/image/addlog.png"
						onmouseout="this.src='/GSRationalCar/resources/image/addlog.png'"
						onmouseover="this.src='/GSRationalCar/resources/image/addlogon.png'"
						style="width: 150px;">
					</a>
				</div>
				<div>
					<a href="/GSRationalCar/views/login.jsp"> <img
						src="/GSRationalCar/resources/image/login.png"
						onmouseout="this.src='/GSRationalCar/resources/image/login.png'"
						onmouseover="this.src='/GSRationalCar/resources/image/loginon.png'"
						style="width: 150px;">
					</a>
				</div>
			</div>
		</c:if>
		<c:if test="${id != null && id != 'admin' }">

			<h2>${id}님환영합니다.</h2>
		</c:if>
		<c:if test="${id == 'admin' }">

			<h2>관리자 계정으로 접속하셨습니다.</h2>
		</c:if>
	</div>
</div>

<div style="bottom: 0; left: 0; position: absolute; width: 100%">
	<footer
		style="background-image: url(/GSRationalCar/resources/image/back.png); text-align: center;">
		<a id="foot">COPYRIGHT (C)GS ITM CO., LTD. ALL RIGHT</a>
	</footer>
</div>
</body>
<script src="/GSRationalCar/resources/js/count.js">
	
</script>
<!-- 매물갯수 카운팅 되는 효과구현 JS -->
<script type="text/javascript">
	var obTimeOut;
	var ObjectArray = new Array();
	ObjectArray[2] = "/GSRationalCar/resources/image/maincar2.png";
	ObjectArray[1] = "/GSRationalCar/resources/image/maincar1.png";
	var nObjectCnt = 0;

	function ShowDefaultRotate() // 스스로 자신을 호출하는 재귀함수 (Recursive Function)

	{

		nObjectCnt++;

		if (nObjectCnt < ObjectArray.length)

		{

			document.getElementById("target").src = ObjectArray[nObjectCnt];

			obTimeOut = setTimeout("ShowDefaultRotate()", 2000); // 1초후에 자기자신을 호출 

		}

		else //무한루프 구현을 통해 이미지가 계속 바뀌도록 구현

		{

			nObjectCnt = 0;
			ShowDefaultRotate();

		}
	}

	function startAnimation() {
		obTimeOut = window.setTimeout(ShowDefaultRotate, 100); // 윈도우 로드 후 0.1초 후에 반복함수를 호출합니다.
	}
	window.onload = startAnimation;
	
	$(function() {
		  var cnt0 = 0;

		  counterFn();

		  function counterFn() {

		    id0 = setInterval(count0Fn, 100);

		    function count0Fn() {
		      cnt0++;
		      if (cnt0 > 99) {
		        clearInterval(id0);
		      } else {
		        $(".number").text(cnt0);
		      }
		    }
		  }
		});
	

</script>

</html>