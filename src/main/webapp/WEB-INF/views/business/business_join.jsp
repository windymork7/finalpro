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
<title>business_join</title>
   <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script src="js/mapApi.js"></script>
<%--   <!-- 부트스트랩 -->--%>
<%--   <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--   <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--   <script src="https://code.jquery.com/jquery-3.5.1.min.js"--%>
<%--   integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--   <script--%>
<%--   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--   <script--%>
<%--   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--   crossorigin="anonymous"></script>--%>
</head>
<body>
   <div class="text-center">
      <a href="#"> <img src="img/D'sQ.png" alt="D's Q"></a>
   </div>
   <div class="row">
      <form name="bizJoin" class="col-sm-6 offset-sm-3" action="/businessJoinProcess.bi" method="post">
         <fieldset>
            <div class="form-group">
               <label for="biz_email"><b>이메일</b></label> 
                  <div class="form-group">
                     <div class="input-group mb-3">
                     <input type="email" class="form-control" id="biz_email" aria-describedby="emailHelp" name="biz_email">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-outline-secondary" onclick="emailCheck()">중복
                              <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                              </button>
                        </div>
                     </div>
                  </div>
               </div>

            <div class="form-group">
               <label for="biz_pw1"><b>비밀번호</b></label> <input
                  type="password" class="form-control" id="biz_pw1" name="biz_pw">
            </div>
            <div class="form-group">
               <label for="biz_pw2"><b>비밀번호 확인</b></label> <input
                  type="password" class="form-control" id="biz_pw2">
            </div>
            <div class="form-group">
               <label for="biz_number"><b>사업자 등록번호</b></label>
               <div class="input-group mb-3">
                  <input type="text" class="form-control" id="biz_number" name="biz_no">
                  <div class="input-group-append">
                     <button type="button" class="btn btn-outline-secondary" onclick="nickCheck()">중복
                        <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                     </button>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label for="biz_company_name"><b>회사명</b></label> <input
                  type="text" class="form-control" id="biz_company_name" name="biz_trademark">
            </div>

            <!-- 주소 api사용해야함! -->
            <div class="form-group">
               <label for="branch address"><b>회사 주소</b></label>
               <div class="form-group">
                  <div class="input-group mb-3">
                     <input type="text" class="form-control" id="branch address" name="biz_address">
                     <div class="input-group-append">
                        <button type="button" class="btn btn-secondary" onclick="sample4_execDaumPostcode()">
                           <span class="glyphicon glyphicon-search" aria-hidden="true"/>
                           </button>
                     </div>
                  </div>
               </div>
            </div>


            <div class="form-group">
               <input type="text" class="form-control" id="biz_detail_address" NAME="biz_detail_address"
                  placeholder="회사 상세주소">
            </div>
            <div class="form-group">
               <label for="biz_name"><b>대표자명</b></label> <input type="text"
                  class="form-control" id="biz_name" name="biz_name">
            </div>
            <div class="form-group">
               <label for="biz_tel"><b>대표자 전화번호</b></label>
               <div class="form-group">
                  <div class="input-group mb-3">
                     <input type="text" class="form-control" id="biz_tel" name="biz_tel">
                     <div class="input-group-append">
                        <button type="button" class="btn btn-outline-secondary" style="border-radius: 0rem 0.4rem 0.4rem 0rem;" onclick="telCheck()">중복
                           <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                        </button>
                     </div>
                     &nbsp;
                        <button type="button" class="btn btn-secondary" onclick="random()"
                           data-toggle="modal" data-target="#exampleModal3">인증</button>
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
               <label for="biz_tel_check"><b>인증번호</b></label> <input
                  type="text" class="form-control" id="biz_tel_check">
            </div>
            <br>
            <div class="text-center">
               <button type="button" class="btn btn-primary btn-lg" onclick="vali()">회원가입</button>
            </div>

            <input type="hidden" id="emailInput" value="1">
            <input type="hidden" id="nickInput" value="1">
            <input type="hidden" id="telInput" value="1">
         </fieldset>
      </form>
   </div>
</body>
<script>
   var re = /^[a-zA-Z0-9]{4,12}$/;	// 아이디 패스워드 정규식
   var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;	// 이메일 정규식
   var random1 = Math.floor(Math.random()*9999);

   function vali(){
      if (emailVali() == false){return false;}
      if (pwVali() == false){return false;}
      if (bizNumVali() == false){return false;}
      if (bizComVali() == false){return false;}
      if (branchVali() == false){return false;}
      if (nameVali() == false){return false;}
      if (telVali() == false){return false;}
      if (autuVali() == false){return false;}
      if (inputCheck() == false){return false;}

      alert("회원가입이 완료 되었습니다.");

      document.bizJoin.submit();
   }

   function emailVali(){
      if ($("#biz_email").val() == ""){
         alert("이메일을 입력해 주세요");
         return false;
      }
      if (!(re2.test($("#biz_email").val()))){
         alert("이메일 형식을 지켜주세요");
         return false;
      }
   }

   function pwVali(){
      if ($("#biz_pw1").val() == ""){
         alert("비밀번호를 입력해 주세요");
         return false;
      }
      if($("#biz_pw2").val() == ""){
         alert("비밀번호 확인을 입력해 주세요");
         return false;
      }

      if (!(re.test($("#biz_pw1").val()))){
         alert("비밀번호 형식을 확인해 주세요");
         return false;
      }
      if ($("#biz_pw1").val() != $("#biz_pw2").val()){
         alert("비밀번호와 비밀번호 확인이 다릅니다.");
         return false;
      }
   }

   function bizNumVali(){
      if ($("#biz_number").val() == ""){
         alert("사업자 등록번호를 입력해 주세요");
         return false;
      }
   }

   function bizComVali(){
      if ($("#biz_company_name").val() == ""){
         alert("회사명을 입력해 주세요");
         return false;
      }
   }

   function branchVali(){
      if ($("#branch address").val() == ""){
         alert("주소를 입력해 주세요");
         return false;
      }
      if ($("#biz_detail_address").val() == ""){
         alert("상세주소를 입력해 주세요");
         return false;
      }
   }

   function nameVali(){
      if ($("#biz_name").val() == ""){
         alert("이름을 입력해 주세요");
         return false;
      }
   }

   function telVali(){
      if ($("#biz_tel").val() == ""){
         alert("전화번호를 입력해 주세요");
         return false;
      }

      if ($("#biz_tel").val().indexOf("-") != -1){
         for (var i=0; i< $("#biz_tel").val().length; i++){
            $("#biz_tel").val($("#biz_tel").val().replace("-", ""));
         }
      }

   }

   function  autuVali(){
      if ($("#biz_tel_check").val() != $("#hiddenRandom").val()){
         alert("인증번호를 다시 입력해 주세요");
         return false;
      }
   }

   function inputCheck(){
      if ($("#emailInput").val()==1){
         alert("이메일 중복 검사를 확인해 주세요.");
         return false;
      }
      if ($("#nickInput").val()==1){
         alert("사업자 등록번호 중복 검사를 확인해 주세요.");
         return false;
      }
      if ($("#telInput").val()==1){
         alert("대표자 전화번호 중복 검사를 확인해 주세요.");
         return false;
      }

   }

   function emailCheck(){
      var biz_email = $("#biz_email").val();

      if (biz_email == ""){
         alert("이메일을 입력해 주세요");
         return false;
      }

      $.ajax(
              {
                 type : 'GET',
                 url : "/businessVali.bi",
                 data : {
                    "biz_email" : biz_email,
                    "state" : 1,
                 },
                 contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                 success : function(data)
                 {
                    if (data == 0){
                       alert("사용 가능합니다.");
                       $("#emailInput").val(0);
                    } else if (data != 0){
                       alert("사용 불가능 합니다.");
                       $("#emailInput").val(1);
                    }
                 },
                 error : function(request, status, error)
                 {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                 }

              });
   }

   function nickCheck(){
      var biz_number = $("#biz_number").val();

      if (biz_number == ""){
         alert("사업자 등록번호를 입력해 주세요");
         return false;
      }

      $.ajax(
              {
                 type : 'GET',
                 url : "/businessVali.bi",
                 data : {
                    "biz_number" : biz_number,
                    "state" : 2,
                 },
                 contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                 success : function(data)
                 {
                    if (data == 0){
                       alert("사용 가능합니다.");
                       $("#nickInput").val(0);
                    } else if (data != 0){
                       alert("사용 불가능 합니다.");
                       $("#nickInput").val(1);
                    }
                 },
                 error : function(request, status, error)
                 {
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                 }

              });
   }

   function telCheck(){
      var biz_tel = $("#biz_tel").val();

      if (biz_tel == ""){
         alert("사업자 전화번호를 입력해 주세요");
         return false;
      }

      $.ajax(
              {
                 type : 'GET',
                 url : "/businessVali.bi",
                 data : {
                    "biz_tel" : biz_tel,
                    "state" : 3,
                 },
                 contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                 success : function(data)
                 {
                    if (data == 0){
                       alert("사용 가능합니다.");
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



   function random(){
      $("#random").html(random1);
      $("#hiddenRandom").val(random1);
   }






</script>
</html>