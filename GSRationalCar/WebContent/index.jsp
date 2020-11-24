<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/GSRationalCar/resources/css/tablecss.css">
    <title>GS Rational Car</title>
</head>
<body>
    <header>
        <div style="background-image: url(/GSRationalCar/resources/image/back.png);">
            <a href ="index.jsp"><img id="logo" src="/GSRationalCar/resources/image/gsitm.PNG" alt="logo"></a>
            <img id="logo"src="/GSRationalCar/resources/image/logo.PNG">
        </div>
        <div style="background-color: rgba(204, 204, 204, 0.938);">
        <nav>
            <ul>
                <li><a href="index.jsp">HOME</a></li>
                <li><a href="/GSRationalCar/views/market.jsp">장터</a></li>
                <li><a href="/GSRationalCar/views/review.jsp">후기</a></li>
            </ul>
        </nav>
        </div>
    </header>
    
<div style="height: 500px;">
<div style="width: 55%; height: 500px; float: left;">
    <img id="target" src="/GSRationalCar/resources/image/maincar1.png" style="width:100%; height: 100%;">
</div>
<div style="float: left; width:40%; height:500px; text-align: center;">
    <br>
    <div style="height: 200px; margin-right: 10px; margin-left: 100px;">
    <a>현재 등록되어있는 매물</a><br>
    <a id="counter3" style="font-size: 40px; color: cadetblue;"></a>
    </div>
    <div style="height: 300px;">
        <div style="float : left; margin-left: 150px;">
            <a href="/GSRationalCar/views/join.jsp">
                <img src="/GSRationalCar/resources/image/addlog.png" onmouseout="this.src='/GSRationalCar/resources/image/addlog.png'" onmouseover="this.src='/GSRationalCar/resources/image/addlogon.png'" style="width:150px;" >
            </a>
        </div>
        <div>
            <a href="/GSRationalCar/views/login.jsp">
                <img src="/GSRationalCar/resources/image/login.png" onmouseout="this.src='/GSRationalCar/resources/image/login.png'" onmouseover="this.src='/GSRationalCar/resources/image/loginon.png'" style="width:150px;">
            </a>
        </div>
    </div>
 
    </div>
</div>

    <div style="bottom : 0; left : 0; position : absolute; width:100%">
        <footer style="background-image: url(/GSRationalCar/resources/image/back.png); text-align: center;">
            <a id="foot">COPYRIGHT (C)GS ITM CO., LTD. ALL RIGHT</a>
        </footer>
    </div>
</body>
<script src="/GSRationalCar/resources/js/count.js"> </script>
<script src="/GSRationalCar/resources/js/clickmotion.js"> </script>
<script type="text/javascript">

    var obTimeOut;
    var ObjectArray = new Array();
    ObjectArray[2] ="/GSRationalCar/resources/image/maincar2.png";
    ObjectArray[1] ="/GSRationalCar/resources/image/maincar1.png";
    var nObjectCnt =0;

    function ShowDefaultRotate() // 스스로 자신을 호출하는 재귀함수 (Recursive Function)

{

	nObjectCnt++;



	if( nObjectCnt < ObjectArray.length )

	{

		document.getElementById("target").src = ObjectArray[nObjectCnt];		 

		obTimeOut = setTimeout("ShowDefaultRotate()",2000);  // 1초후에 자기자신을 호출 

	}

	else

	{

        nObjectCnt=0;
        ShowDefaultRotate();

	}		
}


function startAnimation()
{
      obTimeOut = window.setTimeout(ShowDefaultRotate,100); // 윈도우 로드 후 0.1초 후에 반복함수를 호출합니다.
}
 window.onload = startAnimation; 
</script>

</html>