<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>GS Rational Car</title>
<link rel = "stylesheet" href="/GSRationalCar/resources/css/tablecss.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Varela+Round">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	 background: #ffffff;
	font-family: "Open Sans", sans-serif;
}
.col-center {
	margin: 0 auto;
	float: none !important;
}
.carousel {
	margin: 30px auto 60px;
	padding: 0 80px;
}
.carousel .item {
    text-align: center;
	overflow: hidden;
}
.carousel .item h4 {
	font-family: 'Varela Round', sans-serif;
}
.carousel .item img {
	max-width: 100%;
	display: inline-block;
}
.carousel .item .btn {
	border-radius: 0;
	font-size: 12px;
	text-transform: uppercase;
	font-weight: bold;
	border: none;
	background: #a177ff;
	padding: 6px 15px;
	margin-top: 5px;
}
.carousel .item .btn:hover {
	background: #8c5bff;
}
.carousel .item .btn i {
	font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
}
.carousel .thumb-wrapper {
	margin: 5px;
	text-align: left;
    background: #fff;
    box-shadow: 0px 2px 2px rgba(0,0,0,0.1);
    border : 3px inset #e9b4e6;
    border-radius: 15%;
}
.carousel .thumb-content {
	padding: 15px;
	font-size: 13px;
}
.carousel .carousel-control {
	height: 44px;
	width: 44px;
	background: none;	
    margin: auto 0;
    border-radius: 50%;
    border: 3px solid rgba(0, 0, 0, 0.8);
}
.carousel .carousel-control i {
    font-size: 36px;
    position: absolute;
    top: 50%;
    display: inline-block;
    margin: -19px 0 0 0;
    z-index: 5;
    left: 0;
    right: 0;
    color: rgba(0, 0, 0, 0.8);
	text-shadow: none;
    font-weight: bold;
}
.carousel .carousel-control.left i {
	margin-left: -3px;
}
.carousel .carousel-control.right i {
	margin-right: -3px;
}
.carousel .carousel-indicators {
	bottom: -50px;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	border-radius: 50%;
	margin: 4px;
	border-color: transparent;
}
.carousel-indicators li {	
	background: #ababab;
}
.carousel-indicators li.active {	
	background: #555;
}
.img-responsive{
	width: 100%;
    height: 180px;
    border-top-left-radius: 16%;
    border-top-right-radius: 16%;
}
ul{
            list-style: none;
        }
        a{
            text-decoration: none;
            color : rgb(16, 21, 88);
        }
        nav{
            font-family: 'GmarketSansMedium';   
            text-align : right;
            font-size:20px;
            margin-right: 170px;
        }
        nav li{
            display:inline;
            margin-left:30px;
        }
</style>
</head>
<header style="margin-top:10px; margin-left:10px; margin-right:10px">
	<div style="background-image: url(/GSRationalCar/resources/image/back.png);">
		<a href ="/GSRationalCar/index.jsp"><img id="logo" src="/GSRationalCar/resources/image/gsitm.PNG" alt="logo"></a>
		<img id="logo"src="/GSRationalCar/resources/image/logo.PNG">
    </div>
    <br>
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
<body>
	<div class="header" style="float: left;">
        <label>검색 : </label><input onkeyup="filter()" type="text" id="value" placeholder="이름 또는 연식">
	  </div>
	  <div style="text-align: right; margin-right: 10%;"><button><a id="carcar" href="/GSRationalCar/views/car_form.jsp">매물 등록</a></button></div><br>
<div class="container">
	<div class="row">
		<div class="col-md-10 col-center">
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>   
			<div class="carousel-inner">
				<div class="item active">
					<div class="row">
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/starex.PNG" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
									<h4>스타렉스</h4>
                                    <p>08/08식</p>
                                    <p>SUV</p>
									<a href="/GSRationalCar/views/car_detail1.jsp" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/gomul.PNG" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
									<h4>그레이스</h4>
                                    <p>95/96식</p>
                                    <p>승합차</p>
									<a href="/GSRationalCar/views/car_detail2.jsp" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>
						</div>				
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/mini.PNG" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
									<h4>미니 쿠퍼s</h4>
                                    <p>12/13 식</p>
                                    <p>소형</p>
									<a href="/GSRationalCar/views/car_detail3.jsp" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>					
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/benz.png" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
									<h4>벤츠 E400</h4>
                                    <p>18/19식</p>
                                    <p>준중형</p>
									<a href="#" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/genesis.PNG" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
									<h4>제네시스</h4>
									<p>15/16식</p>
                                    <p>중형</p>
									<a href="#" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/k7.PNG" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
									<h4>K7</h4>
                                    <p>15/16식</p>
                                    <p>중형</p>
									<a href="#" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>					
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/tbl.PNG" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
									<h4>티볼리</h4>
                                    <p>16/17식</p>
                                    <p>소형</p>
									<a href="#" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="/GSRationalCar/resources/image/rxt.PNG" class="img-responsive" alt="">
								</div>
								<div class="thumb-content">
                                    <h4>렉스턴</h4>
                                    <p>03/04식</p>
                                    <p>SUV</p>
									<a href="#" class="btn btn-primary">More <i class="fa fa-angle-right"></i></a>
								</div>						
							</div>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
				<i class="fa fa-angle-left"></i>
			</a>
			<a class="carousel-control right" href="#myCarousel" data-slide="next">
				<i class="fa fa-angle-right"></i>
			</a>
		</div>
		</div>
	</div>
</div>
</body>
	      <script type="text/javascript">//검색 기능 JS
       function filter(){

        var value, name, item, i;

        value = document.getElementById("value").value.toUpperCase();
        item = document.getElementsByClassName("col-sm-4");
        fa = document.getElementsByClassName("carousel-control left");

        for(i=0;i<item.length;i++){ //내용을 검색하고 일치하는 이미지만 표현.
          name = item[i].getElementsByClassName("thumb-content");
          if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
            item[i].style.display = "block";
          }else{
            item[i].style.display = "none";
          }
        }
      }
	  </script>
	        <div style="bottom : 0; left : 0; right: 0; position :absolute; width:100%">
				<footer style="background-image: url(/GSRationalCar/resources/image/back.png); text-align: center;">
					<a id="foot">COPYRIGHT (C)GS ITM CO., LTD. ALL RIGHT</a>
				</footer>
			</div>
</html> 