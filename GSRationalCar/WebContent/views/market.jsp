<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.GSRationalCar.vo.CarformVO"%>
<%@page import="java.util.List"%>
<%@page import="com.GSRationalCar.dao.CarFormDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<style>
.controller {
	padding: 25px 0;
	margin-left: 15%;
	width: 840px;
	text-align: center;
}

table {
	width: 840px;
	padding: 10px 0;
	border-collapse: collapse;
}

th {
	background-color: rgb(100, 100, 100);
	color: white;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration-line: underline;
}
</style>
<title>GS Rational Car</title>
<link rel="stylesheet" href="/GSRationalCar/resources/css/tablecss.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans|Varela+Round">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<c:set var="page" value="${page }" />
<c:set var="isEmptyList" value="${isEmptyList }" />
<header style="margin-top: 10px; margin-left: 10px; margin-right: 10px">
	<div
		style="background-image: url(/GSRationalCar/resources/image/back.png);">
		<a href="/GSRationalCar/index.do"><img id="logo"
			src="/GSRationalCar/resources/image/gsitm.PNG" alt="logo"></a> <img
			id="logo" src="/GSRationalCar/resources/image/logo.PNG">
	</div>
	<div style="background-color: rgba(204, 204, 204, 0.938);">
		<nav>
			<ul>
				<li><a href="/GSRationalCar/index.do">HOME</a></li>
				<li><a href="/GSRationalCar/carlist.do?num=1">장터</a></li>
				<li><a href="/GSRationalCar/boardlist.do?num=1">후기</a></li>
				<li><a href="/GSRationalCar/views/sessionout.jsp">로그아웃</a></li>
			</ul>
		</nav>
	</div>
</header>
<body>
	<div class="header" style="float: left; margin-left :15%;">
		<i  class="fab fa-searchengin"></i><input onkeyup="searchTable()" type="text"
			id="myInput" placeholder="키워드를 입력하시오.">
	</div>
	<div style="text-align: right; margin-right: 20%;">
		<button class="none">
			<a id="carcar" onclick="popupOpen();">매물 등록</a>
		</button>
	</div>

	<br>


	<div class="controller">
		<table>
			<tr>
				<th width="40px">번호</th>
				<th width="40px">이미지</th>
				<th width="40px">차종</th>
				<th width="40px">카테고리</th>
				<th width="40px">연식</th>
				<th width="40px">판매자명</th>
				<th width="40px">작성일</th>
				<th width="40px">조회수</th>
			</tr>
		</table>
		<table id="myTable">
			<c:forEach var="list" items="${list }">
				<tr>

					<td>${list.carId}</td>
					<td><a href="/GSRationalCar/carview.do?carId=${list.carId }">
							<img style="width: 100px; height: 100px;"
							src="\GSRationalCar\fileFolder/${list.path}">
					</a></td>
					<td>${list.carname }</td>
					<td>${list.carUse_de}</td>
					<td>${list.carBth }</td>
					<td>${list.id}</td>
					<td>${list.carDate }</td>
					<td>${list.carHit }</td>
					</a>
				</tr>
			</c:forEach>
			<c:if test="${ isEmptyList eq 0}">
				<tr>
					<td colspan="8">등록된 매물이 없습니다.</td>
				</tr>
			</c:if>
		</table>
	</div>

	<div style="display: inline-block; text-align: center; width: 100%">
	</div>
	<div style="display: inline-block; text-align: center; width: 100%">
		<c:if test="${page.prev }">
			<span>[<a
				href="/GSRationalCar/carlist.do?num=${page.startPageNum - 1}">이전</a>]
			</span>
		</c:if>
		<c:forEach begin="${page.startPageNum }" end="${page.endPageNum}"
			var="num">
			<span> <c:if test="${select != num}">
					<a href="/GSRationalCar/carlist.do?num=${num}">${num}</a>
				</c:if> <c:if test="${select == num}">
					<b>${num}</b>
				</c:if>
			</span>
		</c:forEach>
		<c:if test="${page.next }">
			<span>[<a
				href="/GSRationalCar/carlist.do?num=${page.endPageNum + 1}">다음</a>]
			</span>
		</c:if>
	</div>

</body>
<script type="text/javascript">
	//페이지 검색기능
	function searchTable() {
		var input, filter, found, table, tr, td, i, j;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("myTable");
		tr = table.getElementsByTagName("tr");
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td");
			for (j = 0; j < td.length; j++) {
				if (td[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
					found = true;
				}
			}
			if (found) {
				tr[i].style.display = "";
				found = false;
			} else {
				tr[i].style.display = "none";
			}
		}
	}

	function popupOpen() {

		var popUrl = "/GSRationalCar/views/car_form.jsp"; //팝업창에 출력될 페이지 URL

		var popOption = "width=800px, height=800px, resizable=no, scrollbars=, status=no;"; //팝업창 옵션(optoin)

		window.open(popUrl, "", popOption);

	}
</script>

</html>
