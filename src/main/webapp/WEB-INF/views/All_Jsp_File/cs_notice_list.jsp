<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=de0vice-width, initial-scale=1">
<title>cs_notice_list</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>
   
<style>
   a {
      color: #888;
      text-decoration: none;
      background-color: transparent;
   }
   
   a:hover {
      color: #888;
      text-decoration: none;
   }
</style>


</head>
<body>
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-8 offset-sm-2">
            <div class="text-center">
               <legend>
                  <b>공지사항</b>
               </legend>
            </div>
         <!-- 관리자만 등록할 수 있습니다.
            <div class="text-right">
               <button type="button" class="btn btn-primary">글 등록하기</button>
            </div>
            -->

         <hr class="my-4">
         
         <table class="table">
            <thead>
               <tr class="table-secondary">
                  <th scope="col">번호</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성자</th>
                  <th scope="col">작성일</th>
               </tr>
            </thead>
            <tbody>
               <tr class="table-light">
                  <td>2</td>
                  <td><a href="#">2020.12.07 AM 2:00 에 서버 점검이 있을 예정입니다.</a></td>
                  <td>관리자</td>
                  <td>2020.12.06</td>
               </tr>
               <tr class="table-light">
                  <td>1</td>
                  <td><a href="#">명성을 쌓을려고 부적절한 행동을 하게 될 시 조치를 하겠습니다.</a></td>
                  <td>관리자</td>
                  <td>2020.12.05</td>
               </tr>
            </tbody>
         </table>

         <div>
            <br> <br>
            <ul
               class="pagination pagination-lg justify-content-center align-items-center">
               <li class="page-item"><a class="page-link" href="#">&laquo;</a>
               </li>
               <li class="page-item active"><a class="page-link" href="#">1</a>
               </li>
               <li class="page-item"><a class="page-link" href="#">2</a></li>
               <li class="page-item"><a class="page-link" href="#">3</a></li>
               <li class="page-item"><a class="page-link" href="#">4</a></li>
               <li class="page-item"><a class="page-link" href="#">5</a></li>
               <li class="page-item"><a class="page-link" href="#">&raquo;</a>
               </li>
            </ul>
         </div>

      </div>
   </div>
   </div>
</body>
</html>