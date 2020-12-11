<!-- 매물 등록 게시판 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="/GSRationalCar/resources/css/cardetail.css">
<style>
.nrequired{
	width : 80%;
	margin-left : 10%;
	}


input {
	width: 80%;
	margin-left: 5px;
}

.button {
	width: 100px;
	height: 40px;
	text-decoration: none;
	font-size: 20px;
}
.astric{
	color : red;
	margin-left : 10px;
	}
</style>
<title>cardetail</title>
</head>
<body>
	<form name="myForm" method="post"
		enctype="multipart/form-data">
		<header>
			<h2>매물 등록</h2>
		</header>
		<div>
			<div style="height: 320px;">
					<div style="text-alin:left;">
					 <input style ="margin-left :0px; width :300px;"type="file" id="image" name="image" value="이미지 업로드" onchange="setThumbnail(event);"><a class="astric">*</a><a>필수입력사항</a>
					 </div>
					 <div class="gallery" id="image_container">
				</div>
				<div>
					<table id="table1">
						<tr>
							<th>차종</th>
							<td><a class="astric">*</a><input type="text" name="carname" required
								placeholder="ex)스타렉스"></td>
						</tr>
						<tr>
							<th>차량번호</th>
							<td><a class="astric">*</a><input type="text" name="carNum" required
								placeholder="ex)12가 3456"></td>
						</tr>
						<tr>
							<th>연식</th>
							<td><a class="astric">*</a><input type="text" name="carBth" required
								placeholder="ex)년/월"></td>
						</tr>

					</table>
				</div>
			</div>
			<br> <br>


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
							<td><a class="astric">*</a><input type="text" name="carKm" required
								placeholder="12,345 단위는 Km"></td>
							<td><input class="nrequried" type="text" name="carKm_de" placeholder="연평균"></td>
						</tr>
						<tr>
							<th>연료</th>
							<td><a class="astric">*</a><input type="text" name="carGas" required
								placeholder="ex)일산화탄소, 매연"></td>
							<td><input class="nrequried" type="text" name="carGas_de"
								placeholder="배출량%"></td>
						</tr>
						<tr>
							<th>튜닝</th>
							<td><a class="astric">*</a><input type="checkbox" name="carTune"
								value="유" style=" margin-left : 100px; width : 10px;"  onclick="doOpenCheck2(this);">유<input type="checkbox" name="carTune"
								value="무" style="width : 10px 	"  onclick="doOpenCheck2(this);">무</td>
							<td><input class="nrequried" type="text" name="carTune_de"
								placeholder="ex)배기구"></td>
						</tr>
						<tr>
							<th>사고이력</th>
							<td><a class="astric">*</a><input type="checkbox" name="carHis"
								value="유" style=" margin-left : 100px; width : 10px;" onclick="doOpenCheck(this);">유<input type="checkbox" name="carHis"
								value="무" style="width : 10px 	" onclick="doOpenCheck(this);">무</td>
							<td><input class="nrequried" type="text" name="carHis_de" placeholder="파손내용"></td>
						</tr>
						<tr>
							<th>색상/도색유무</th>
							<td><a class="astric">*</a><input type="text" name="carColor" required></td>
							<td><input type="checkbox" name="carColor_de"
								value="유" style=" margin-left : 100px; width : 10px;"  onclick="doOpenCheck1(this);">유<input type="checkbox" name="carColor_de"
								value="무" style="width : 10px 	" onclick="doOpenCheck1(this);">무</td>
						</tr>
						<tr>
							<th>용도</th>
							<td><a class="astric">*</a><input type="text" name="carUse" required
								placeholder="ex)운송, 개인"></td>
							<td><a class="astric">*</a><input type="text" name="carUse_de" required
								placeholder="ex)SUV, 준준형, 중형, 소형, 소형SUV, 승합차"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<br>
		<div style="Margin-left: 45%">
			<input type="submit" value="등록" class="button" onclick="goSubmit();">
		</div>
	</form>
</body>
<script type="text/javascript">
	function setThumbnail(event) {
		var reader = new FileReader();
		reader.onload = function(event) {
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
	
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
	
	function goSubmit() {
	    window.opener.name = "parentPage"; // 부모창의 이름 설정
	    document.myForm.target = "parentPage"; // 타켓을 부모창으로 설정
	    document.myForm.action = "/GSRationalCar/carformwrite.do";
	    document.myForm.submit();
	    self.close();
	}
	
</script>
<script src="/GSRationalCar/resources/js/clickmotion.js"></script>
</html>