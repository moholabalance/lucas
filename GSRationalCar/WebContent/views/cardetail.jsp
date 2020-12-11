<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="/GSRationalCar/resources/css/cardetail.css">
<title>cardetail</title>
</head>
<body>
	<header>
		<h2>중고자동차 성능 상태 점검 기록부</h2>
	</header>
	<div style=" margin-left : 25%;">
		<div style="height: 320px;">
			<!-- 자동차 세부 이미지 확인  -->
			<div class="gallery">
				<img src="/GSRationalCar/fileFolder/${carview.path}">
			</div>
			<div>
				<table id="table1">
					<tr>
						<th>판매자</th>
						<td>${carview.id}</td>
					</tr>
					<tr>
						<th>차종</th>
						<td>${carview.carname}</td>
					</tr>
					<tr>
						<th>차량번호</th>
						<td>${carview.carNum}</td>
					</tr>
					<tr>
						<th>연식</th>
						<td>${carview.carBth}</td>
					</tr>
				</table>
			</div>
		</div>



		<div>
			<table id="table2">
				<thead>
					<tr>
						<th></th>
						<th>상태</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>주행거리</th>
						<td>${carview.carKm}Km</td>
						<td>${carview.carKm_de}</td>
					</tr>
					<tr>
						<th>연료</th>
						<td>${carview.carGas}</td>
						<td>${carview.carGas_de}%</td>
					</tr>
					<tr>
						<th>튜닝</th>
						<td>${carview.carTune}</td>
						<td>${carview.carTune_de}</td>
					</tr>
					<tr>
						<th>사고이력</th>
						<td>${carview.carHis}</td>
						<td>${carview.carHis_de}</td>
					</tr>
					<tr>
						<th>색상/도색유무</th>
						<td>${carview.carColor}</td>
						<td>${carview.carColor_de}</td>
					</tr>
					<tr>
						<th>용도</th>
						<td>${carview.carUse}</td>
						<td>${carview.carUse_de}</td>
					</tr>
		
				</tbody>
				
			</table>
		</div>
	</div>
	<div style="Margin-left: 50%">
	<button type="button"
			onclick="location.href='/GSRationalCar/carlist.do?num=1'">목록</button>
				<c:choose>
				<c:when test="${carview.id == id || id=='admin'}">
					<td><a href="cardelete.do?carId=${carview.carId}">
							<button class="btn1">삭제</button>
					</a></td>
					<td><a href="carupdate.do?carId=${carview.carId}">
							<button class="btn1">수정</button>
					</a></td>
				</c:when>
			</c:choose>
	</div>

</body>
</html>