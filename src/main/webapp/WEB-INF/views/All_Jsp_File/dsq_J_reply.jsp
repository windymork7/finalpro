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
    <title>dsq_J_reply</title>
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
	
	.fa-quora{
		color:#78c2ad
	}
	
	small{
		color:#78c2ad;
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
                  <br>
                  <br>
                  <br>
                     <div>
                        <legend>JAVA</legend>
                     </div>
                  </div>
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
					    <h6 class="card-subtitle mb-2">글쓴이ID (로고)</h6>
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
				
                  <div id="c_left">
                     <h5>글쓴이ID (로고)</h5>
                  </div>
                  <div id="c_right">
                     <button type="submit" class="btn btn-primary">등록하기</button>
                  </div>
                  <br>
                  <br>
				  <div class="form-group">
                     <textarea class="form-control" id="content" rows="8">
답변을 작성할 때  가이드라인을 지켜주세요.
                     </textarea>
                  </div>

</fieldset>
</form>
</div>
</div>
</div>
</body>
</html>