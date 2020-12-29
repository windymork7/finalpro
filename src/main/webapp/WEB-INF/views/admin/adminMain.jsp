<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=de0vice-width, initial-scale=1">
<title>adminPage_main</title>
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

						<!-- 구글차트 스크립트 -->
						<script type="text/javascript"
							src="https://www.gstatic.com/charts/loader.js"></script>
						<script type="text/javascript">
							google.charts.load('current', {
								'packages' : [ 'bar' ]
							});
							google.charts.setOnLoadCallback(drawChart);
							function drawChart() {
								var data = google.visualization
										.arrayToDataTable([
												[ '나라', '인구수' ],
												[ '미국', 1000 ],
												[ '한국', 1170 ],
												[ '일본', 660 ] ]);

								var options = {
									chart : {
										title : 'Company Performance',
										subtitle : 'Sales, Expenses, and Profit: 2014-2017',
									}
								};

								var chart = new google.charts.Bar(document
										.getElementById('columnchart_material'));

								chart.draw(data, google.charts.Bar
										.convertOptions(options));
							}
						</script>
						<!-- 여기까지 구글차 -->

<style>
.nav-tabs .nav-link {
	border: 1px solid transparent;
	border-top-left-radius: 1rem;
	border-top-right-radius: 1rem;
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

.nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {
	color: #78c2ad;
	background-color: #fff;
	border-color: #eceeef #eceeef #fff;
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
</style>

</head>
<body>

	<br>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10 offset-sm-1">
				<ul class="nav nav-tabs">

<%--					<li class="nav-item ${active5} text-center" style="width: 16.666666%"><a--%>
<%--						class="nav-link" data-toggle="tab" href="#site_statistics"><b>--%>
<%--								사이트 통계</b></a></li>--%>

<%--					<li class="nav-item ${active6} text-center" style="width: 16.666666%"><a--%>
<%--						class="nav-link" data-toggle="tab" href="#survey_statistics"><b>--%>
<%--								설문조사 통계</b></a></li>--%>

					<li class="nav-item ${active1} text-center" style="width: 16.666666%"><a
						class="nav-link" data-toggle="tab" href="#mem_management1"><b>회원
								관리1</b></a></li>

					<li class="nav-item ${active2} text-center " style="width: 16.666666%"><a
						class="nav-link" data-toggle="tab" href="#mem_management2"><b>회원
								관리2</b></a></li>

					<li class="nav-item ${active3} text-center" style="width: 16.666666%"><a
						class="nav-link" data-toggle="tab" href="#post_management"><b>게시물
								관리</b></a></li>

					<li class="nav-item ${active4} text-center" style="width: 16.666666%"><a
						class="nav-link" data-toggle="tab" href="#scrapBook"><b>
								스크랩북</b></a></li>
					<li class="nav-item ${active5} text-center" style="width: 16.666666%"><a
							class="nav-link" data-toggle="tab" href="#biz"><b>
								기업회원 승인 대기</b></a></li>
				</ul>
				<br>

				<div id="myTabContent" class="tab-content">

					<div class="tab-pane fade ${show7}" id="site_statistics">
						<div class="text-center">
							<legned>일일 접속자 수 통계</legend> <br>
							<legend>게시물 조회 순위 통계</legend>
						</div>



					</div>

					<div class="tab-pane fade ${show6}" id="survey_statistics">
						<div class="text-center">
							<legend>프로그래밍 언어 설문조사 통계</legend>
						</div>
						<div id="columnchart_material" style="width: 800px; height: 500px;"></div>

					</div>

					<div class="tab-pane fade ${show1}" id="mem_management1">
						<div class="text-center">
							<legend>
								<b>신고 10회 이상 받은 회원 목록</b>
							</legend>
						</div>

						<table class="table">
							<thead>
								<tr class="table-secondary">
									<th scope="col" style="width: 10%" class="text-center">번호</th>
									<th scope="col" style="width: 25%" class="text-center">이메일</th>
									<th scope="col" style="width: 15%" class="text-center">닉네임</th>
									<th scope="col" style="width: 15%" class="text-center">이름</th>
									<th scope="col" style="width: 10%" class="text-center">등급</th>
									<th scope="col" style="width: 10%" class="text-center">신고수</th>
									<th scope="col" style="width: 12.5%" class="text-center">활동정지</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="mRList" items="${memRptList}">
									<tr class="table-light">
										<td style="width: 10%" class="text-center">${mRList.rn }</td>
										<td style="width: 25%" class="text-center">${mRList.mem_email }</td>
										<td style="width: 15%" class="text-center">${mRList.mem_nick }</td>
										<td style="width: 15%" class="text-center">${mRList.mem_name }</td>
										<td style="width: 10%" class="text-center">${mRList.grade_name }</td>
										<td style="width: 10%" class="text-center">${mRList.mem_rpt_cnt }</td>
										<td style="width: 12.5%" class="text-center">
											<button type="button"
												onclick="location.href='memBlackAction.ad?memNo=${mRList.mem_no}'"
												class="btn btn-danger">제재</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<br> <br>
						<div>
							<ul
								class="pagination pagination-lg justify-content-center align-items-center">
								<c:if test="${memRptPaging.startPage !=1 }">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage1=${memRptPaging.startPage -1}&cntPerPage1=${memRptPaging.cntPerPage}&state=1">&laquo;</a>
									</li>
								</c:if>
								<c:forEach begin="${memRptPaging.startPage}"
									end="${memRptPaging.endPage}" var="p1">
									<c:choose>
										<c:when test="${p1 == memRptPaging.nowPage}">
											<li class="page-item active"><a class="page-link">${p1}</a></li>
										</c:when>
										<c:when test="${p1 != memRptPaging.nowPage}">
											<li class="page-item"><a class="page-link"
												href="adminMain.ad?nowPage1=${p1}&cntPerPage1=${memRptPaging.cntPerPage}&state=1">${p1}</a>
											</li>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${memRptPaging.endPage != memRptPaging.lastPage}">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage1=${memRptPaging.endPage+1 }&cntPerPage1=${memRptPaging.cntPerPage}&state=1">&raquo;</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>

					<div class="tab-pane fade ${show2}" id="mem_management2">
						<div class="text-center">
							<legend>
								<b>블랙리스트</b>
							</legend>
						</div>

						<table class="table">
							<thead>
								<tr class="table-secondary">
									<th scope="col" style="width: 10%" class="text-center">번호</th>
									<th scope="col" style="width: 25%" class="text-center">이메일</th>
									<th scope="col" style="width: 15%" class="text-center">닉네임</th>
									<th scope="col" style="width: 15%" class="text-center">이름</th>
									<th scope="col" style="width: 10%" class="text-center">등급</th>
									<th scope="col" style="width: 25%" class="text-center">해지일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="mBList" items="${memBlackList}">
									<tr class="table-light">
										<td style="width: 10%" class="text-center">${mBList.rn }</td>
										<td style="width: 20%" class="text-center">${mBList.mem_email }</td>
										<td style="width: 15%" class="text-center">${mBList.mem_nick }</td>
										<td style="width: 15%" class="text-center">${mBList.mem_name }</td>
										<td style="width: 10%" class="text-center">${mBList.grade_name }</td>
										<td style="width: 30%" class="text-center">${mBList.mem_black_date }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


						<br> <br>
						<div>
							<ul
								class="pagination pagination-lg justify-content-center align-items-center">
								<c:if test="${memBlackPaging.startPage != 1}">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage2=${memBlackPaging.startPage - 1 }&cntPerPage2=${memBlackPaging.cntPerPage}&state=2">&laquo;</a>
									</li>
								</c:if>
								<c:forEach begin="${memBlackPaging.startPage}"
									end="${memBlackPaging.endPage}" var="p2">
									<c:choose>
										<c:when test="${p2 == memBlackPaging.nowPage}">
											<li class="page-item active"><a class="page-link">${p2}</a></li>
										</c:when>
										<c:when test="${p2 != memBlackPaging.nowPage}">
											<li class="page-item"><a class="page-link"
												href="adminMain.ad?nowPage2=${p2}&cntPerPage2=${memBlackPaging.cntPerPage}&state=2">${p2}</a>
											</li>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if
									test="${memBlackPaging.endPage != memBlackPaging.lastPage}">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage2=${memBlackPaging.endPage+1 }&cntPerPage2=${memBlackPaging.cntPerPage}&state=2">&raquo;</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>

					<div class="tab-pane fade ${show3}" id="post_management">
						<div class="text-center">
							<legend>
								<b>신고 10회 이상 받은 게시물</b>
							</legend>
						</div>
						<table class="table">
							<thead>
								<tr class="table-secondary">
									<th scope="col" style="width: 6%" class="text-center">번호</th>
									<th scope="col" style="width: 13%" class="text-center">카테고리</th>
									<th scope="col" style="width: 30.5%" class="text-center">제목</th>
									<th scope="col" style="width: 20%" class="text-center">작성자</th>
									<th scope="col" style="width: 12.5%" class="text-center">글삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="qRList" items="${qRptList}">
									<tr class="table-light">
										<td style="width: 6%" class="text-center">${qRList.rn }</td>
										<td style="width: 13%" class="text-center">${qRList.sub_ca_name }</td>
										<td style="width: 30.5%"><a
											href="qboardContent.bo?qboardNum=${qRList.q_no}&subCa=${qRList.sub_ca_no}">${qRList.q_title }</a></td>
										<td style="width: 20%" class="text-center">${qRList.mem_nick }</td>
										<td style="width: 12.5%" class="text-center">
											<button type="button"
												onclick="location.href='qDeleteAction.ad?qNo=${qRList.q_no}'"
												class="btn btn-danger">삭제</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<br> <br>
						<div>
							<ul
								class="pagination pagination-lg justify-content-center align-items-center">
								<c:if test="${qRptPaging.startPage != 1}">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage3=${qRptPaging.startPage - 1 }&cntPerPage3=${qRptPaging.cntPerPage}&state=3">&laquo;</a>
									</li>
								</c:if>
								<c:forEach begin="${qRptPaging.startPage}"
									end="${qRptPaging.endPage}" var="p3">
									<c:choose>
										<c:when test="${p3 == qRptPaging.nowPage}">
											<li class="page-item active"><a class="page-link">${p3}</a></li>
										</c:when>
										<c:when test="${p3 != qRptPaging.nowPage}">
											<li class="page-item"><a class="page-link"
												href="adminMain.ad?nowPage3=${p3}&cntPerPage3=${qRptPaging.cntPerPage}&state=3">${p3}</a>
											</li>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${qRptPaging.endPage != qRptPaging.lastPage}">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage3=${qRptPaging.endPage+1 }&cntPerPage3=${qRptPaging.cntPerPage}&state=3">&raquo;</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>

					<div class="tab-pane fade ${show4}" id="scrapBook">
						<div class="text-center">
							<legend>
								<b>스크랩북 승인 대기 목록</b>
							</legend>
						</div>
						<table class="table">
							<thead>
								<tr class="table-secondary">
									<th scope="col" style="width: 6%" class="text-center">번호</th>
									<th scope="col" style="width: 8%" class="text-center">대분류</th>
									<th scope="col" style="width: 10%" class="text-center">소분류</th>
									<th scope="col" style="width: 13%" class="text-center">작성자</th>
									<th scope="col" style="width: 25%" class="text-center">제목</th>
									<th scope="col" style="width: 7%" class="text-center">작성일</th>
									<th scope="col" style="width: 8%" class="text-center">추천수</th>
									<th scope="col" style="width: 8%" class="text-center">신청수</th>
									<th scope="col" style="width: 8%" class="text-center">승인상태</th>
									<th scope="col" style="width: 8%" class="text-center">승인</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="bList" items="${bookStandByList}">
									<tr class="table-light">
										<td style="width: 6%" class="text-center">${bList.rn }</td>
										<td style="width: 8%" class="text-center">${bList.sub_ca_name }</td>
										<td style="width: 10%" class="text-center">${bList.book_ca_name }</td>
										<td style="width: 13%" class="text-center">${bList.mem_nick }</td>
										<td style="width: 25%"><a
											href="qboardContent.bo?qboardNum=${bList.q_no}&subCa=${bList.sub_ca_no}">${bList.q_title }</a></td>
										<td style="width: 7%" class="text-center">${bList.q_date }</td>
										<td style="width: 8%" class="text-center">${bList.q_up }</td>
										<td style="width: 8%" class="text-center">${bList.book_scrap_cnt }</td>
										<td style="width: 8%" class="text-center">${bList.q_admin_state }</td>
										<td style="width: 8%" class="text-center">
											<button type="button"
												onclick="location.href='bookAddAction.ad?qNo=${bList.q_no}&caNo=${bList.ca_no}&subCa=${bList.sub_ca_no}&bookCaNo=${bList.book_ca_no}' "
												class="btn btn-danger">승인</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<br> <br>
						<div>
							<ul
								class="pagination pagination-lg justify-content-center align-items-center">
								<c:if test="${bookStandByPaging.startPage != 1}">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage4=${bookStandByPaging.startPage - 1 }&cntPerPage4=${bookStandByPaging.cntPerPage}&state=4">&laquo;</a>
									</li>
								</c:if>
								<c:forEach begin="${bookStandByPaging.startPage}"
									end="${bookStandByPaging.endPage}" var="p4">
									<c:choose>
										<c:when test="${p4 == bookStandByPaging.nowPage}">
											<li class="page-item active"><a class="page-link">${p4}</a></li>
										</c:when>
										<c:when test="${p4 != bookStandByPaging.nowPage}">
											<li class="page-item"><a class="page-link"
												href="adminMain.ad?nowPage4=${p4}&cntPerPage4=${bookStandByPaging.cntPerPage}&state=4">${p4}</a>
											</li>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if
									test="${bookStandByPaging.endPage != bookStandByPaging.lastPage}">
									<li class="page-item"><a class="page-link"
										href="adminMain.ad?nowPage4=${bookStandByPaging.endPage+1 }&cntPerPage4=${bookStandByPaging.cntPerPage}&state=4">&raquo;</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>

					<div class="tab-pane fade ${show5}" id="biz">
						<div class="text-center">
							<legend>
								<b>기업회원 승인 대기 목록</b>
							</legend>
						</div>
						<table class="table">
							<thead>
							<tr class="table-secondary">
								<th scope="col" style="width: 6%" class="text-center">번호</th>
								<th scope="col" style="width: 8%" class="text-center">기업명</th>
								<th scope="col" style="width: 10%" class="text-center">대표자명</th>
								<th scope="col" style="width: 13%" class="text-center">연락처</th>
								<th scope="col" style="width: 25%" class="text-center">신청일</th>
								<th scope="col" style="width: 8%" class="text-center">승인</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="bzList" items="${bizList}">
								<tr class="table-light">
									<td style="width: 6%" class="text-center">${bzList.rn }</td>
									<td style="width: 8%" class="text-center">${bzList.biz_trademark }</td>
									<td style="width: 10%" class="text-center">${bzList.biz_name }</td>
									<td style="width: 13%" class="text-center">${bzList.biz_tel }</td>
									<td style="width: 7%" class="text-center">${bzList.biz_date }</td>
									<td style="width: 8%" class="text-center">
										<button type="button"
												onclick="location.href='bizStateUpdate.ad?biz_no=${bzList.biz_no}'"
												class="btn btn-danger">승인</button>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>

						<br> <br>
						<div>
							<ul
									class="pagination pagination-lg justify-content-center align-items-center">
								<c:if test="${bizPaging.startPage != 1}">
									<li class="page-item"><a class="page-link"
															 href="adminMain.ad?nowPage5=${bizPaging.startPage - 1 }&cntPerPage5=${bizPaging.cntPerPage}&state=5">&laquo;</a>
									</li>
								</c:if>
								<c:forEach begin="${bizPaging.startPage}"
										   end="${bizPaging.endPage}" var="p5">
									<c:choose>
										<c:when test="${p5 == bizPaging.nowPage}">
											<li class="page-item active"><a class="page-link">${p5}</a></li>
										</c:when>
										<c:when test="${p5 != bizPaging.nowPage}">
											<li class="page-item"><a class="page-link"
																	 href="adminMain.ad?nowPage5=${p5}&cntPerPage5=${bizPaging.cntPerPage}&state=5">${p5}</a>
											</li>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if
										test="${bizPaging.endPage != bizPaging.lastPage}">
									<li class="page-item"><a class="page-link"
															 href="adminMain.ad?nowPage5=${bizPaging.endPage+1 }&cntPerPage5=${bizPaging.cntPerPage}&state=5">&raquo;</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>