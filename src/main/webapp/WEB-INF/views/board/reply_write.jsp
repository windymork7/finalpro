<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>reply_write</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://use.fontawesome.com/b490e94c82.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


	<style>
	#c_left {
	   float: left;
	}
	
	#c_right {
	   float: right;
	}
	
	#q_right{
		float: right;
	}
	
	.fa-quora{
		color:#78c2ad
	}
	
	.card-title{
		margin-bottom: 0rem;
	}
	
	#question-text{
		font-size: 1.2em;
	}
	
	small{
		color:#78c2ad;
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

   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
			<form>
			  <fieldset>
                  <div>
                  <br>
                  <br>
                  <br>
                     <div id="c_left">
                        <legend>JAVA</legend>
                     </div>
                     <div id="c_right">
                     <a href="#">
                        <button type="button" class="btn btn-primary">답변하기</button>
                     </a>
                        <button type="button" class="btn btn-info" data-toggle="tooltip" data-placement="top" title="추천">
						  <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						</button>
						<span data-toggle="modal" data-target="#Modal_1">
                        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="신고">
						  <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
						</button>
						</span>
                     </div>
                  </div>
                  <br>
                  
                  <hr class="my-4">
					<div class="card bg-light mb-3">
					  <div class="card-header">
					  <div class="d-flex w-100 justify-content-between">
					  	<h4 class="card-title">
					  		<i class="fa fa-quora" aria-hidden="true"></i>
					  		질문 제목이 들어갑니다.
					  	</h4>
					  	<small>
					    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					    	13
					    </small>
					    </div>
					    <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
					    <h6 class="card-subtitle mb-2">글쓴이ID</h6>
					    <p class="card-text">
					    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
					    1~5번 책 대분류 선택한 것</p>
					  </div>
					  <div class="card-body">
					    <div class="card-text" id="question-text">
					    <textarea class="form-control" rows="20" readonly>
진로를 컴퓨터 프로그래머쪽으로 가고싶은 고1입니다.
가고 싶은 분야는 앱, 웹쪽으로 가고 싶고
선호하는 언어는 앱, 웹쪽이니까 Java 입니다.
제가 온라인 강의로 통해서 언어를 배우고 싶습니다만
저희 집에는 컴퓨터는 없고, 노트북 한대 있습니다.
노트북이 좋은 것도 아니고 가끔씩 인터넷만 켜도 렉걸리는 노트북인데, 심하게 걸리는건 아주 가끔이라서 쓸만 합니다.(모델명 : 노트북 컴퓨터 LGR58)
저는 이 노트북으로 언어를 배우는 시도조차 못할 것을 인지하고 부모님에게 설득을 하면서 컴퓨터 하나 사달라고 했는데, 지금 이 노트북으로 할 수 있으면서 왜 컴퓨터를 살려고 하니 등...전혀 설득이 되지 않습니다.
이 부분에 대해서 알려주시면 감사하겠습니다.
						</textarea>
						<br>
						<div id="q_right">
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="신청">
						  <i class="fa fa-book" aria-hidden="true"></i>
						</button>
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="편집">
						  <i class="fa fa-pencil" aria-hidden="true"></i>
						</button>
                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="스크랩">
						  <i class="fa fa-bookmark-o" aria-hidden="true"></i>
						</button>
						</div>
					    </div>
					  </div>
					</div>
					
			<!-- Modal -->
               <div class="modal fade" id="Modal_1" tabindex="-1"
                  aria-labelledby="ModalLabel_1" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="ModalLabel_1">신고 사유를 선택하세요.</h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">
                          <div class="form-group">
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio1">신고 사유 1</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio2">신고 사유 2</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio3">신고 사유 3</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio3">신고 사유 4</label>
    </div>
    <div class="custom-control custom-radio">
      <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
      <label class="custom-control-label" for="customRadio3">신고 사유 5</label>
    </div>
  </div>
                        </div>
                        <div class="modal-footer">
                           <button type="submit" class="btn btn-primary" data-dismiss="modal">전송</button>
                           <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        </div>
                     </div>
                  </div>
               </div>
					
				<hr class="my-4">
				
	<div class="card">
	  <div class="card-header">
	  아이디1 (로고)
	  </div>
	  <div class="card-body">
	    <div class="card-text d-flex justify-content-between align-items-center">
	    	<div class="btn-group-vertical">
			<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
				<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
				20
			</button>
			<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="채택">
				<i class="fa fa-check" aria-hidden="true"></i>
			</button>
			<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
				<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
			</button>
		</div>
		&nbsp;
		&nbsp;
	   <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 안 했을 때(질문자에게 이렇게 보임)
	
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
부족하지만 도움이 되셨기를 바라며 추가적인 문의가 필요하시면 답변 부탁드려요!
		</textarea>
	   </div>
	  </div>
	</div>
	<br>
	
	<div class="card">
	  <div class="card-header">
	  아이디2 (로고)
	  </div>
	  <div class="card-body">
	    <div class="card-text d-flex justify-content-between align-items-center">
	    	<div class="btn-group-vertical">
				<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
					<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					20
				</button>
				<button type="button" class="btn btn-primary" data-toggle="tooltip" data-placement="left" title="채택">
					<i class="fa fa-check" aria-hidden="true"></i>
				</button>
				<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
					<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
				</button>
		</div>
		&nbsp;
		&nbsp;
	   <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 했을 때(질문자, 사용자에게 모두 이렇게 보임)

질문하신 내용에 대하여 아래와 같이 답변 드립니다.
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
		</textarea>
	   </div>
	  </div>
	</div>
	<br>
	
	<div class="card">
	  <div class="card-header">
	  아이디3 (로고)
	  </div>
	  <div class="card-body">
	    <div class="card-text d-flex justify-content-between align-items-center">
	    	<div class="btn-group-vertical">
				<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
					<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					13
				</button>
				<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
					<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
				</button>
			</div>
		&nbsp;
		&nbsp;
	   <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 받지 못한 답변

질문하신 내용에 대하여 아래와 같이 답변 드립니다.
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
		</textarea>
	   </div>
	  </div>
	</div>
	<br>
				
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				
            	</fieldset>
			</form>
         </div>
         
         
         
      </div>
   </div>

<script>
	$(function () {
	    $('[data-toggle="tooltip"]').tooltip();
	  })
</script>

</body>
</html>