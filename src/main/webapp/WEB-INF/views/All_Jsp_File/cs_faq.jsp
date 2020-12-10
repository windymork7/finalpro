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
<title>cs_faq</title>
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
								<legend>FAQ</legend>
							</div>
						</div>
						<hr class="my-4">
						<div class="card bg-light mb-3">
							<div class="card-header">

								<div class="d-flex w-100 justify-content-between">
									<h4 class="card-title">답변은 아무나 할 수 있나요?</h4>
								</div>

								<p class="card-text">
								<h6>관리자</h6>
								<p>2020-12-05</p>
							</div>

							<div class="card-body">
								<div class="card-text" id="question-text">

									<textarea class="form-control" rows="4" readonly>
D's Q 서비스의 답변자는 각 분야의 현업 전문가 또는 실무자입니다. 
답변자는 일반 사용자 보다 더 큰 보상을 받을 수 있습니다. 
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

		</div>
	</div>

	

</body>
</html>