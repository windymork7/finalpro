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
<title>myPage_update</title>
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
</head>
<body>
   <div class="text-center">
      <a href="#"> <img src="img/D'sQ.png" alt="D'sQ"></a>
      <legend>
         <b>계정 설정</b>
      </legend>
   </div>

   <div class="row">
      <div class="col-sm-6 offset-sm-3">
         <form action="mypageUpdateAction.my">
            <fieldset>

               <div class="form-group">
                  <label for="email"><b>이메일</b></label>
                   <input type="email" class="form-control" id="email" name="mem_email" value="${mem.mem_email}" readonly>
               </div>

               <div class="form-group">
                  <label for="pw"><b>현재 비밀번호</b></label>
                     <div class="form-group">
                     <div class="input-group mb-3">
                        <input type="password" class="form-control" id="pw" name="mem_pw">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-secondary"
                              data-toggle="modal" data-target="#Modal_1">확인</button>                        
                        </div>
                     </div>
                     </div>
               </div>
               
               <!-- Modal -->
               <div class="modal fade" id="Modal_1" tabindex="-1"
                  aria-labelledby="Modal_1" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="Modal_1">비밀번호 검사</h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">확인되었습니다.</div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        </div>
                     </div>
                  </div>
               </div>
               
               
               <!-- Modal -->
               <!--
               <div class="modal fade" id="Modal_1" tabindex="-1"
                  aria-labelledby="Modal_1" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="Modal_1">비밀번호 검사</h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">비밀번호가 일치하지 않습니다.</div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        </div>
                     </div>
                  </div>
               </div>
               -->
               
               <!-- 비밀번호 인증되면 보임
               <div class="form-group">
                  <label for="new_pw1"><b>새 비밀번호</b></label> <input type="password"
                     class="form-control" id="new_pw1">
               </div>
               
               <div class="form-group">
                  <label for="new_pw2"><b>새 비밀번호 확인</b></label> <input type="password"
                     class="form-control" id="new_pw2">
               </div>
               -->
               
               <div class="form-group">
                  <label for="name"><b>이름</b></label> 
                  <input type="text" class="form-control" id="name" name="mem_name" placeholder="${mem.mem_name}">
               </div>
               
               
               <div class="form-group">
                  <label for="nickname"><b>닉네임</b></label> 
                  <input type="text" class="form-control" id="nickname" name="mem_nick" placeholder="${mem.mem_nick}">
               </div>


               <div class="form-group">
                  <label for="tel"><b>전화번호</b></label>
                  <div class="form-group">
                     <div class="input-group mb-3">
                        <input type="text" class="form-control" id="tel" name="mem_tel" placeholder="새 전화번호">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-secondary"
                              data-toggle="modal" data-target="#exampleModal3">인증</button>
                        </div>
                     </div>
                  </div>
               </div>

               <!-- Modal -->
               <div class="modal fade" id="exampleModal3" tabindex="-1"
                  aria-labelledby="exampleModalLabel3" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="exampleModalLabel3">인증번호</h5>
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">여기에 랜덤값 넣으면 됩니당.</div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-secondary"
                              data-dismiss="modal">닫기</button>
                        </div>
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <label for="tel_check"><b>인증번호</b></label> <input type="text"
                     class="form-control" id="tel_check">
               </div>
               <br>
               <div class="text-center">
                  <button type="submit" class="btn btn-primary btn-lg">수정</button>
                  <button type="submit" class="btn btn-secondary btn-lg">뒤로</button>
               </div>
            </fieldset>
         </form>
      </div>
   </div>
</body>
</html>