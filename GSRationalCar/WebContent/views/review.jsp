<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/GSRationalCar/resources/css/tablecss.css">
    <title>GS Rational Car</title>
    <style>
    </style>
</head>
<body   >
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
                <li><a href="/GSRationalCar/views/review.jsp">후기</a></li>
            </ul>
        </nav>
        </div>
    </header>
        <div id="revieww">
            <div id="reviewDe">
                <div style = "text-align: right; margin-right:17%;">
                <a onclick ="writeRe()"id="writebtn"><img  style ="width:120px;    "src="/GSRationalCar/resources/image/button.PNG"></a>
            </div>
                <!--게시판 목록-->
            <div>
               <table align="center">
                   <thead>
                       <tr>
                           <th>번호</th>
                           <th>제목</th>
                           <th>작성자</th>
                           <th>날짜</th>
                           <th>조회수</th>
                       </tr>
                   </thead>
                   <tbody class="board__contents" id="board-body"></tbody>
                   </table>
                   <div class="board__index-container" id="index-container"></div>
                   <div class="contents__container"></div>
             </div>
            </div>
             <div id="show_form">
                <form class="get_form">

                            <div style="text-align: left; margin-left:40%;">
                                <label for="title">Title</label>
                                <input style = "width : 28%" type ="text" id="title" placeholder="제목을 입력하세요." required><br><br>
                                <label for="name">Name</label>
                                <input style ="width :27%" type="text" id="name" placeholder="이름을 입력하세요." required><br>
                            </div>
                            <div style="margin-left:40%;">
                                <label for="Post" >Post</label><br>
                                <textarea id="post" style ="width : 300px; height : 270px;" placeholder="내용을 입력하세요."></textarea><br><br>
                                <input type="submit" value="저장하기">
                             </div>
                        
                </form>     
            </div>
        </div>
        <div style="bottom : 0; left : 0; right: 0; position : absolute; width:100%">
        <footer style="background-image: url(/GSRationalCar/resources/image/back.png); text-align: center;">
            
            <a id="foot">COPYRIGHT (C)GS ITM CO., LTD. ALL RIGHT</a>
          </footer>
        </div>
    <script src="/GSRationalCar/resources/js/show.js"></script>
    <script src="/GSRationalCar/resources/js/local_storage.js"></script>
</body>
</html>