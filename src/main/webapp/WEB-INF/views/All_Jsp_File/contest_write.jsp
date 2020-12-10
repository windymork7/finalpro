<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>contest_write</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 css 추가 -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- 해외 부트스트랩 js -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
   integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
   integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
   crossorigin="anonymous"></script>

<style>
#c_left {
   float: left;
}

#c_right {
   float: right;
}

#guideline {
   border: 2px solid rgba(0, 0, 0, 0.125);
}
</style>
</head>
<body>

   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
            <form>
               <fieldset>
                  <div>
                     <div id="c_left">
                        <legend>공모전</legend>
                     </div>
                     <div id="c_right">
                        <button type="submit" class="btn btn-primary">등록하기</button>
                     </div>
                  </div>
                  <br>

            <hr class="my-4">                  
                  <div class="form-group">
                     <div class="container">
                     
                     <table class="table">

                 <tbody>
               
                   <tr class="table-light">
                     <th scope="row">주최</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_1"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">접수기간</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_2"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">참가대상</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_3"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">응모분야</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_4"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">시상규모</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_5"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">1등시상금</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_6"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">문의(전화)</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_7"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">이메일</th>
                     <td><input type="email" class="form-control form-control-sm" id="contest_8"></td>
                   </tr>
                   <tr class="table-light">
                     <th scope="row">홈페이지</th>
                     <td><input type="text" class="form-control form-control-sm" id="contest_9"></td>
                   </tr>
               
                 </tbody>
               </table>
                     
                     </div>
                  </div>
                  
                  <div class="form-group">
                     <textarea class="form-control" id="content" rows="20">
공모전 글 내용
                     </textarea>
                  </div>

                  <div class="form-group">
                     <label for="exampleInputFile" class="text-muted">이미지 Upload</label> 
                     <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                  </div>

               </fieldset>
            </form>
         </div>
         
         <div class="col-sm-3">
            
            <div class="card border-secondary mb-3" style="max-width: 20rem;"
               id="guideline">
               <div class="card-header">
                  <b>유의사항</b>
               </div>
               <div class="card-body">
                  <p>1. 사업자 등록 후 게시할 수 있습니다.</p>
                  <p>2. IT관련 공모전만 게시 가능합니다.</p>
                  <p>3. 등록순으로 노출됩니다.</p>
               </div>
            </div>

         </div>
      </div>
   </div>
</body>
</html>