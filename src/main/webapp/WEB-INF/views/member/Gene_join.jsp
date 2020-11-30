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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mainForm</title>
<!-- 부트스트랩 -->
   <link rel="stylesheet" href="css/bootstrap.css">
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
   integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
   crossorigin="anonymous"></script>
   <script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>
   <script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>
</head>
<body>

   <div class="text-center">
      <a href="#"> <img src="img/D'sQ.png" alt="D's Q"></a>
   </div>
   <br>
   <div class="row">
      <form class="col-sm-6 offset-sm-3" action="joinProcess.me" method="post">
         <fieldset>
         <div class="form-group">
            <label for="exampleInputEmail1"><b>이메일</b></label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="mem_email">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1"><b>비밀번호</b></label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="mem_pw">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword2"><b>비밀번호 확인</b></label>
            <input type="password" class="form-control" id="exampleInputPassword2" name="mem_pwco">
         </div>
         <div class="form-group">
            <label for="name"><b>이름</b></label>
            <input type="text" class="form-control" id="name" name="mem_name">
         </div>
         <div class="form-group">
            <label for="nickname"><b>닉네임</b></label>
            <input type="text" class="form-control" id="nickname" name="mem_nick">
         </div>
         <div class="form-group">
           <label for="tel"><b>전화번호</b></label>
           <div class="form-group">
             <div class="input-group mb-3">
               <input type="text" class="form-control" id="tel" name="mem_tel">
               <div class="input-group-append">
                 <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">인증</button>
               </div>
             </div>
           </div>
         </div>
         
         <!-- Modal -->
         <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
           <div class="modal-dialog">
             <div class="modal-content">
               <div class="modal-header">
                 <h5 class="modal-title" id="exampleModalLabel">인증번호</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                   <span aria-hidden="true">&times;</span>
                 </button>
               </div>
               <div class="modal-body">
                    여기에 랜덤값 넣으면 됩니당. 오케이
               </div>
               <div class="modal-footer">
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
               </div>
             </div>
           </div>
         </div>
         
         <div class="form-group">
            <label for="tel_check"><b>인증번호</b></label>
            <input type="text" class="form-control" id="tel_check">
         </div>
         <br>
         <div class="text-center">
            <button type="submit" class="btn btn-primary btn-lg">회원가입</button>
         </div>
      </fieldset>
      </form>
   </div>

</body>
<script>




</script>
</html>