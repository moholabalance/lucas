
<%@page import="java.sql.Timestamp"%>
<%@page import="com.GSRationalCar.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.GSRationalCar.dao.BoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="/GSRationalCar/resources/css/tablecss.css">
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
    <header>
        <div style="background-image: url(/GSRationalCar/resources/image/back.png);">
            <a href ="/GSRationalCar/index.jsp"><img id="logo" src="/GSRationalCar/resources/image/gsitm.PNG" alt="logo"></a>
            <img id="logo"src="/GSRationalCar/resources/image/logo.PNG">
        </div>
        <div style="background-color: rgba(204, 204, 204, 0.938);">
        <nav>
            <ul>
            <li><a href="/GSRationalCar/index.jsp">HOME</a></li>
                <li><a href="/GSRationalCar/views/market.jsp">장터</a></li>
                <li><a href="/GSRationalCar/result/board.jsp">후기</a></li>
                <li><a href="/GSRationalCar/views/sessionout.jsp">로그아웃</a></li>
            </ul>
        </nav>
        </div>
    </header>
<%
BoardDAO boardDAO = BoardDAO.getInstance();
List<BoardVO> list = boardDAO.selectList();
%>
<div class="controller">
<table>
<tr>
<th width="40px">번호</th>
<th width="150px">제목</th>
<th width="100px">작성자</th>
<th width="150px">날짜</th>
<th width="40px">조회</th>
</tr>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd, hh:mm:ss");
int count = 0;
for (BoardVO b : list) {
	String stDate = "";
	Timestamp tDate = b.getBoardDate();
	if (tDate != null) {
		stDate = sdf.format(tDate);
	}
	
	%>
	<tr>
	<td><%=b.getBoardId() %></td>
	<td><b><a href="/GSRationalCar/boardview.do?boardId=<%=b.getBoardId() %> "><%=b.getBoardTitle() %></a></b></td>
	<td><%=b.getId() %></td>
	<td><%=stDate %></td>
	<td><%=b.getBoardHit() %></td>
	</tr>
	<%
	count++;
}
if (count == 0) {
	%>
		<tr><td colspan="5">작성한 게시글이 없습니다.</td></tr>		
	<%
}
System.out.println("현재 게시글 " + count + "개");
%>
</table>
<p>
<a href="/GSRationalCar/views/write.jsp"><button>글쓰기</button></a>
</p>
</div>
</body>
</html>