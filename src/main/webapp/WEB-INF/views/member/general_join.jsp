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
<title>general_join</title>
<!-- 부트스트랩 -->
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"--%>
<%--            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--    <script--%>
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
   </div>
   <div class="row">
      <div class="col-sm-6 offset-sm-3">
         <form name="generalJoin" action="joinProcess.me" method="post">
            <fieldset>
            
             <div class="form-group">
                  <label for="email"><b>이메일</b></label>
                  <div class="form-group">
                     <div class="input-group mb-3">
                        <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="mem_email">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-outline-secondary" onclick="emailCheck()">중복
                              <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                              </button>
                        </div>
                     </div>
                  </div>
               </div>


               <div class="form-group">
                  <label for="pw1"><b>비밀번호</b></label> <input
                     type="password" class="form-control" id="pw1" name="mem_pw">
               </div>
               <div class="form-group">
                  <label for="pw2"><b>비밀번호 확인</b></label> <input
                     type="password" class="form-control" id="pw2" name="mem_pwco">
               </div>
               <div class="form-group">
                  <label for="name"><b>이름</b></label> <input type="text"
                     class="form-control" id="name" name="mem_name">
               </div>

               
                   <div class="form-group">
                  <label for="nickname"><b>닉네임</b></label>
                  <div class="form-group">
                     <div class="input-group mb-3">
                     <input type="text" class="form-control" id="nickname" name="mem_nick">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-outline-secondary" onclick="nickCheck()">중복
                               <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                              </button>
                        </div>
                     </div>
                  </div>
               </div>

               
               <div class="form-group">
                  <label for="tel"><b>전화번호</b></label>
                  <div class="form-group">
                     <div class="input-group mb-3">
                        <input type="text" class="form-control" id="tel" name="mem_tel">
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
                  <button type="button" onclick="vali()" class="btn btn-primary btn-lg">회원가입</button>
               </div>

                <input type="hidden" id="emailInput" value="1">
                <input type="hidden" id="nickInput" value="1">
                <input type="hidden" id="telInput" value="1">
            </fieldset>
         </form>
      </div>
   </div>
</body>
<script>
    var re = /^[a-zA-Z0-9]{4,12}$/;	// 아이디 패스워드 정규식
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;	// 이메일 정규식
    var random1 = Math.floor(Math.random()*9999);

    function vali(){

        if (emailVali() == false){return false;}
        if (pwVali() == false){return false;}
        if (nameVali() == false){return false;}
        if (nickVali() == false){return false;}
        if (telVali() == false){return false;}
        if (autuVali() == false){return  false;}
        if (inputCheck() == false){return false;}



        alert("회원가입이 완료 되었습니다.");

        document.generalJoin.submit();
    }

    function emailVali(){
        if ($("#email").val() == ""){
            alert("이메일을 입력해 주세요");
            return false;
        }
        if (!(re2.test($("#email").val()))){
            alert("이메일 형식을 지켜주세요");
            return false;
        }
    }

    function pwVali(){
        if ($("#pw1").val() == ""){
            alert("비밀번호를 입력해 주세요");
            return false;
        }
        if($("#pw2").val() == ""){
            alert("비밀번호 확인을 입력해 주세요");
            return false;
        }

        if (!(re.test($("#pw1").val()))){
            alert("비밀번호 형식을 확인해 주세요");
            return false;
        }
        if ($("#pw1").val() != $("#pw2").val()){
            alert("비밀번호와 비밀번호 확인이 다릅니다.");
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
        if ($("#emailInput").val()==1){
            alert("이메일 중복 검사를 확인해 주세요.");
            return false;
        }
        if ($("#nickInput").val()==1){
            alert("닉네임 중복 검사를 확인해 주세요.");
            return false;
        }
        if ($("#telInput").val()==1){
            alert("전화번호 중복 검사를 확인해 주세요.");
            return false;
        }

    }

    function emailCheck(){
        var mem_email = $("#email").val();

        if (mem_email == ""){
            alert("이메일을 입력해 주세요");
            return false;
        }

        $.ajax(
            {
                type : 'GET',
                url : "/memberVali.me",
                data : {
                    "mem_email" : mem_email,
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
        var mem_nick = $("#nickname").val();

        if (mem_nick == ""){
            alert("닉네임을 입력해 주세요");
            return false;
        }


        $.ajax(
            {
                type : 'GET',
                url : "/memberVali.me",
                data : {
                    "mem_nick" : mem_nick,
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