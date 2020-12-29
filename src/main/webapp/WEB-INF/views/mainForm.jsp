<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mainForm</title>
    <!-- 부트스트랩 -->
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
    <script src="https://use.fontawesome.com/b490e94c82.js"></script>
<%--    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>
<style>

   h1 b{
   font-weight: 900;
   color:black;
   }

.card-header {
   padding: 0.75rem 1.25rem;
   margin-bottom: 0;
   border-bottom: 1px solid rgba(0, 0, 0, 0.125);
}

.border-deepgreen {
   border-color: #34551F !important;
}

.border-gray {
   border-color: #888 !important;
}


.card-body {
  -ms-flex: 1 1 auto;
  flex: 1 1 auto;
  min-height: 1px;
  padding: 1.25rem 0rem 0rem 1.25rem;
}

.badge {
  display: inline-block;
  padding: 0.25em 0.4em;
  font-size: 100%;
  font-weight: 700;
  line-height: 1;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: 0.4rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.badge-gray {
  color: #fff;
  background-color: #888;
}

.badge-danger{
   color:#fff;
   background-color: #ff7851;
}

.badge-deepgreen{
color:#fff;
background-color: #34551F;
}

</style>
</head>
<body>

   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-12">
            <div id="carouselExampleCaptions" class="carousel slide"
               data-ride="carousel" data-interval="3000">
               <ol class="carousel-indicators">
                  <li data-target="#carouselExampleCaptions" data-slide-to="0"
                     class="active"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
               </ol>
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <img src="img/welcome1.png" width="100%" height="352px"
                        class="d-block w-100" alt="...">
                     <div class="carousel-caption d-none d-md-block">
                        <br> <br> <br> <br> <br> <br> <br>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <img src="img/welcome2.png" width="100%" height="352px"
                        class="d-block w-100" alt="...">
                     <div class="carousel-caption d-none d-md-block"></div>
                  </div>
                  <div class="carousel-item">
                     <img src="img/welcome3.png" width="100%" height="352px"
                        class="d-block w-100" alt="...">
                     <div class="carousel-caption d-none d-md-block"></div>
                  </div>
               </div>
               <a class="carousel-control-prev" href="#carouselExampleCaptions"
                  role="button" data-slide="prev"> <span
                  class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                  class="sr-only">Previous</span>
               </a> <a class="carousel-control-next" href="#carouselExampleCaptions"
                  role="button" data-slide="next"> <span
                  class="carousel-control-next-icon" aria-hidden="true"></span> <span
                  class="sr-only">Next</span>
               </a>
            </div>
         </div>
      </div>

      
      <div class="row">
         <div class="col-sm-4">
            <br> <br>
            
            <h1 class="text-center">
                 <b>프로그래밍 언어</b>
            </h1>
            <br>
            
            <div class="card border-info mb-3">
               <h2 class="card-header text-center "
                  style="color: #fff; background-color: #6cc3d5;"><b>C</b></h2>
               <div class="list-group list-group-flush">
                <div class="card-body">
                <div class="card-text">
                <span class="badge badge-info">대표적인 절차 지향언어</span>
                </div>
                </div>
                  <a href="langJavaFirst01.fi"
                     class="list-group-item list-group-item-action border-info d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>기초잡기</b>
                     <i class="fa fa-chevron-right text-info" aria-hidden="true"></i>
                  </a>
                  <a href="/qboardListForm.bo?subCa=3"
                     class="list-group-item list-group-item-action border-info d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        질문하기
                     </b>
                     <i class="fa fa-chevron-right text-info" aria-hidden="true"></i>
                  </a>
                  <a href="scrapBookMain.bs?ca_no=1&subCa=3&bookCa=11"
                     class="list-group-item list-group-item-action border-info d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        스크랩북 보러가기
                     </b>
                     <i class="fa fa-chevron-right text-info" aria-hidden="true"></i>
                  </a>
                  </div>
            </div>
            <br>

            <div class="card border-secondary mb-3">
               <h2 class="card-header text-center"
                  style="color: #fff; background-color: #f3969a;"><b>JAVA</b></h2>
               <div class="list-group list-group-flush">
                <div class="card-body">
                <div class="card-text">
                <span class="badge badge-secondary">대표적인 객체 지향 언어</span>
                </div>
                </div>
                  <a href="langJavaFirst01.fi"
                     class="list-group-item list-group-item-action border-secondary d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>기초잡기</b>
                     <i class="fa fa-chevron-right text-secondary" aria-hidden="true"></i>
                  </a>
                  <a href="/qboardListForm.bo?subCa=1"
                     class="list-group-item list-group-item-action border-secondary d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        질문하기
                     </b>
                     <i class="fa fa-chevron-right text-secondary" aria-hidden="true"></i>
                  </a>
                  <a href="scrapBookMain.bs?ca_no=1&subCa=1&bookCa=1"
                     class="list-group-item list-group-item-action border-secondary d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        스크랩북 보러가기
                     </b>
                     <i class="fa fa-chevron-right text-secondary" aria-hidden="true"></i>
                  </a>
                  </div>
            
            </div>
            <br>
            
            <div class="card border-warning mb-3">
               <h2 class="card-header text-center"
                  style="color: #fff; background-color: #ffce67;"><b>PYTHON</b></h2>
               <div class="list-group list-group-flush">
                <div class="card-body">
                <div class="card-text">
                <span class="badge badge-warning">간결하고 생산성 높은 언어</span>
                </div>
                </div>
                  <a href="langJavaFirst01.fi"
                     class="list-group-item list-group-item-action border-warning d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>기초잡기</b>
                     <i class="fa fa-chevron-right text-warning" aria-hidden="true"></i>
                  </a>
                  <a href="http://localhost:8945/qboardListForm.bo?subCa=2"
                     class="list-group-item list-group-item-action border-warning d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        질문하기
                     </b>
                     <i class="fa fa-chevron-right text-warning" aria-hidden="true"></i>
                  </a>
                  <a href="/scrapBookMain.bs?ca_no=1&subCa=2&bookCa=6"
                     class="list-group-item list-group-item-action border-warning d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        스크랩북 보러가기
                     </b>
                     <i class="fa fa-chevron-right text-warning" aria-hidden="true"></i>
                  </a>
                  </div>
            </div>
            <br>

         </div>
         <!-- end of programming -->



         <div class="col-sm-4">
            <br> <br>
            <h1 class="text-center">
                 <b>데이터베이스</b>
            </h1>
            <br>
            
            <div class="card border-gray mb-3">
               <h2 class="card-header text-center"
                  style="color: #fff; background-color: #888;"><b>ORACLE</b></h2>
               <div class="list-group list-group-flush">
                <div class="card-body">
                <div class="card-text">
                <span class="badge badge-gray">유닉스 체제에서 가장 많이 사용하는 데이터 저장소</span>
                </div>
                </div>
                  <a href="langJavaFirst01.fi"
                     class="list-group-item list-group-item-action border-gray d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>기초잡기</b>
                     <i class="fa fa-chevron-right text-gray" aria-hidden="true"></i>
                  </a>
                  <a href="/qboardListForm.bo?subCa=7"
                     class="list-group-item list-group-item-action border-gray d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        질문하기
                     </b>
                     <i class="fa fa-chevron-right text-gray" aria-hidden="true"></i>
                  </a>
                  <a href="/scrapBookMain.bs?ca_no=3&subCa=8&bookCa=36"
                     class="list-group-item list-group-item-action border-gray d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        스크랩북 보러가기
                     </b>
                     <i class="fa fa-chevron-right text-gray" aria-hidden="true"></i>
                  </a>
                  </div>
            </div>
            <br>
            
            <div class="card border-danger mb-3">
               <h2 class="card-header text-center"
                  style="color: #fff; background-color: #ff7851;"><b>MYSQL</b></h2>
               <div class="list-group list-group-flush">
                <div class="card-body">
                <div class="card-text">
                <span class="badge badge-danger">개방 관계형으로 운영되는 언어 바탕의 데이터 저장소</span>
                </div>
                </div>
                  <a href="langJavaFirst01.fi"
                     class="list-group-item list-group-item-action border-danger d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>기초잡기</b>
                     <i class="fa fa-chevron-right text-danger" aria-hidden="true"></i>
                  </a>
                  <a href="/qboardListForm.bo?subCa=8"
                     class="list-group-item list-group-item-action border-danger d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        질문하기
                     </b>
                     <i class="fa fa-chevron-right text-danger" aria-hidden="true"></i>
                  </a>
                  <a href="/scrapBookMain.bs?ca_no=3&subCa=8&bookCa=36"
                     class="list-group-item list-group-item-action border-danger d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        스크랩북 보러가기
                     </b>
                     <i class="fa fa-chevron-right text-danger" aria-hidden="true"></i>
                  </a>
                  </div>
            </div>
            <br>

         </div>
         <!-- end of database -->
         <div class="col-sm-4">
            <br> <br>
            <h1 class="text-center">
               <b>프레임워크</b>
            </h1>
            <br>
            
             <div class="card border-success mb-3">
               <h2 class="card-header text-center"
                  style="color: #fff; background-color: #56cc9d;"><b>REACT</b></h2>
               <div class="list-group list-group-flush">
                <div class="card-body">
                <div class="card-text">
                <span class="badge badge-success">사용자 인터페이스를 만들기 위한 자바스크립트 라이브러리</span>
                </div>
                </div>
                  <a href="langJavaFirst01.fi"
                     class="list-group-item list-group-item-action border-success d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>기초잡기</b>
                     <i class="fa fa-chevron-right text-success" aria-hidden="true"></i>
                  </a>
                  <a href="/qboardListForm.bo?subCa=4"
                     class="list-group-item list-group-item-action border-success d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        질문하기
                     </b>
                     <i class="fa fa-chevron-right text-success" aria-hidden="true"></i>
                  </a>
                  <a href="/scrapBookMain.bs?ca_no=2&subCa=4&bookCa=21"
                     class="list-group-item list-group-item-action border-success d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        스크랩북 보러가기
                     </b>
                     <i class="fa fa-chevron-right text-success" aria-hidden="true"></i>
                  </a>
                  </div>
            </div>
            <br>
            
             <div class="card border-deepgreen mb-3">
               <h2 class="card-header text-center"
                  style="color: #fff; background-color: #34551F;"><b>VUE.JS</b></h2>
               <div class="list-group list-group-flush">
                <div class="card-body">
                <div class="card-text">
                <span class="badge badge-deepgreen">프로그레시브 자바스크립트 프레임워크</span>
                </div>
                </div>
                  <a href="langJavaFirst01.fi"
                     class="list-group-item list-group-item-action border-deepgreen d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>기초잡기</b>
                     <i class="fa fa-chevron-right text-deepgreen" aria-hidden="true"></i>
                  </a>
                  <a href="/qboardListForm.bo?subCa=5"
                     class="list-group-item list-group-item-action border-deepgreen d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        질문하기
                     </b>
                     <i class="fa fa-chevron-right text-deepgreen" aria-hidden="true"></i>
                  </a>
                  <a href="/scrapBookMain.bs?ca_no=2&subCa=5&bookCa=26"
                     class="list-group-item list-group-item-action border-deepgreen d-flex justify-content-between align-items-center" style="font-size: 25px">
                     <b>
                        스크랩북 보러가기
                     </b>
                     <i class="fa fa-chevron-right text-deepgreen" aria-hidden="true"></i>
                  </a>
                  </div>
            </div>
            <br>

         </div>
      </div>

   </div>
   
<%--   <script>--%>
<%--   $('[data-toggle="popover"]').popover({--%>
<%--         'trigger':'hover'--%>
<%--       });--%>
<%--   </script>--%>
   
</body>
</html>