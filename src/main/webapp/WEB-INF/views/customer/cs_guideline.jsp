<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>cs_guideline</title>
    <!-- 부트스트랩 -->
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--    <script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>

   <style>
   #card_1 {
     border: 2px solid rgba(0, 0, 0, 0.125);
     border-color: #f3969a;
   }
   
   #card_2 {
     border: 2px solid rgba(0, 0, 0, 0.125);
     border-color: #78c2ad;
   }
   
   </style>

</head>
<body>
<div class="row">
<div class="col-sm-8 offset-sm-2">
   <div class="card" id="card_1">
     <div class="card-body">
       <h4 class="card-title" style="color:#f3969a"><b>가이드라인</b></h4>
       <p class="card-text">
                   1. 질문은 구체적으로 해주세요!<br><br> 2. 토론을 유발할 가능성이 높은 질문은 피하세요!<br><br> 3.
               질문 내용에 개인정보(실명, 주민번호, 연락처)가 포함되지 않게 작성해주세요!<br><br> 
               4. 추측성 답변은 삼가
               주세요!
       </p>
     </div>
   </div>
   <br>
   <div class="card" id="card_2">
     <div class="card-body">
       <h4 class="card-title" style="color:#78c2ad"><b>EXP(명성)</b></h4>
       <p class="card-text">
            <b>D'sQ</b><br> 게시물 질문 추천 받으면? +10<br> 게시물 답변 추천 받으면? +10<br>
            질문자에게 답변 채택 받으면? +15<br> 게시물 신고 시, -10이고 관리자 승인시 +20<br> <br>
            <br> <b>검색 Tip</b><br> 게시물 질문 추천 받으면? +3<br> 게시물 답변
            추천 받으면? +3<br> 질문자에게 답변 채택 받으면? +5<br>
         </p>
         <table class="table">
            <h2 class="text-center" style="color:#78c2ad"><b>D'sQ 등급</b></h2>
            <thead>
               <tr class="table-primary">
                  <th scope="col">배지</th>
                  <th scope="col">EXP</th>
                  <th scope="col">권한</th>
               </tr>
            </thead>
            <tbody>
               <tr class="table-light">
                  <td><p class="text-muted">
                        <i class="fa fa-thermometer-empty fa-2x" aria-hidden="true"></i>
                     </p></td>
                  <td>0~15</td>
                  <td>게시물 추천 가능</td>
               </tr>
               <tr class="table-light">
                  <td><p class="text-warning">
                        <i class="fa fa-thermometer-quarter fa-2x" aria-hidden="true"></i>
                     </p></td>
                  <td>16~50</td>
                  <td>게시물 답변 가능</td>
               </tr>
               <tr class="table-light">
                  <td><p class="text-primary">
                        <i class="fa fa-thermometer-half fa-2x" aria-hidden="true"></i>
                     </p></td>
                  <td>51~125</td>
                  <td>게시물 신고 가능</td>
               </tr>
               <tr class="table-light">
                  <td><p class="text-secondary">
                        <i class="fa fa-thermometer-three-quarters fa-2x"
                           aria-hidden="true"></i>
                     </p></td>
                  <td>126~500</td>
                  <td>스크랩북 신청 가능</td>
               </tr>
               <tr class="table-light">
                  <td><p class="text-danger">
                        <i class="fa fa-thermometer-full fa-2x" aria-hidden="true"></i>
                     </p></td>
                  <td>501~1000</td>
                  <td>질문에 코멘트 가능</td>
               </tr>
            </tbody>
         </table>
       </p>
     </div>
   </div>
</div>
</div>
</body>
</html>