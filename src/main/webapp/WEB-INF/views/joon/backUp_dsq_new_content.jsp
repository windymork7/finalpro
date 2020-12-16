<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
	<title>dsq_searchTip</title>
	<!-- 부트스트랩 -->
<%--	<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--	<script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>


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

		#sidebox { position:absolute; }

	</style>
</head>
<body>

<br>
<br>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
				<fieldset>
					<div>
						<div id="c_left">
							<legend>검색 Tip ${tipVO.mem_no},${tipVO.new_pick_state }</legend>
						</div>
						<div id="c_right">
							<c:choose>
							<c:when test="${empty sessionScope.userNo}"></c:when>
							<c:when test="${sessionScope.userNo ne tipVO.mem_no}">
							<c:if test="${tipVO.new_pick_state == 0}">
								<button type="button" class="btn btn-primary"onclick="location.href='/newReplyWriteForm.bo?new_no=${tioVO.new_no}'">답변하기</button>
							</c:if>
							<button type="button" class="btn btn-info" data-toggle="tooltip" data-placement="top" title="추천" onclick="location.href='newUpCheck.bo?new_no=${tipVO.new_no}'">
								<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
							</button>
							<span data-toggle="modal" data-target="#Modal_1">
                        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="신고">
                    <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                  </button>
                  </span>
                  </c:when>
                  </c:choose>
						</div>
					</div>
					<br>

					<hr class="my-4">
					<div class="card bg-light mb-3">
						<div class="card-header">
							<div class="d-flex w-100 justify-content-between">
								<h4 class="card-title">
									<i class="fa fa-quora" aria-hidden="true"></i>
									${tipVO.new_title}
								</h4>
								<small>
									<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
									${tipVO.new_up}
								</small>
							</div>
							<h6 class="card-subtitle mb-2 text-muted text-right">${tipVO.new_date}</h6>
							<h6 class="card-subtitle mb-2">${tipVO.mem_nick}</h6>
						</div>
						<div class="card-body">
							<div class="card-text" id="question-text">
                   <textarea class="form-control" rows="20" readonly>
${tipVO.new_content}
                  </textarea>
								<br>
								<div id="q_right">

									<button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="편집">
										<i class="fa fa-pencil" aria-hidden="true"></i>
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
		                       <form action="/qboardTipDownAction.bo" method="post">
		                            <div class="modal-body">
		                                <div class="form-group">
		                                <input type="hidden" name="new_no" value="${tipVO.new_no}">
		                                <input type="hidden" name="mem_no" value="${sessionScope.userNo}">
		                            <div class="custom-control custom-radio">
		                              <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" value="1">
		                              <label class="custom-control-label" for="customRadio1">주제에 맞지 않음</label>
		                            </div>
		                            <div class="custom-control custom-radio">
		                              <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input" value="2">
		                              <label class="custom-control-label" for="customRadio2">욕설</label>
		                            </div>
		                            <div class="custom-control custom-radio">
		                              <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input" value="3">
		                              <label class="custom-control-label" for="customRadio3">광고</label>
		                            </div>
		                            <div class="custom-control custom-radio">
		                              <input type="radio" id="customRadio4" name="customRadio" class="custom-control-input" value="4">
		                              <label class="custom-control-label" for="customRadio4">사칭</label>
		                            </div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary">전송</button>
									<button type="button" class="btn btn-secondary">닫기</button>
								</div>
								</form>
							</div>
						</div>
					</div>
					

<%--					<div class="modal fade" id="Modal_3" tabindex="-1"--%>
<%--						 aria-labelledby="ModalLabel_3" aria-hidden="true">--%>
<%--						<div class="modal-dialog">--%>
<%--							<div class="modal-content">--%>
<%--								<div class="modal-header">--%>
<%--									<h5 class="modal-title" id="ModalLabel_3">신고 사유를 선택하세요.</h5>--%>
<%--									<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--										<span aria-hidden="true">&times;</span>--%>
<%--									</button>--%>
<%--								</div>--%>
<%--								<div class="modal-body">--%>
<%--									<div class="form-group">--%>
<%--										<div class="custom-control custom-radio">--%>
<%--											<input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">--%>
<%--											<label class="custom-control-label" for="customRadio1">신고 사유 1</label>--%>
<%--										</div>--%>
<%--										<div class="custom-control custom-radio">--%>
<%--											<input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">--%>
<%--											<label class="custom-control-label" for="customRadio2">신고 사유 2</label>--%>
<%--										</div>--%>
<%--										<div class="custom-control custom-radio">--%>
<%--											<input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">--%>
<%--											<label class="custom-control-label" for="customRadio3">신고 사유 3</label>--%>
<%--										</div>--%>
<%--										<div class="custom-control custom-radio">--%>
<%--											<input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">--%>
<%--											<label class="custom-control-label" for="customRadio3">신고 사유 4</label>--%>
<%--										</div>--%>
<%--										<div class="custom-control custom-radio">--%>
<%--											<input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">--%>
<%--											<label class="custom-control-label" for="customRadio3">신고 사유 5</label>--%>
<%--										</div>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--								<div class="modal-footer">--%>
<%--									<button type="submit" class="btn btn-primary" data-dismiss="modal">전송</button>--%>
<%--									<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--						</div>--%>
<%--					</div>--%>




					<form id="editListForm">
						<div id="commentList">
						</div>
					</form>

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
         <span data-toggle="modal" data-target="#Modal_3">
            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
         </span>
									</button>
								</div>
								&nbsp;
								&nbsp;
								<textarea class="form-control" rows="8" id="reply_text" readonly>
채택 안 했을 때(질문자에게 이렇게 보임)

1차원 배열이면 "java swap"으로 다차원 배열이면 "java 반복문 swap"키워드를 검색해보세요!
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

1차원 배열이면 "java swap"으로 다차원 배열이면 "java 반복문 swap"키워드를 검색해보세요!
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

1차원 배열이면 "java swap"으로 다차원 배열이면 "java 반복문 swap"키워드를 검색해보세요!
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
		</div>

		<div class="col-sm-1 offset-sm-2">
			<div id="sidebox">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<p><i class="fa fa-chevron-up fa-2x text-primary" aria-hidden="true" id="topBtn"></i></p>
				<p><i class="fa fa-chevron-down fa-2x text-primary" aria-hidden="true" id="bottomBtn"></i></p>
			</div>
		</div>
	</div>



</div>

<script>
	$(function () {
		$('[data-toggle="tooltip"]').tooltip();
	})

	$(window).scroll(function(){
		var scrollTop = $(document).scrollTop();
		if (scrollTop < 230) {
			scrollTop = 230;
		}
		$("#sidebox").stop();
		$("#sidebox").animate( { "top" : scrollTop });
	});

	var topEle = $('#topBtn');
	var delay = 1000;
	topEle.on('click', function() {
		$('html, body').stop().animate({scrollTop: 0}, delay);
	});

	var topEle = $('#bottomBtn');
	var delay = 1000;
	topEle.on('click', function() {
		$("html, body").animate({ scrollTop: $(document).height() }, delay);
	});

</script>

</body>
</html>