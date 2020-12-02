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
    <title>board_list</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://use.fontawesome.com/b490e94c82.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

	<style>
		.nav-tabs {
		  color: #5a5a5a;
		  border-bottom: 1px solid #eceeef;
		}
		
		.nav-tabs .nav-item {
		  color: #5a5a5a;
		  margin-bottom: -1px;
		}
		
		.nav-tabs .nav-link {
		  color: #5a5a5a;
		  border: 1px solid transparent;
		  border-top-left-radius: 0.4rem;
		  border-top-right-radius: 0.4rem;
		}
	
		.nav-tabs .nav-link:hover, .nav-tabs .nav-link:focus {
		  color: #78c2ad;
		  border-color: #f7f7f9 #f7f7f9 #eceeef;
		}
		
		.nav-tabs .nav-link.active,
		.nav-tabs .nav-item.show .nav-link {
		  color: #78c2ad;
		  background-color: #fff;
		  border-color: #eceeef #eceeef #fff;
		}
		
		#emergency2{
		 color: #fff;
		}
		
		a {
		  color: #888;
		  text-decoration: none;
		  background-color: transparent;
		}
		
		a:hover {
		  color: #888;
		  text-decoration: none;
		}
		
		#guideline{
		  border: 2px solid rgba(0, 0, 0, 0.125);
		}
		
		.badge {
		  display: inline-block;
		  padding: 0.25em 0.8em;
		  font-size: 100%;
		  font-weight: 700;
		  line-height: 1;
		  text-align: center;
		  white-space: nowrap;
		  vertical-align: baseline;
		  border-radius: 0.4rem;
		  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
		}
		
		.fa-quora{
		  color:#78c2ad
		}
		
		small{
		  color:#78c2ad;
		}
		
	</style>

</head>
<body>

	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
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
		      <button class="btn btn-primary my-2 my-sm-0" type="submit">검색
		      	<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
		      </button>
		    </form>&nbsp;&nbsp;
		    <button type="button" class="btn btn-primary">로그인</button>&nbsp;&nbsp;
		    <button type="button" class="btn btn-primary">회원가입</button>
		  </div>
		</nav>
	</div>
	<br>
	<br>
<!-- header -->	

<br>
<br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-3">
<div class="row col-sm-11">
<div class="card mb-3">
  <h3 class="card-header">Card header</h3>
  <div class="card-body">
    <h5 class="card-title">Special title treatment</h5>
    <h6 class="card-subtitle text-muted">Support card subtitle</h6>
  </div>
  <svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="100%" height="200" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
    <rect width="100%" height="100%" fill="#868e96"></rect>
    <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
  </svg>
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>
</div>

</div>
<div class="col-sm-6">
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#complete"><b>답변완료</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#await"><b>답변대기</b></a>
  </li>
  <li class="nav-item ml-auto">
  	<a class="nav-link" data-toggle="tab" href="#latest">최신순</a>
  </li>
  <li class="nav-item">
  	<a class="nav-link" data-toggle="tab" href="#popular">인기순</a>
  </li>&nbsp;
  <li class="nav-item">
  	<a class="nav-link btn btn-primary btn-sm" data-toggle="tab" href="#emergency" id="emergency2">
  	<span class="glyphicon glyphicon-bell" aria-hidden="true"></span>
  	 긴급질문
  	</a>
  </li>
</ul>
<br>

<div id="myTabContent" class="tab-content">

  <div class="tab-pane fade active show" id="complete">
  <!-- for each문 여기 넣으면 됩니다 -->
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="#">
		  <i class="fa fa-quora" aria-hidden="true"></i>  
		    답변 완료 질문 제목이 들어갑니다.</a></h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
		    	추천수
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		    1~5번 책 대분류 선택한 것</p>
		  </div>
	 </div>
 	 <br>
 	 
	<div>
	<br><br>
	  <ul class="pagination pagination-lg justify-content-center align-items-center">
	    <li class="page-item">
	      <a class="page-link" href="#">&laquo;</a>
	    </li>
	    <li class="page-item active">
	      <a class="page-link" href="#">1</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">2</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">3</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">4</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">5</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">&raquo;</a>
	    </li>
	  </ul>
	</div>
 	 
  </div>
  
  <div class="tab-pane fade" id="await">
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="#">
			  <i class="fa fa-quora" aria-hidden="true"></i>  
			    답변 대기 질문 제목이 들어갑니다.</a>
		    </h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
		    	추천수
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		    1~5번 책 대분류 선택한 것</p>
		  </div>
	 </div>
 	 <br>
 	 
 	<div>
	<br><br>
	  <ul class="pagination pagination-lg justify-content-center align-items-center">
	    <li class="page-item">
	      <a class="page-link" href="#">&laquo;</a>
	    </li>
	    <li class="page-item active">
	      <a class="page-link" href="#">1</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">2</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">3</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">4</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">5</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">&raquo;</a>
	    </li>
	  </ul>
	</div>
 	 
  </div>
  
  <div class="tab-pane fade" id="latest">
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="#">
			  <i class="fa fa-quora" aria-hidden="true"></i>  
			    최신순으로 나열됩니다.</a>
		    </h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
		    	추천수
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		    1~5번 책 대분류 선택한 것</p>
		  </div>
	 </div>
 	 <br>
 	 
 	<div>
	<br><br>
	  <ul class="pagination pagination-lg justify-content-center align-items-center">
	    <li class="page-item">
	      <a class="page-link" href="#">&laquo;</a>
	    </li>
	    <li class="page-item active">
	      <a class="page-link" href="#">1</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">2</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">3</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">4</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">5</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">&raquo;</a>
	    </li>
	  </ul>
	</div>
 	 
  </div>
  
  <div class="tab-pane fade" id="popular">
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="#">
			  <i class="fa fa-quora" aria-hidden="true"></i>  
			    인기순으로 나열됩니다.</a>
		    </h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
		    	추천수
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		    1~5번 책 대분류 선택한 것</p>
		  </div>
	 </div>
 	 <br>
 	 
 	<div>
	<br><br>
	  <ul class="pagination pagination-lg justify-content-center align-items-center">
	    <li class="page-item">
	      <a class="page-link" href="#">&laquo;</a>
	    </li>
	    <li class="page-item active">
	      <a class="page-link" href="#">1</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">2</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">3</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">4</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">5</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">&raquo;</a>
	    </li>
	  </ul>
	</div>
 	 
  </div>
  
  <div class="tab-pane fade" id="emergency">
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="#">
			  <i class="fa fa-quora" aria-hidden="true"></i>
			    긴급질문입니다.
		    <span class="badge badge-secondary">현상금</span>
		    </a></h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
		    	추천수
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		    1~5번 책 대분류 선택한 것</p>
		  </div>
	 </div>
 	 <br>
 	 
 	<div>
	<br><br>
	  <ul class="pagination pagination-lg justify-content-center align-items-center">
	    <li class="page-item">
	      <a class="page-link" href="#">&laquo;</a>
	    </li>
	    <li class="page-item active">
	      <a class="page-link" href="#">1</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">2</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">3</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">4</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">5</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">&raquo;</a>
	    </li>
	  </ul>
	</div>
 	 
  </div>
</div>
</div>

<div class="col-sm-3">
		<div class="card border-secondary mb-3" style="max-width: 20rem;" id="guideline">
               <div class="card-header"><b>필독사항</b></div>
               <div class="card-body">
				<p>1. 질문은 <b>구체</b>적으로 해주세요!</p>
				<p>2. 토론을 유발할 가능성이 높은 질문은 피하세요!</p>
				<p>3. 질문 내용에 개인정보(실명, 주민번호, 연락처)가 포함되지 않게 작성해주세요!</p>
               </div>
		</div>
</div>

</div>
</div>
</body>
</html>