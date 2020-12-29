<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">

   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=de0vice-width, initial-scale=1">
   <title>sb_J_1</title>
   <!-- 부트스트랩 -->
<%--   <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--   <script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--   <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--   <script--%>
<%--           src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--           integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--           crossorigin="anonymous"></script>--%>
<%--   <script--%>
<%--           src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--           integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--           crossorigin="anonymous"></script>--%>

   <style>
      .card-header-gd {
         padding: 0.75rem 1.25rem;
         margin-top:0;
         margin-bottom: 0;
         background-color: #f3969a;
         color: #fff;
         border-radius: 0.4rem 0.4rem 0 0;
         border-top: 2px solid #f3969a;
         border-left: 2px solid #f3969a;
         border-bottom:0px;
         border-right: 2px solid #f3969a;
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
      #guideline {
         border: 2px solid rgba(0, 0, 0, 0.125);
      }
      .fa-quora {
         color: #78c2ad
      }
      small {
         color: #78c2ad;
      }
   </style>

</head>
<body>

<div class="container-fluid">
   <div class="row min-vh-100 flex-column flex-sm-row">
      <aside class="col-sm-2 p-0 flex-shrink-1">
         <nav class="navbar navbar-expand-lg navbar-light border-right flex-sm-column flex-row align-items-start py-2">
            <div class="collapse navbar-collapse ">
               <ul class="flex-sm-column flex-row navbar-nav w-100 justify-content-between">

                  <c:set var="b" value="0"/>

                  <c:forEach begin="${b}" var="sList" items="${subCaList}">
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                        <span class="d-none d-sm-inline"><b>${sList.sub_ca_name}</b></span></a>
                     </li>

                     <c:forEach var="bList" items="${bookCaList}">
                        <c:if test="${bList.sub_ca_no==b+1 || bList.sub_ca_no==b+4 || bList.sub_ca_no==b+7}">
                        <li class="nav-item"><a class="nav-link pl-0" href="#">
                           <span class="d-none d-sm-inline"><a href="scrapBookMain.bs?ca_no=${bList.ca_no}&subCa=${bList.sub_ca_no}&bookCa=${bList.book_ca_no}">${bList.book_ca_name}</a></span></a>
                        </li>
                        </c:if>
                     </c:forEach>

                     <c:set var="b" value="${b + 1}"/>
                  </c:forEach>
               </ul>
            </div>
         </nav>
      </aside>
      <main class="flex-grow-1 col-sm-10">
         <div class="row">
            <div class="col-sm-9">
               <div class="container">
                  <c:forEach var="cList" items="${contentList}">
                     <div class="card bg-light">
                        <div class="card-body">
                           <div class="d-flex w-100 justify-content-between">
                              <h4 class="card-title">
                                 <a href="qboardContent.bo?qboardNum=${cList.q_no}&subCa=${cList.sub_ca_no}"> <i class="fa fa-quora" aria-hidden="true"></i>
                                       ${cList.q_title}
                                 </a>
                              </h4>
                              <small> <span class="glyphicon glyphicon-thumbs-up"
                                            aria-hidden="true"></span> ${cList.q_up}
                              </small>
                           </div>
                           <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
                           <h5 class="card-text text-warning">
                              <i class="fa fa-book text-warning" aria-hidden="true"></i>
                                 ${cList.book_scrap_cnt }
                           </h5>
                        </div>
                     </div>
                     <br>
                  </c:forEach>
                  <div>
                     <br>
                     <br>
                     <ul
                             class="pagination pagination-lg justify-content-center align-items-center">
                        <c:if test="${contentPaging.startPage != 1 }">
                           <li class="page-item"><a class="page-link" href="scrapBookMain.bs?nowPage=${contentPaging.startPage - 1 }&cntPerPage=${contentPaging.cntPerPage}">&laquo;</a></li>
                        </c:if>
                        <c:forEach begin="${contentPaging.startPage }" end="${contentPaging.endPage }" var="p">
                           <c:choose>
                              <c:when test="${p == contentPaging.nowPage}">
                                 <li class="page-item active"><a class="page-link">${p}</a></li>
                              </c:when>
                              <c:when test="${p != contentPaging.nowPage}">
                                 <li class="page-item"><a class="page-link" href="scrapBookMain.bs?nowPage=${p}&cntPerPage=${contentPaging.cntPerPage}">${p}</a></li>
                              </c:when>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${contentPaging.endPage != contentPaging.lastPage}">
                           <li class="page-item"><a class="page-link" href="scrapBookMain.bs?nowPage=${contentPaging.endPage+1 }&cntPerPage=${contentPaging.cntPerPage}">&raquo;</a></li>
                        </c:if>
                     </ul>
                  </div>

               </div>
            </div>

            <div class="col-sm-3">
               <div class="card" style="border:0">
                  <div class="card-header-gd">
                     <b>스크랩북 공지사항</b>
                  </div>
                  <div class="card-body" style="border: 2px solid #f3969a;  border-radius: 0rem 0rem 0.4rem 0.4rem;">
                     <p>1. 유저가 만들어 가는 D'sQ 만의 스크랩북 입니다. </p>
                     <p>2. 사용자들의 <b>추천</b>과 <b>신청</b>을 받은 게시글들이 등록 됩니다.</p>
                     <p>3. 일정 추천 수 이상 받은 게시글들에 한해서 신청 버튼이 보입니다. </p>
                  </div>

<%--                  <div class="card-header-gd">--%>
<%--                     <b>스크랩 기준</b>--%>
<%--                  </div>--%>
<%--                  <div class="card-body" style="border: 2px solid #f3969a;  border-radius: 0rem 0rem 0.4rem 0.4rem;">--%>
<%--                     <p>자바 시작하기 :--%>
<%--                        <i class="fa fa-book" aria-hidden="true"></i>--%>
<%--                        100 이상</p>--%>
<%--                     <p>자료형 :--%>
<%--                        <i class="fa fa-book" aria-hidden="true"></i>--%>
<%--                        200 이상</p>--%>
<%--                     <p>제어문 :--%>
<%--                        <i class="fa fa-book" aria-hidden="true"></i>--%>
<%--                        300 이상</p>--%>
<%--                     <p>객체지향 프로그래밍 :--%>
<%--                        <i class="fa fa-book" aria-hidden="true"></i>--%>
<%--                        400 이상</p>--%>
<%--                     <p>자바 날개 달기 :--%>
<%--                        <i class="fa fa-book" aria-hidden="true"></i>--%>
<%--                        500 이상</p>--%>
<%--                  </div>--%>
               </div>
            </div>
         </div>
      </main>
   </div>
</div>

</body>
</html>