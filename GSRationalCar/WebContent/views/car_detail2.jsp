<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/GSRationalCar/resources/css/cardetail.css">
    <title>cardetail</title>
</head>
<body>
    <header>
        <h2>중고자동차 성능 상태 점검 기록부</h2>
    </header>
    <div>
        <div style="height: 320px;"><!-- 자동차 세부 이미지 확인  -->
            <div class="gallery">
            <!-- 이미지에 마우스 커서 올리면 이미지 전환 -->
                <img src="/GSRationalCar/resources/image/gomul.PNG" onmouseout="this.src='/GSRationalCar/resources/image/gomul.PNG'" onmouseover="this.src='/GSRationalCar/resources/image/gomul.gif'">
            </div>
        <div>
            <table id="table1">
                <tr>
                    <th>판매자</th>
                    <td>다비드</td>
                </tr>
                <tr>
                    <th>차종</th>
                    <td>그레이스</td>
                </tr>
                <tr>
                    <th>차량번호</th>
                    <td>33오 1122</td>
                </tr>
                <tr>
                    <th>연식</th>
                    <td>1995년</td>
                </tr>
                <tr>
                    <th>구입시기</th>
                    <td>2000년</td>
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
                    <th>항목/해당부품</th>
                    <th>특이사항</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>주행거리 계기상태</th>
                    <td>양호</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>주행거리</th>
                    <td>보통</td>
                    <td>278,156Km</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>배출가스</th>
                    <td>매연</td>
                    <td>2%</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>튜닝</th>
                    <td>없음</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>특별이력</th>
                    <td>없음</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>색상</th>
                    <td>초록색</td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>용도</th>
                    <td>운송업</td>
                    <td></td>
                    <td>학원차량</td>
                  </tr>
                </tbody>
           </table>
        </div>
    </div>
   <div style="Margin-left:20%"><button type ="button" onclick="location.href='/GSRationalCar/views/market.jsp'">목록</button></div>

   
</body>
</html>