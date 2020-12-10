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
<title>firstStep</title>
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

   <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
         <a class="navbar-brand" href="#"> <img src="img/D'sQ.png"
            width="70">
         </a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarColor02" aria-controls="navbarColor02"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>

         <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav mr-auto">
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
                  role="button" aria-haspopup="true" aria-expanded="false">첫걸음</a>
                  <div class="dropdown-menu">
                     <a class="dropdown-item text-center"><b>프로그래밍 언어</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">C</a> <a class="dropdown-item"
                        href="#">JAVA</a> <a class="dropdown-item" href="#">PYTHON</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>데이터베이스</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">ORACLE</a> <a
                        class="dropdown-item" href="#">MYSQL</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>프레임워크</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">SPRING</a> <a
                        class="dropdown-item" href="#">DJANGO</a>
                  </div></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
                  role="button" aria-haspopup="true" aria-expanded="false">D'sQ</a>
                  <div class="dropdown-menu">
                     <a class="dropdown-item text-center"><b>프로그래밍 언어</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">C</a> <a class="dropdown-item"
                        href="#">JAVA</a> <a class="dropdown-item" href="#">PYTHON</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>데이터베이스</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">ORACLE</a> <a
                        class="dropdown-item" href="#">MYSQL</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>프레임워크</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">SPRING</a> <a
                        class="dropdown-item" href="#">DJANGO</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>검색 Tip</b></a>
                  </div></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
                  role="button" aria-haspopup="true" aria-expanded="false">오답노트</a>
                  <div class="dropdown-menu">
                     <a class="dropdown-item text-center"><b>프로그래밍 언어</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">C</a> <a class="dropdown-item"
                        href="#">JAVA</a> <a class="dropdown-item" href="#">PYTHON</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>데이터베이스</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">ORACLE</a> <a
                        class="dropdown-item" href="#">MYSQL</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>프레임워크</b></a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">SPRING</a> <a
                        class="dropdown-item" href="#">DJANGO</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item text-center"><b>오늘의 문제</b></a>
                  </div></li>
               <li class="nav-item"><a class="nav-link" href="#">에디터's
                     Tip </a></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
                  role="button" aria-haspopup="true" aria-expanded="false">이벤트</a>
                  <div class="dropdown-menu">
                     <a class="dropdown-item text-center"><b>D'sQ 이벤트</b></a> <a
                        class="dropdown-item text-center"><b>공모전</b></a>
                  </div></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
                  role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
                  <div class="dropdown-menu">
                     <a class="dropdown-item text-center"><b>D'sQ 가이드라인</b></a> <a
                        class="dropdown-item text-center"><b>공지사항</b></a> <a
                        class="dropdown-item text-center"><b>FAQ</b></a>
                  </div></li>
            </ul>

            <form class="form-inline my-2 my-lg-0">
               <input class="form-control mr-sm-2" type="text"
                  placeholder="내용을 검색하세요">
               <button class="btn btn-secondary my-2 my-sm-0" type="submit">
                  검색 <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
               </button>
            </form>
            &nbsp;&nbsp;
            <button type="button" class="btn btn-danger">로그인</button>
            &nbsp;&nbsp;
            <button type="button" class="btn btn-primary">회원가입</button>
         </div>
      </nav>
   </div>
   <br>
   <br>
   <!-- header -->

   <div class="container-fluid">
      <div class="row min-vh-100 flex-column flex-sm-row">
         <aside class="col-12 col-sm-2 p-0 flex-shrink-1">
            <br> <br>
            <nav
               class="navbar navbar-expand navbar-light border-right flex-sm-column flex-row align-items-start py-2">
               <div class="collapse navbar-collapse ">
                  <ul
                     class="flex-sm-column flex-row navbar-nav w-100 justify-content-between">
                     <li class="nav-item active"><a
                        class="nav-link pl-0 text-nowrap" href="#"><i
                           class="fa fa-bullseye fa-fw"></i> <span
                           class="font-weight-bold">점프 투 자바</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-book fa-fw"></i> <span class="d-none d-sm-inline">자바
                              시작하기</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#aaa"><i
                           class="fa fa-cog fa-fw"></i> <span class="d-none d-sm-inline">자료형</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-heart codeply fa-fw"></i> <span
                           class="d-none d-sm-inline">제어문</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-star codeply fa-fw"></i> <span
                           class="d-none d-sm-inline">객체지향 프로그래밍</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-star fa-fw"></i> <span class="d-none d-sm-inline">입출력</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-heart codeply fa-fw"></i> <span
                           class="d-none d-sm-inline">패키지</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-heart codeply fa-fw"></i> <span
                           class="d-none d-sm-inline">접근제어자</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-heart codeply fa-fw"></i> <span
                           class="d-none d-sm-inline">정적 변수와 메소드</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-heart codeply fa-fw"></i> <span
                           class="d-none d-sm-inline">예외처리</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#"><i
                           class="fa fa-heart codeply fa-fw"></i> <span
                           class="d-none d-sm-inline">쓰레드</span></a></li>
                  </ul>
               </div>
            </nav>
         </aside>
         <main class="col bg-faded py-3 flex-grow-1">

            <br> <br>
            <div class="container" id="aaa"> 
               <div class="row">
                  <div class="embed-responsive embed-responsive-16by9">
                     <iframe class="embed-responsive-item"
                        src="https://www.youtube.com/embed/1fF9RBVnzfc"></iframe>
                  </div>
               </div>
               <hr>
               <div>
                  <h3 class="panel-title">
                     <span class="glyphicon glyphicon-facetime-video"></span>
                     &nbsp;&nbsp;다른 영상 시청하기
                  </h3>
               </div>
               <br>
               <div class="row">
                  <ul class="list-group">
                     <a href="https://www.youtube.com/watch?v=-yPeNx-9ogM"
                        class="list-group-item">지진 피해 예방 및 행동요령</a>
                     <a href="https://www.youtube.com/watch?v=8RYp8i2T_S4"
                        class="list-group-item">미리미리 알아두는 지진대피 방법!</a>
                     <a href="https://www.youtube.com/watch?v=1lT3xKq-_QY"
                        class="list-group-item">지진 났을 때 아이와 함께 대처하기!</a>
                     <a href="https://www.youtube.com/watch?v=JtsOJ_3wxyw"
                        class="list-group-item">지진 발생 시 어떡해야 할까? 상황, 장소별 행동요령</a>
                     <a href="https://www.youtube.com/watch?v=QRVofqxkm5I"
                        class="list-group-item">한반도에 더 큰 지진이 온다면? 지진 피해 예방 및 행동수칙</a>
                  </ul>
               </div>
            </div>
            <div class="container">
               <br>
               <br>
               <h2>Example</h2>
               <p>This is a Bootstrap 4 example layout that includes a Sidebar
                  menu. On larger screen widths, the Sidebar is on the left side and
                  consumes the entire page height. It's vertically positioned down
                  the screen. On smaller screen widths (like mobile phones and
                  tablets), the Sidebar moves to the top of the page, and becomes
                  horizontally positioned across the page like a Navbar. Only icons
                  are shown on mobile to limit use of screen real estate.</p>
               <p>This Sidebar works using only Bootstrap CSS classes and
                  doesn't require JavaScript. It utilizes the responsive Navbar
                  classes to auto-magically switch the Sidebar orientation.</p>
            </div>
         </main>
      </div>
   </div>

   <footer class="py-4 text-center border-top">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <p>
                  <img src="img/D'sQ.png" alt="D'sQ">
               </p>
               <p>
                  <a href="#">About D's Q</a> <a href="#">개인정보처리방침</a> <a href="#">광고문의</a>
               </p>
               <p>서울 금천구 디지털로 130 남성프라자</p>
               <p>&copy; 2020 D's Q, All rights reserved.</p>
            </div>
         </div>
      </div>
   </footer>

</body>
</html>