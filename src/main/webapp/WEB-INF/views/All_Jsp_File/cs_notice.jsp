<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>cs_notice</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://use.fontawesome.com/b490e94c82.js"></script>
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
.fa-pencil-square-o {
   color: #78c2ad
}

.fa-eye {
   color: #78c2ad
}

.card-title {
   margin-bottom: 0rem;
}

#question-text {
   font-size: 1.2em;
}

a {
   color: #fff;
   text-decoration: none;
   background-color: transparent;
}

a:hover {
   color: #fff;
   text-decoration: none;
}

small {
   color: #78c2ad;
}

#sidebox {
   position: absolute;
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
                     <div>
                        <legend>공지사항</legend>
                     </div>
                  </div>
                  <hr class="my-4">
                  <div class="card bg-light mb-3">
                     <div class="card-header">

                        <div class="d-flex w-100 justify-content-between">
                           <h4 class="card-title">
                              2020.12.07 AM 2:00 에 서버 점검이 있을 예정입니다.
                           </h4>
                        </div>

                        <p class="card-text">
                        <h6>관리자</h6>
                        <p>2020-12-06</p>
                     </div>

                     <div class="card-body">
                        <div class="card-text" id="question-text">

                           <img src="img/Check.jpg" width="100%" height="350"> <br>
                           <br>
                           <textarea class="form-control" rows="12" readonly>
안녕하세요.  

현재 잦은 서비스 다운으로 인해 서버 증설 작업을 진행합니다.
그로 인해 불가피하게 서비스가 2시간 가량 정지될 예정입니다.
해당 시간에 D's Q와 함께 하길 계획 하셨던 분들에겐 심심한 사과를 전해드립니다.

- 일시 : 2020년 12월 7일 월요일 2:00AM~4:00AM

- 내용 : 데이터베이스 서버 분리
                  </textarea>
                           <br>
                           <div class="text-right">
                              <!-- 관리자만 보이게 -->
                              <button type="button" class="btn btn-primary">수정</button>
                              <button type="button" class="btn btn-secondary">삭제</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </fieldset>
            </form>
         </div>

         <div class="col-sm-1 offset-sm-2">
            <div id="sidebox">
               <br> <br> <br> <br> <br> <br> <br>
               <br> <br> <br> <br> <br> <br> <br>
               <br> <br> <br> <br> <br> <br> <br>
               <br> <br>
               <p>
                  <i class="fa fa-chevron-up fa-2x text-primary" aria-hidden="true"
                     id="topBtn"></i>
               </p>
               <p>
                  <i class="fa fa-chevron-down fa-2x text-primary"
                     aria-hidden="true" id="bottomBtn"></i>
               </p>
            </div>
         </div>

      </div>
   </div>

   <script>
      $(window).scroll(function() {
         var scrollTop = $(document).scrollTop();
         if (scrollTop < 230) {
            scrollTop = 230;
         }
         $("#sidebox").stop();
         $("#sidebox").animate({
            "top" : scrollTop
         });
      });

      var topEle = $('#topBtn');
      var delay = 1000;
      topEle.on('click', function() {
         $('html, body').stop().animate({
            scrollTop : 0
         }, delay);
      });

      var topEle = $('#bottomBtn');
      var delay = 1000;
      topEle.on('click', function() {
         $("html, body").animate({
            scrollTop : $(document).height()
         }, delay);
      });
   </script>

</body>
</html>