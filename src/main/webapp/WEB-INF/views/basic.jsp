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
    <link  rel="stylesheet" href="css/bootstrap.css">
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
   <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">
           <img src="img/D'sQ.png" width="70">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
           data-target="#navbarColor02" aria-controls="navbarColor02" 
           aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor02">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
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
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">D'sQ</a>
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
                <a class="dropdown-item text-center"><b>검색 Tip</b></a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">오답노트</a>
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
                <a class="dropdown-item text-center"><b>오늘의 문제</b></a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">에디터's Tip
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
                 role="button" aria-haspopup="true" aria-expanded="false">이벤트</a>
              <div class="dropdown-menu">
                <a class="dropdown-item text-center"><b>D'sQ 이벤트</b></a>
                <a class="dropdown-item text-center"><b>공모전</b></a>
              </div>
            </li>
            <li class="nav-item dropdown">
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
            <button class="btn btn-secondary my-2 my-sm-0" type="submit">검색
               <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
          </form>&nbsp;&nbsp;
          <button type="button" class="btn btn-danger">로그인</button>&nbsp;&nbsp;
          <button type="button" class="btn btn-primary">회원가입</button>
        </div>
      </nav>
   </div>
   <br>
   <br>
   <br>
<!-- header -->   

   
   
<div class="row">
<form class="col-sm-8 offset-sm-2">
  <fieldset>
    <legend>Legend</legend>
    <div class="form-group row">
      <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-10">
        <input type="text" readonly="" class="form-control-plaintext" id="staticEmail" value="email@example.com">
      </div>
    </div>
    <div class="form-group">
      <label for="exampleInputEmail1">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-group">
      <label for="exampleSelect1">Example select</label>
      <select class="form-control" id="exampleSelect1">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>
    <div class="form-group">
      <label for="exampleSelect2">Example multiple select</label>
      <select multiple="" class="form-control" id="exampleSelect2">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>
    <div class="form-group">
      <label for="exampleTextarea">Example textarea</label>
      <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
    </div>
    <div class="form-group">
      <label for="exampleInputFile">File input</label>
      <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
      <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
    </div>
    <fieldset class="form-group">
      <legend>Radio buttons</legend>
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
          Option one is this and that—be sure to include why it's great
        </label>
      </div>
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">
          Option two can be something else and selecting it will deselect option one
        </label>
      </div>
      <div class="form-check disabled">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios3" value="option3" disabled="">
          Option three is disabled
        </label>
      </div>
    </fieldset>
    <fieldset class="form-group">
      <legend>Checkboxes</legend>
      <div class="form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" value="" checked="">
          Option one is this and that—be sure to include why it's great
        </label>
      </div>
      <div class="form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" value="" disabled="">
          Option two is disabled
        </label>
      </div>
    </fieldset>
    <fieldset class="form-group">
      <legend>Sliders</legend>
      <label for="customRange1">Example range</label>
      <input type="range" class="custom-range" id="customRange1">
    </fieldset>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>
</div>
   
   <footer class="mt-5 py-4 text-center border-top">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <p>
                  <img src="img/D'sQ.png" alt="D'sQ">
               </p>
               <p>
                  <a href="#">About D's Q</a> 
                  <a href="#">개인정보처리방침</a>
                  <a href="#">광고문의</a>
               </p>
               <p>서울 금천구 디지털로 130 남성프라자</p>
               <p>
               &copy; 2020 D's Q, All rights reserved.
               </p>
            </div>
         </div>
      </div>
   </footer>
   
</body>
</html>