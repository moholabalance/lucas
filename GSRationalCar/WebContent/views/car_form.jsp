<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/cardetail.css">
    <title>cardetail</title>
</head>
<body>
    <header>
        <h2>매물 등록</h2>
    </header>
    <div>
        <div style="height: 320px;">
            <div class="gallery">
                <img>
            </div>
        <div>
            <table id="table1">
                <tr>
                    <th>판매자</th>
                    <td><input></td>
                </tr>
                <tr>
                    <th>차종</th>
                    <td><input></td>
                </tr>
                <tr>
                    <th>차량번호</th>
                    <td><input></td>
                </tr>
                <tr>
                    <th>연식</th>
                    <td><input></td>
                </tr>
                <tr>
                    <th>구입시기</th>
                    <td><input></td>
                </tr>
            </table>
        </div>
        </div><br>
        <div style="margin-left:100px;"><button>이미지업로드</button></div><br>
       
    
        <div>
            <table id="table2">
                <thead>
                  <tr>
                    <th></th>
                    <th>상태</th>
                    <th>항목/해당부품</th>
                    <th>특이사항</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>주행거리 계기상태</th>
                    <td><input></td>
                    <td><input></td>
                    <td><input></td>
                  </tr>
                  <tr>
                    <th>주행거리</th>
                    <td><input></td>
                    <td><input></td>
                    <td><input></td>
                  </tr>
                  <tr>
                    <th>배출가스</th>
                    <td><input></td>
                    <td><input></td>
                    <td><input></td>
                  </tr>
                  <tr>
                    <th>튜닝</th>
                    <td><input></td>
                    <td><input></td>
                    <td><input></td>
                  </tr>
                  <tr>
                    <th>특별이력</th>
                    <td><input></td>
                    <td><input></td>
                    <td><input></td>
                  </tr>
                  <tr>
                    <th>색상</th>
                    <td><input></td>
                    <td><input></td>
                    <td><input></td>
                  </tr>
                  <tr>
                    <th>용도</th>
                    <td><input></td>
                    <td><input></td>
                    <td><input></td>
                  </tr>
                </tbody>
           </table>
        </div>
    </div><br>
    <div style="Margin-left:20%"><button style="width : 100px; height : 40px; text-decoration: none; font-size: 20px;" onclick="carform()">등록</button></div>
   
</body>
<script src="/GSRationalCar/resources/js/clickmotion.js"></script>
</html>