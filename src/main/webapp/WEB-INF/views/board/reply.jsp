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
    <title>reply</title>
    <!-- 부트스트랩 -->
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--    <script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>

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
               <fieldset>
                  <div>
                  <br>
                  <br>
                  <br>
                     <div>
                        <legend>${qBoardVO.sub_ca_name}</legend>
                     </div>
                  </div>
                  <hr class="my-4">
					<div class="card bg-light mb-3">
					  <div class="card-header">
					  <div class="d-flex w-100 justify-content-between">
					  	<h4 class="card-title">
					  		<i class="fa fa-quora" aria-hidden="true"></i>
                            ${qBoardVO.q_title}
					  	</h4>
					  	<small>
					    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            ${qBoardVO.q_up}
					    </small>
					    </div>
					    <h6 class="card-subtitle mb-2 text-muted text-right">${qBoardVO.q_date}</h6>
					    <h6 class="card-subtitle mb-2">${qBoardVO.mem_nick} (로고)</h6>
					    <p class="card-text">
					    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                            ${qBoardVO.book_ca_name}</p>
					  </div>
					  <div class="card-body">
					    <div class="card-text" id="question-text">
					    <textarea class="form-control" rows="20" readonly>${qBoardVO.q_content}</textarea>
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
                           <button type="button" class="btn btn-primary" data-dismiss="modal">전송</button>
                           <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        </div>
                     </div>
                  </div>
               </div>
					
				<hr class="my-4">
				<form action="/replyWriteProcess.bo?subCa=${qBoardVO.sub_ca_no}" method="post">
                  <div id="c_left">
                     <h5>${sessionScope.userNick}</h5>
                      <input type="hidden" name="mem_no" value="${sessionScope.userNo}">
                      <input type="hidden" name="q_no" value="${qBoardVO.q_no}">
                  </div>
                  <div id="c_right">
                     <button type="submit" class="btn btn-primary">등록하기</button>
                  </div>
                  <br>
                  <br>
				  <div class="form-group">
                     <textarea class="form-control" id="content" name="reply_content" rows="8">답변을 작성할 때  가이드라인을 지켜주세요.
                     </textarea>
                  </div>
                </form>
</fieldset>

</div>
</div>
</div>
</body>
</html>