<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>header</title>
    <!-- 부트스트랩 -->
   <link  rel="stylesheet" href="css/bootstrap.css">
<%--   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>--%>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
   <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
        <a class="navbar-brand" href="/">
           <img src="img/D'sQ.png" width="70">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
           data-target="#navbarColor02" aria-controls="navbarColor02" 
           aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor02">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">첫걸음</a>
              <div class="dropdown-menu">
                <a class="dropdown-item text-center"><b>프로그래밍 언어</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">C</a>
                  <a class="dropdown-item" href="#">JAVA</a>
                  <a class="dropdown-item" href="#">PYTHON</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center"><b>데이터베이스</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">ORACLE</a>
                  <a class="dropdown-item" href="#">MYSQL</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center"><b>프레임워크</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">SPRING</a>
                  <a class="dropdown-item" href="#">DJANGO</a>
              </div>
            </li>
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">D'sQ</a>
              <div class="dropdown-menu">
                <a class="dropdown-item text-center"><b>프로그래밍 언어</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/qboardListForm.bo?subCa=3">C</a>
                  <a class="dropdown-item" href="/qboardListForm.bo?subCa=1">JAVA</a>
                  <a class="dropdown-item" href="/qboardListForm.bo?subCa=2">PYTHON</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center"><b>데이터베이스</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/qboardListForm.bo?subCa=7">ORACLE</a>
                  <a class="dropdown-item" href="/qboardListForm.bo?subCa=8">MYSQL</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center"><b>프레임워크</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/qboardListForm.bo?subCa=4">SPRING</a>
                  <a class="dropdown-item" href="#">DJANGO</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center"><b>검색 Tip</b></a>
              </div>
            </li>
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">스크랩북</a>
              <div class="dropdown-menu">
                <a class="dropdown-item text-center"><b>프로그래밍 언어</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">C</a>
                  <a class="dropdown-item" href="#">JAVA</a>
                  <a class="dropdown-item" href="#">PYTHON</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center"><b>데이터베이스</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">ORACLE</a>
                  <a class="dropdown-item" href="#">MYSQL</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center"><b>프레임워크</b></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">SPRING</a>
                  <a class="dropdown-item" href="#">DJANGO</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center" href="/todayProblem.bp"><b>오늘의 문제</b></a>
              </div>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#">에디터's Tip
              </a>
            </li>
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">이벤트</a>
              <div class="dropdown-menu">
                <a class="dropdown-item text-center"><b>D'sQ 이벤트</b></a>
                <a class="dropdown-item text-center"><b>공모전</b></a>
              </div>
            </li>
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
              <div class="dropdown-menu">
                <a class="dropdown-item text-center"><b>D'sQ 가이드라인</b></a>
                <a class="dropdown-item text-center"><b>공지사항</b></a>
                <a class="dropdown-item text-center"><b>FAQ</b></a>
              </div>
            </li>
          </ul>
          
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="내용을 검색하세요">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">검색
               <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
          </form>&nbsp;&nbsp;

          <c:choose>
            <c:when test="${not empty sessionScope.userNick}">
              <c:choose>
                <c:when test="${sessionScope.userNick eq 'admin'}">
                  <span><a href="adminMain.ad">${sessionScope.userNick}</a>&nbsp;</span>
                </c:when>
                <c:otherwise>
                  <!--  <span><a href="#">${sessionScope.userNick}</a>&nbsp;</span>-->
                  <span><a href="mypageMain.my">${sessionScope.userNick}</a>&nbsp;</span>
                </c:otherwise>
              </c:choose>
              <button type="button" class="btn btn-primary" onclick="location.href='/logout.me'">로그아웃</button>
            </c:when>
            <c:otherwise>
              <button type="button" class="btn btn-primary" onclick="location.href='/loginForm.me'">로그인</button>&nbsp;&nbsp;
            </c:otherwise>
          </c:choose>
          <button type="button" class="btn btn-primary" onclick="location.href='/joinFormWay.me'">회원가입</button>
        </div>
      </nav>
   </div>
   <br>
   <br>
<!-- header -->   
</body>
</html>