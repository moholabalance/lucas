<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/tablecss.css">
    <style>
        .inputlabel{
            width : 280px;
            height: 30px;
            margin-top: 30px;
        }
    </style>
    <title>Document</title>
</head>
<body>
    <header>
        <div style="background-image: url(image/back.png);">
            <a href ="main.html"><img id="logo" src="image/gsitm.PNG" alt="logo"></a>
            <img id="logo"src="image/logo.PNG">
        </div>
        <div style="background-color: rgba(204, 204, 204, 0.938);">
        <nav>
            <ul>
                <li><a href="main.html">HOME</a></li>
            </ul>
        </nav>
        </div>
    </header>
    <div style="width: 100%; height: 100%; margin-left: 35%;">
        <div style="border: 1px solid black;height: 400px;; width: 400px; padding:20px; background-color: rgb(245, 253, 169);">
                <div id = "first">   
                    <label style="margin-right: 52px;">ID</label>
                    <input id="id" type="ID" placeholder="ID를 입력하세요."><br><br>
                </div>
                <div id="second">
                    <label>Password</label>
                    <input id = "password" type="text" placeholder="비밀번호를 입력하세요."><br><br>
                </div> 
                <form class="inbutton">             
                <input type = "submit" value ="회원가입">
                </form>
        </div>
     

    </div>
</body>
<script src="js/clickmotion.js"></script>
<script src="js/join.js">
</script>
</html>