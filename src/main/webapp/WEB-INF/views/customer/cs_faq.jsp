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

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>cs_faq</title>
<!-- 부트스트랩 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--	crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--	crossorigin="anonymous"></script>--%>


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
				<form action="/faqBoardUpdate.fa" method="post">
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
									<h4 class="card-title">
										<c:choose>
											<c:when test="${upda == 0}">
												${faqVO.faq_title }
											</c:when>
											<c:when test="${upda == 1}">
												<input type="text" class="form-control" name="faq_title" value="${faqVO.faq_title}">
											</c:when>
										</c:choose>
									</h4>
								</div>

								<p class="card-text">
								<h6>관리자</h6>
								<p>${faqVO.faq_date}</p>
							</div>
							<input type="hidden" name="faq_no" value="${faqVO.faq_no}">
							<div class="card-body">
								<div class="card-text" id="question-text">
									<c:choose>
										<c:when test="${upda == 0}">
											<textarea class="form-control" name="faq_content" rows="4" readonly>${faqVO.faq_content }</textarea>
										</c:when>
										<c:when test="${upda == 1}">
											<textarea class="form-control" name="faq_content" rows="4">${faqVO.faq_content }</textarea>
										</c:when>
									</c:choose>
									<br>
									<c:if test="${sessionScope.userNick eq 'admin'}">
										<div class="text-right">
										<c:choose>
											<c:when test="${upda == 0}">
												<button type="button" onclick="location.href='faqContent.cu?upda=1&faq_no=${faqVO.faq_no}'" class="btn btn-primary">수정</button>
											</c:when>
											<c:when test="${upda == 1}">
												<button type="submit" class="btn btn-primary">수정</button>
											</c:when>
										</c:choose>
										<button type="button" onclick="faqDelete()" class="btn btn-secondary">삭제</button>
									</div>
									</c:if>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>

		</div>
	</div>

	

</body>
<script>
	function faqDelete(){

		var result = confirm("정말로 삭제하시겠습니까?");
		if (result == true){
			location.href="faqBoardDelete.fa?faq_no=${faqVO.faq_no}";
		}
	}

</script>
</html>