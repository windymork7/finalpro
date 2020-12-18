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
	<title>dsq_searchTip_reply</title>
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
			<form action="tipReplyWriteAction.bo">
				<fieldset>
					<div>
						<div>
							<legend>검색 Tip</legend>
						</div>
					</div>
					<hr class="my-4">
					<div class="card bg-light mb-3">
						<div class="card-header">
							<div class="d-flex w-100 justify-content-between">
								<h4 class="card-title">
									<i class="fa fa-quora" aria-hidden="true"></i>
									${vo.new_title}
								</h4>
								<small>
									<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
									${vo.new_up}
								</small>
							</div>
							<h6 class="card-subtitle mb-2 text-muted text-right">${vo.new_date}</h6>
							<h6 class="card-subtitle mb-2">${vo.mem_nick}</h6>
						</div>
						<div class="card-body">
							<div class="card-text" id="question-text">
                   <textarea class="form-control" rows="20" readonly>
${vo.new_content}
                  </textarea>
								<br>
							</div>
						</div>
					</div>


					<hr class="my-4">

					<div id="c_left">
						<h5>${sessionScope.userNick}</h5>
					</div>
						<input type="hidden" name="new_no" value="${vo.new_no}">
					<div id="c_right">
						<button type="submit" class="btn btn-primary">등록하기</button>
					</div>
					<br>
					<br>
					<div class="form-group">
                     <textarea class="form-control" id="content" rows="8" name="new_reply_content">
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