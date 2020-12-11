<%@page import="java.sql.Timestamp"%>
<%@page import="com.GSRationalCar.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.GSRationalCar.dao.BoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/GSRationalCar/resources/css/tablecss.css">
<title>BOARD</title>
<style>
.controller {
	padding: 25px 0;
	margin: auto;
	width: 840px;
	text-align: center;
}

table {
	width: 840px;
	padding: 10px 0;
	border-collapse: collapse;
	
}
td{
	 white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	}
th {
	background-color: rgb(100, 100, 100);
	color: white;
}

button {
	margin: 4px 0;
	padding: 10px 0;
	width: 840px;
	background-color: rgb(37, 23, 160);
	color: white;
	border: none;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration-line: underline;
}
</style>
</head>
<body>
	<c:set var="page" value="${page }" />
	<c:set var="isEmptyList" value="${isEmptyList }"/>
	<header>
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

	<div class="controller">
		<table>
			<tr>
				<th width="40px">번호</th>
				<th width="150px">제목</th>
				<th width="100px">작성자</th>
				<th width="150px">날짜</th>
				<th width="40px">조회</th>
			</tr>
			<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.boardId }</td>
				<td style="text-align :left;"><b><a 
						href="/GSRationalCar/boardview.do?boardId=${list.boardId } ">${list.boardTitle }</a></b></td>
				<td>${list.id }</td>
				<td>${list.boardDate}</td>
				<td>${list.boardHit }</td>	
				</tr>
			</c:forEach>
			<c:if test="${ isEmptyList eq 0}">
				<tr>	
					<td colspan="5">작성한 게시글이 없습니다.</td>
				</tr>
			</c:if>
		


		</table>
		<div style="display: inline-block; text-align: center; width: 100%">
			<c:if test="${page.prev }">
				<span>[<a href="/GSRationalCar/boardlist.do?num=${page.startPageNum - 1}">이전</a>]
				</span>
			</c:if>
			<c:forEach begin="${page.startPageNum }" end="${page.endPageNum}"
				var="num">
				<span> <c:if test="${select != num}">
						<a href="/GSRationalCar/boardlist.do?num=${num}">${num}</a>
					</c:if> <c:if test="${select == num}">
						<b>${num}</b>
					</c:if>
				</span>
			</c:forEach>
			<c:if test="${page.next }">
				<span>[<a href="/GSRationalCar/boardlist.do?num=${page.endPageNum + 1}">다음</a>]
				</span>
			</c:if>
		</div>

		<p>
			<a href="/GSRationalCar/views/write.jsp"><button>글쓰기</button></a>
		</p>

	</div>
</body>
</html>