<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="https://use.fontawesome.com/b490e94c82.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

	<style>

		.card-header-gd {
			padding: 0.75rem 1.25rem;
			margin-bottom: 0;
			background-color: #f3969a;
			border-bottom: 1px solid rgba(0, 0, 0, 0.125);
			color: #fff;
		}

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

		.fa-quora{
		  color:#78c2ad
		}
		
		small{
		  color:#78c2ad;
		}
		
	</style>

</head>
<body>


<br>
<br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-2">
<%--<div class="row col-sm-11">--%>
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
<%--</div>--%>
</div>

</div>
<div class="col-sm-7">
<ul class="nav nav-tabs">
  <li class="nav-item ${active1}">
    <a class="nav-link " data-toggle="tab" href="#complete"><b>답변완료</b></a>
  </li>
  <li class="nav-item ${active2}">
    <a class="nav-link" data-toggle="tab" href="#await"><b>답변대기</b></a>
<%--    <a class="nav-link" data-toggle="tab" href="#await" href="javascript:void(0);" onclick="test()"><b>답변대기</b></a>--%>
  </li>
  <li class="nav-item ml-auto ${active3}">
  	<a class="nav-link" data-toggle="tab" href="#latest">최신순</a>
  </li>
  <li class="nav-item ${active4}">
  	<a class="nav-link" data-toggle="tab" href="#popular">인기순</a>
  </li>&nbsp;
  <li class="nav-item ${active5}">
  	<a class="nav-link btn btn-primary btn-sm" data-toggle="tab" href="#emergency" id="emergency2">
  	<span class="glyphicon glyphicon-bell" aria-hidden="true"></span>
  	 긴급질문
  	</a>
  </li>
</ul>
<br>

<div id="myTabContent" class="tab-content">
  <div class="tab-pane fade ${show1}" id="complete">
	  <c:forEach var="qboard" items="${completeList}">
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="/qboardContent.bo?qboardNum=${qboard.q_no}&subCa=${subCa}">
		  <i class="fa fa-quora" aria-hidden="true"></i>
		    ${qboard.q_title}</a>
			<c:if test="${qboard.q_sos == 1}">
				<span class="badge badge-secondary">현상금</span>
			</c:if></h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
		    	${qboard.q_up}
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">${qboard.q_date}</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		    ${qboard.book_ca_name}</p>
		  </div>
	 </div>
		  <br>
	  </c:forEach>
 	 <br>
 	 
	<div>
	<br><br>
<%--	  <ul class="pagination pagination-lg justify-content-center align-items-center">--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">&laquo;</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item active">--%>
<%--	      <a class="page-link" href="#">1</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">2</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">3</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">4</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">5</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">&raquo;</a>--%>
<%--	    </li>--%>
<%--	  </ul>--%>
		<ul
				class="pagination pagination-lg justify-content-center align-items-center">
			<c:if test="${completePaging.startPage != 1 }">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage1=${completePaging.startPage - 1 }&cntPerPage1=${completePaging.cntPerPage}&state=1">&laquo;</a></li>
			</c:if>
			<c:forEach begin="${completePaging.startPage }" end="${completePaging.endPage }" var="p">
				<c:choose>
					<c:when test="${p == completePaging.nowPage}">
						<li class="page-item active"><a class="page-link">${p}</a></li>
					</c:when>
					<c:when test="${p != completePaging.nowPage}">
						<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage1=${p}&cntPerPage1=${completePaging.cntPerPage}&state=1">${p}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${completePaging.endPage != completePaging.lastPage}">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage1=${completePaging.endPage+1 }&cntPerPage1=${completePaging.cntPerPage}&state=1">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
 	 
  </div>

  <div class="tab-pane fade ${show2}" id="await">
	  <c:forEach var="qboard" items="${readyList}">
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="/qboardContent.bo?qboardNum=${qboard.q_no}&subCa=${subCa}">
			  <i class="fa fa-quora" aria-hidden="true"></i>
					${qboard.q_title}</a>
			<c:if test="${qboard.q_sos == 1}">
				<span class="badge badge-secondary">현상금</span>
			</c:if>
		    </h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
					${qboard.q_up}
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">${qboard.q_date}</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		    ${qboard.book_ca_name}</p>
		  </div>
	 </div>
	  <br>
	  </c:forEach>
 	 <br>

 	<div>
	<br><br>
<%--	  <ul class="pagination pagination-lg justify-content-center align-items-center">--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">&laquo;</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item active">--%>
<%--	      <a class="page-link" href="#">1</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">2</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">3</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">4</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">5</a>--%>
<%--	    </li>--%>
<%--	    <li class="page-item">--%>
<%--	      <a class="page-link" href="#">&raquo;</a>--%>
<%--	    </li>--%>
<%--	  </ul>--%>
		<ul
				class="pagination pagination-lg justify-content-center align-items-center">
			<c:if test="${readyPaging.startPage != 1 }">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage2=${readyPaging.startPage - 1 }&cntPerPage2=${readyPaging.cntPerPage}&state=2">&laquo;</a></li>
			</c:if>
			<c:forEach begin="${readyPaging.startPage }" end="${readyPaging.endPage }" var="p2">
				<c:choose>
					<c:when test="${p2 == readyPaging.nowPage}">
						<li class="page-item active"><a class="page-link">${p2}</a></li>
					</c:when>
					<c:when test="${p2 != readyPaging.nowPage}">
						<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage2=${p2}&cntPerPage2=${readyPaging.cntPerPage}&state=2">${p2}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${readyPaging.endPage != readyPaging.lastPage}">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage2=${readyPaging.endPage+1 }&cntPerPage2=${readyPaging.cntPerPage}&state=2">&raquo;</a></li>
			</c:if>
		</ul>
	</div>

  </div>
  
  <div class="tab-pane fade ${show3}" id="latest">
	  <c:forEach var="qboard" items="${latestList}">
		  <div class="card bg-light">
			  <div class="card-body">
				  <div class="d-flex w-100 justify-content-between">
					  <h4 class="card-title"><a href="/qboardContent.bo?qboardNum=${qboard.q_no}&subCa=${subCa}">
						  <i class="fa fa-quora" aria-hidden="true"></i>
							  ${qboard.q_title}</a>
						  <c:if test="${qboard.q_sos == 1}">
							  <span class="badge badge-secondary">현상금</span>
						  </c:if>
					  </h4>
					  <small>
						  <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
							  ${qboard.q_up}
					  </small>
				  </div>
				  <h6 class="card-subtitle mb-2 text-muted text-right">${qboard.q_date}</h6>
				  <p class="card-text">
					  <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
						  ${qboard.book_ca_name}</p>
			  </div>
		  </div>
		  <br>
	  </c:forEach>

 	 <br>
 	 
 	<div>
	<br><br>
		<ul
				class="pagination pagination-lg justify-content-center align-items-center">
			<c:if test="${latesPaging.startPage != 1 }">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage3=${latesPaging.startPage - 1 }&cntPerPage3=${latesPaging.cntPerPage}&state=3">&laquo;</a></li>
			</c:if>
			<c:forEach begin="${latesPaging.startPage }" end="${latesPaging.endPage }" var="p3">
				<c:choose>
					<c:when test="${p3 == latesPaging.nowPage}">
						<li class="page-item active"><a class="page-link">${p3}</a></li>
					</c:when>
					<c:when test="${p3 != latesPaging.nowPage}">
						<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage3=${p3}&cntPerPage3=${latesPaging.cntPerPage}&state=3">${p3}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${latesPaging.endPage != latesPaging.lastPage}">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage3=${latesPaging.endPage+1 }&cntPerPage3=${latesPaging.cntPerPage}&state=3">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
 	 
  </div>
  
  <div class="tab-pane fade ${show4}" id="popular">
	  <c:forEach var="qboard" items="${popularityList}">
		  <div class="card bg-light">
			  <div class="card-body">
				  <div class="d-flex w-100 justify-content-between">
					  <h4 class="card-title"><a href="/qboardContent.bo?qboardNum=${qboard.q_no}&subCa=${subCa}">
						  <i class="fa fa-quora" aria-hidden="true"></i>
							  ${qboard.q_title}</a>
						  <c:if test="${qboard.q_sos == 1}">
							  <span class="badge badge-secondary">현상금</span>
						  </c:if>
					  </h4>
					  <small>
						  <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
							  ${qboard.q_up}
					  </small>
				  </div>
				  <h6 class="card-subtitle mb-2 text-muted text-right">${qboard.q_date}</h6>
				  <p class="card-text">
					  <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
						  ${qboard.book_ca_name}</p>
			  </div>
		  </div>
		  <br>
	  </c:forEach>
 	 <br>
 	 
 	<div>
	<br><br>
		<ul
				class="pagination pagination-lg justify-content-center align-items-center">
			<c:if test="${popuPaging.startPage != 1 }">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage4=${popuPaging.startPage - 1 }&cntPerPage4=${popuPaging.cntPerPage}&state=4">&laquo;</a></li>
			</c:if>
			<c:forEach begin="${popuPaging.startPage }" end="${popuPaging.endPage }" var="p3">
				<c:choose>
					<c:when test="${p3 == popuPaging.nowPage}">
						<li class="page-item active"><a class="page-link">${p3}</a></li>
					</c:when>
					<c:when test="${p3 != popuPaging.nowPage}">
						<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage4=${p3}&cntPerPage4=${popuPaging.cntPerPage}&state=4">${p3}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${popuPaging.endPage != popuPaging.lastPage}">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage4=${popuPaging.endPage+1 }&cntPerPage4=${popuPaging.cntPerPage}&state=4">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
 	 
  </div>
  
  <div class="tab-pane fade ${show5}" id="emergency">
	  <c:forEach var="qboard" items="${expList}">
	  <div class="card bg-light">
		  <div class="card-body">
			<div class="d-flex w-100 justify-content-between">
		    <h4 class="card-title"><a href="/qboardContent.bo?qboardNum=${qboard.q_no}&subCa=${subCa}">
			  <i class="fa fa-quora" aria-hidden="true"></i>
				${qboard.q_title}
		    <span class="badge badge-secondary">현상금</span>
		    </a></h4>
		    <small>
		    <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
				${qboard.q_up}
		    </small>
		    </div>
		    <h6 class="card-subtitle mb-2 text-muted text-right">${qboard.q_date}</h6>
		    <p class="card-text">
		    <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
				${qboard.book_ca_name}</p>
		  </div>
	 </div>
	  <br>
	  </c:forEach>
 	 <br>

 	<div>
	<br><br>
		<ul
				class="pagination pagination-lg justify-content-center align-items-center">
			<c:if test="${expPaging.startPage != 1 }">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage5=${expPaging.startPage - 1 }&cntPerPage5=${expPaging.cntPerPage}&state=5">&laquo;</a></li>
			</c:if>
			<c:forEach begin="${expPaging.startPage }" end="${expPaging.endPage }" var="p3">
				<c:choose>
					<c:when test="${p3 == expPaging.nowPage}">
						<li class="page-item active"><a class="page-link">${p3}</a></li>
					</c:when>
					<c:when test="${p3 != expPaging.nowPage}">
						<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage5=${p3}&cntPerPage5=${expPaging.cntPerPage}&state=5">${p3}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${expPaging.endPage != expPaging.lastPage}">
				<li class="page-item"><a class="page-link" href="qboardListForm.bo?nowPage5=${expPaging.endPage+1 }&cntPerPage5=${expPaging.cntPerPage}&state=5">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
 	 
  </div>
</div>
</div>

<div class="col-sm-3">
		<div class="card border-secondary mb-3" style="max-width: 20rem;" id="guideline">
               <div class="card-header-gd"><b>필독사항</b></div>
               <div class="card-body">
				<p>1. 질문은 <b>구체</b>적으로 해주세요!</p>
				<p>2. 토론을 유발할 가능성이 높은 질문은 피하세요!</p>
				<p>3. 질문 내용에 개인정보(실명, 주민번호, 연락처)가 포함되지 않게 작성해주세요!</p>
               </div>
		</div>
	<div style="max-width: 20rem;">
		<c:if test="${not empty sessionScope.userNo}">
			<a href="#"><button type="button" class="btn btn-secondary btn-block" onclick="location.href='/qBoardInsertForm.bo?subCa=${requestScope.subCa}'">질문하기</button></a>
		</c:if>
	</div>
</div>

</div>
</div>
</body>
</html>