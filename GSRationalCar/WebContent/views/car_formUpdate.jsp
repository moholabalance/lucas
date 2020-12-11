<!-- 등록 매물 수정 게시판 -->
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
	<form action="carupdate2.do" method="post">
	<div>
		<div style="height: 320px;">
			<!-- 자동차 세부 이미지 확인  -->
			<div class="gallery">
				<img src="/GSRationalCar/fileFolder/${carupdate.path}">
			</div>
			<div>
				<table id="table1">
					<tr>
						<th>차종</th>
						<td><input type="text" name="carname" value=${carupdate.carname}></td>
					</tr>
					<tr>
						<th>차량번호</th>
						<td><input type="text" name="carNum" value =${carupdate.carNum}></td>
					</tr>
					<tr>
						<th>연식</th>
						<td><input type="text" name="carBth" value =${carupdate.carBth}></td>
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
						<td><input type="text" name="carKm" value =${carupdate.carKm}>Km</td>
						<td><input type="text" name="carKm_de" value =${carupdate.carKm_de}></td>
					</tr>
					<tr>
						<th>연료</th>
						<td><input type="text" name="carGas" value =${carupdate.carGas}></td>
						<td><input type="text" name="carGas_de" value =${carupdate.carGas_de}>%</td>
					</tr>
					<tr>
						<th>튜닝</th>
						<td>
						<c:choose>
						<c:when test="${carupdate.carTune eq '유'}">
						<input type="checkbox" name="carTune" checked onclick="doOpenCheck2(this);" value ='유'}>유
						<input type="checkbox" name="carTune" onclick="doOpenCheck2(this);"  value ='무'}>무
						</c:when>
							<c:when test="${carupdate.carTune eq '무' }">
						<input type="checkbox" name="carTune" onclick="doOpenCheck2(this);" value ='유'>유
						<input type="checkbox" name="carTune" onclick="doOpenCheck2(this);" checked value ='무'>무
						</c:when>
						<c:otherwise>
							<input type="checkbox" name="carTune" onclick="doOpenCheck2(this);"  value ='유'>유
							<input type="checkbox" name="carTune" onclick="doOpenCheck2(this);" value ='무'>무
						</c:otherwise>
						</c:choose>
						</td>
					
						<td><input type="text" name="carTune_de" value =${carupdate.carTune_de}></td>
						
						
					</tr>
					<tr>
						<th>사고이력</th>
						<td>
						<c:choose>
						<c:when test="${carupdate.carHis eq '유'}">
						<input type="checkbox" name="carHis" checked onclick="doOpenCheck(this);" value ='유'}>유
						<input type="checkbox" name="carHis" onclick="doOpenCheck(this);" value ='무'}>무
						</c:when>
							<c:when test="${carupdate.carHis eq '무' }">
						<input type="checkbox" name="carHis" onclick="doOpenCheck(this);" value ='유'>유
						<input type="checkbox" name="carHis" onclick="doOpenCheck(this);" checked value ='무'>무
						</c:when>
						<c:otherwise>
							<input type="checkbox" name="carHis" onclick="doOpenCheck(this);"  value ='유'>유
							<input type="checkbox" name="carHis"  onclick="doOpenCheck(this);" value ='무'>무
						</c:otherwise>
						</c:choose>
						</td>
					
						<td><input type="text" name="carHis_de" value =${carupdate.carHis_de}></td>
						
						
					</tr>
					<tr>
						<th>색상/도색여부</th>
						<td><input type="text" name="carColor" value =${carupdate.carColor}></td>
							<td>
						<c:choose>
						<c:when test="${carupdate.carColor_de eq '유'}">
						<input type="checkbox" name="carColor_de" checked onclick="doOpenCheck1(this);" value ='유'}>유
						<input type="checkbox" name="carColor_de" onclick="doOpenCheck1(this);" value ='무'}>무
						</c:when>
							<c:when test="${carupdate.carColor_de eq '무' }">
						<input type="checkbox" name="carColor_de" onclick="doOpenCheck1(this);" value ='유'>유
						<input type="checkbox" name="carColor_de" checked onclick="doOpenCheck1(this);" value ='무'>무
						</c:when>
						<c:otherwise>
						<input type="checkbox" name="carColor_de" onclick="doOpenCheck1(this);" value ='유'>유
						<input type="checkbox" name="carColor_de" onclick="doOpenCheck1(this);" value ='무'>무
						</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr>
						<th>용도</th>
						<td><input type="text" name="carUse" value =${carupdate.carUse}></td>
						<td><input type="text" name="carUse_de" value = ${carupdate.carUse_de}></td>
					</tr>
		
				</tbody>
				
			</table>
		</div>
	</div>
	<div style="Margin-left: 20%">
	<input type="submit" value="작성"
						class="button">
						<div style="display : none;">
	<input type="text" name="carId" value="${carupdate.carId }" />
		</div>
	</div>
</form>
</body>
<script type="text/javascript">
function doOpenCheck(chk){
    var obj = document.getElementsByName("carHis");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}
function doOpenCheck1(chk){
    var obj = document.getElementsByName("carColor_de");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}
function doOpenCheck2(chk){
    var obj = document.getElementsByName("carTune");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}
 	</script>
</html>