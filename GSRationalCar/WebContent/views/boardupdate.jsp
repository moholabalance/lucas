<!-- 수정 게시판 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${boardupdate.boardTitle }-게시글 수정</title>
<style>
* {
	margin: 4px 0;
}

.controller {
	padding: 25px 0;
	margin: auto;
	width: 800px;
}

#wriTitle {
	text-align: center;
	background-color: rgb(100, 100, 100);
	width: 800px;
	height: 20px;
	padding: 12px 0;
	color: white;
}

table {
	width: 800px;
	margin: 25px 0;
	padding: 20px;
	border-collapse: collapse;
}

#category {
	width: 100px;
	height: 30px;
}

#title {
	width: 700px;
	height: 24px;
}

textarea {
	width: 800px;
	height: 400px;
}

.button {
	width: 100px;
	padding: 5px 12px;
	border: none;
	background-color: rgb(37, 23, 160);
	color: white;
}

button {
	padding: 5px 12px;
	background-color: white;
	border-color: rgb(180, 180, 180);
	border-width: 1px;
}

textarea {
	resize: none;
}
</style>
</head>
<body>
	<div class="controller">
		<div id="wriTitle">
			<b>게시글 수정</b>
		</div>
		<form action="boardupdate2.do" method="post">
			<table>
				<tr>
					<td>제목</td>
					<td><input type="text" name="boardTitle" required id="title"
						value="${boardupdate.boardTitle }" /></td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="12" cols="50"
							name="boardContent" required>${boardupdate.boardContent }</textarea>
					</td>
				</tr>
				<tr>
					<th align="center"><input type="submit" value="작성"
						class="button"></th>
					<th align="center"><input type="reset" value="수정 초기화"
						class="button"></th>
				</tr>
			</table>
			<div style="display: none;">
				<input type="text" name="boardId" value="${boardupdate.boardId }" />
			</div>
		</form>
	</div>
</body>
</html>