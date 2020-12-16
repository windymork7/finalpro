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
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--   crossorigin="anonymous"></script>--%>
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
         <form name="updateForm" action="mypageUpdateAction.my" method="post">
            <fieldset>

               <div class="form-group">
                  <label for="email"><b>이메일</b></label>
                   <input type="email" class="form-control" id="email" name="mem_email" value="${mem.mem_email}" readonly>
               </div>

               <div class="form-group">
                  <label for="pw"><b>현재 비밀번호</b></label>
                     <div class="form-group">
                     <div class="input-group mb-3">
                        <input type="password" class="form-control" id="pw" name="pw">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-secondary" onclick="passConfirm()"
                              data-toggle="modal" data-target="#Modal_1">확인</button>                        
                        </div>
                     </div>
                     </div>
               </div>


               <div class="form-group">
                  <label for="pw"><b>새 비밀번호</b></label>
                  <div class="form-group">
                     <div class="input-group mb-3">
                        <input type="password" class="form-control" id="pass" name="mem_pw" readonly>
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
                  <input type="text" class="form-control" id="name" name="mem_name" value="${mem.mem_name}">
               </div>
               
               
               <div class="form-group">
                  <label for="nickname"><b>닉네임</b></label> 
                  <input type="text" class="form-control" id="nick" name="nick" readonly value="${mem.mem_nick}">
                  <input type="hidden" class="form-control" id="nickname" name="mem_nick"  value="${mem.mem_nick}">
               </div>


               <div class="form-group">
                  <label for="tel"><b>전화번호</b></label>
                  <div class="form-group">
                     <div class="input-group mb-3">
                        <input type="text" class="form-control" id="tel" name="mem_tel" placeholder="새 전화번호">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-outline-secondary" style="border-radius: 0rem 0.4rem 0.4rem 0rem;" onclick="telCheck()">중복
                              <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                           </button>
                        </div>
                        &nbsp;
                           <button type="button" class="btn btn-secondary"
                              data-toggle="modal" data-target="#exampleModal3" onclick="random()">인증</button>
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
                        <div id="random" class="modal-body"></div>
                        <input type="hidden" id="hiddenRandom">
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
                  <button type="button" onclick="vali()" class="btn btn-primary btn-lg">수정</button>
                  <button type="button" onclick="history.back()" class="btn btn-secondary btn-lg">뒤로</button>
               </div>
            </fieldset>
         </form>
         <input type="hidden" id="passInput" value="1">
         <input type="hidden" id="telInput" value="1">
      </div>
   </div>
</body>

<script>
   var re = /^[a-zA-Z0-9]{4,12}$/;	// 아이디 패스워드 정규식
   var random1 = Math.floor(Math.random()*9999);

   function vali(){

      if (pwVali() == false){return false;}
      if (nameVali() == false){return false;}
      if (nickVali() == false){return false;}
      if (telVali() == false){return false;}
      if (autuVali() == false){return  false;}
      if (inputCheck() == false){return false;}

      alert("수정이 완료 되었습니다.");

      document.updateForm.submit();

   }

   function pwVali(){
      if ($("#pass").val() == ""){
         alert("비밀번호를 입력해 주세요");
         return false;
      }

      if (!(re.test($("#pass").val()))){
         alert("비밀번호 형식을 확인해 주세요");
         return false;
      }
   }

   function nameVali(){
      if ($("#name").val() == ""){
         alert("이름을 입력해 주세요");
         return false;
      }
   }

   function nickVali(){
      if ($("#nickname").val() == ""){
         alert("닉네임을 입력해 주세요");
         return false;
      }
   }

   function telVali(){
      if ($("#tel").val() == ""){
         alert("전화번호를 입력해 주세요");
         return false;
      }

      if ($("#tel").val().indexOf("-") != -1){
         for (var i=0; i< $("#tel").val().length; i++){
            $("#tel").val($("#tel").val().replace("-", ""));
         }
      }
   }

   function  autuVali(){
      if ($("#tel_check").val() != $("#hiddenRandom").val()){
         alert("인증번호를 다시 입력해 주세요");
         return false;
      }
   }

   function inputCheck(){
      if ($("#passInput").val()==1){
         alert("비밀번호를 확인해 주세요.");
         return false;
      }
      if ($("#telInput").val()==1){
         alert("전화번호 중복 검사를 확인해 주세요.");
         return false;
      }

   }

   function random(){
      $("#random").html(random1);
      $("#hiddenRandom").val(random1);
   }

   function passConfirm(){
      var mem_email = $("#email").val();
      var inputPass = $("#pw").val();

      $.ajax(
              {
                 type : 'GET',
                 url : "/passConfirm.me",
                 data : {
                    "mem_email" : mem_email,
                    "mem_pw" : inputPass,
                 },
                 contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                 success : function(data)
                 {
                    if (data == "success"){
                       $("#pw").attr("readonly", true);
                       $("#pass").removeAttr("readonly");
                       $("#passInput").val(0);
                       alert("확인되었습니다!");
                    } else if (data == "fail"){
                       $("#passInput").val(1)
                       alert("비밀번호가 틀렸습니다.");
                    }
                 },
                 error : function(request, status, error)
                 {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                 }

              });
   }

   function telCheck(){
      var tel = $("#tel").val();

      if (tel == ""){
         alert("전화번호를 입력해 주세요");
         return false;
      }


      $.ajax(
              {
                 type : 'GET',
                 url : "/memberVali.me",
                 data : {
                    "mem_tel" : tel,
                    "state" : 3,
                 },
                 contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                 success : function(data)
                 {
                    if (data == 0){
                       alert("사용 가능합니다.");
                       $("#tel").attr("readonly", true);
                       $("#telInput").val(0);
                    } else if (data != 0){
                       alert("사용 불가능 합니다.");
                       $("#telInput").val(1);
                    }
                 },
                 error : function(request, status, error)
                 {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                 }

              });
   }

</script>

</html>