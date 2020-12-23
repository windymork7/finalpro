<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>login</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 css 추가 -->
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>

<!-- 해외 부트스트랩 js -->
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"--%>
<%--   integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"--%>
<%--   integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"--%>
<%--   integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"--%>
<%--   crossorigin="anonymous"></script>--%>

<style>
#radio_1 {
   float: left;
}

#radio_2 {
   float: right;
}
</style>

</head>
<body>

   <div class="text-center">
<%--   <br>--%>
<%--   <br>--%>
      <a href="#"> <img src="img/D'sQ.png" width="200" height="100"
         alt="D'sQ"></a>
   </div>
   <div class="row" >
      <form class="col-sm-4 offset-sm-4" action="loginWayProcess.me" method="post">
         <fieldset>
            <div class="form-group text-center col-sm-6 offset-sm-3">
               <div class="custom-control custom-radio" id="radio_1">
                  <input type="radio" id="customRadio1" name="customRadio"
                     class="custom-control-input" checked="" value="1"> <label
                     class="custom-control-label" for="customRadio1">개인회원</label>
               </div>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="custom-control custom-radio" id="radio_2">
                  <input type="radio" id="customRadio2" name="customRadio"
                     class="custom-control-input" value="2"> <label
                     class="custom-control-label" for="customRadio2">기업회원</label>
               </div>
            </div>
            <div id="here">
<%--            <div class="form-group">--%>
<%--               <input type="email" class="form-control" id="email" name="mem_email"--%>
<%--                      aria-describedby="emailHelp" placeholder="이메일">--%>
<%--            </div>--%>

<%--               <div class="form-group">--%>
<%--                  <input type="password" class="form-control" id="Password" name="mem_pw"--%>
<%--                         placeholder="비밀번호">--%>
<%--               </div>--%>
            </div>
<%--               <button type="submit" class="btn btn-primary btn-lg btn-block text-center">로그인</button>--%>
               <button type="button" class="btn btn-primary btn-lg btn-block text-center" onclick="loginProcess()">로그인</button>

               <br>

               <div class="text-center">
                  <a href="/emailSearchFirst.me">계정 찾기</a>&nbsp;
                  <a href="/passSearchFirst.me">비밀번호 찾기</a>&nbsp;
                  <a href="/joinFormWay.me"><b>회원가입</b></a>
               </div>

         </fieldset>
      </form>
   </div>

</body>
<script>

   $(document).ready(function(){
      generalMember()
   });


   $("input:radio[name=customRadio]").click(function(){
      // alert("1")
      if($("input:radio[name=customRadio]:checked").val() == 1){
         generalMember();
      } else if($("input:radio[name=customRadio]:checked").val() == 2){
         businessMember();
      }
   })

   // 일반회원 가입 양식
   function generalMember(){

      // alert("2");
      var html = "<div class=\"form-group\">\n" +
              "               <input type=\"email\" class=\"form-control\" id=\"mem_email\" name=\"mem_email\"\n" +
              "                      aria-describedby=\"emailHelp\" placeholder=\"이메일\">\n" +
              "            </div>\n" +
              "\n" +
              "               <div class=\"form-group\">\n" +
              "                  <input type=\"password\" class=\"form-control\" id=\"mem_pw\" name=\"mem_pw\"\n" +
              "                         placeholder=\"비밀번호\">\n" +
              "               </div>";


      $("#here").html(html);
   }

   function businessMember(){

      // alert("3");
      var html = "<div class=\"form-group\">\n" +
              "               <input type=\"email\" class=\"form-control\" id=\"biz_email\" name=\"biz_email\"\n" +
              "                      aria-describedby=\"emailHelp\" placeholder=\"이메일\">\n" +
              "            </div>\n" +
              "\n" +
              "               <div class=\"form-group\">\n" +
              "                  <input type=\"password\" class=\"form-control\" id=\"biz_pw\" name=\"biz_pw\"\n" +
              "                         placeholder=\"비밀번호\">\n" +
              "               </div>";

      $("#here").html(html);
   }

   function loginProcess(){

      var radio = $("input:radio[name=customRadio]:checked").val()

      if(radio == 1){

         var mem_email = $("#mem_email").val();
         var mem_pw = $("#mem_pw").val();

         $.ajax(
                 {
                    type : 'GET',
                    url : "/loginProcess.me",
                    data : {
                       "mem_email" : mem_email,
                       "mem_pw" : mem_pw,
                    },
                    contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                    success : function(data)
                    {
                       if (data == "success"){
                           location.href="/";
                       } else if (data == "fail"){
                          alert("아이디와 비밀번호를 확인해 주세요.");
                       } else if (data == "black"){
                           alert("제재당한 이메일 입니다.");
                       }
                    },
                    error : function(request, status, error)
                    {
                       alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }

                 });
      } else if(radio == 2){
          var biz_email = $("#biz_email").val();
          var biz_pw = $("#biz_pw").val();

          $.ajax(
              {
                  type : 'GET',
                  url : "/businessLoginProcess.bi",
                  data : {
                      "biz_email" : biz_email,
                      "biz_pw" : biz_pw,
                  },
                  contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                  success : function(data)
                  {
                      if (data == "success"){
                          location.href="/";
                      } else if (data == "fail"){
                          alert("아이디와 비밀번호를 확인해 주세요.");
                      } else if (data == "state_fail"){
                          alert("아직 승인 대기중 입니다.");
                      }
                  },
                  error : function(request, status, error)
                  {
                      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                  }

              });

      }

   }



</script>
</html>