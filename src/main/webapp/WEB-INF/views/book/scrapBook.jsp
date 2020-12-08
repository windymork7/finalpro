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
<meta name="viewport" content="width=de0vice-width, initial-scale=1">
<title>sb_J_1</title>
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

                      <c:set var="a" value="0"/>
                      <c:set var="b" value="0"/>
                      <c:set var="c" value="4"/>
                     <c:forEach begin="${b}" var="sList" items="${subCaList}" step="1" end="2">
                         <li class="nav-item active"><a class="nav-link pl-0" href="#">
                             <span class="d-none d-sm-inline"><b>${sList.sub_ca_name}</b></span></a>
                         </li>
                      <%--
                      <li class="nav-item active"><a class="nav-link pl-0" href="#">
                           <span class="d-none d-sm-inline"><b>C</b></span></a>
                     </li>--%>
                         <c:forEach begin="${a}" var="bList" items="${bookCaList}" end="${c}">
                         <li class="nav-item"><a class="nav-link pl-0" href="#">
                             <span class="d-none d-sm-inline"><a href="scrapBookMain.bs?ca_no=${bList.ca_no}&subCa=${bList.sub_ca_no}&bookCa=${bList.book_ca_no}">${bList.book_ca_name}</a> </span></a>
                         </li>
                         <c:set var="a" value="${a+1}"/>
                         </c:forEach>

                         <c:set var="b" value="${b + 1}"/>
                         <c:set var="c" value="${c + 5}"/>
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
                              aria-hidden="true"></span> 100
                           </small>
                        </div>
                        <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
                        <h5 class="card-text text-warning">
                           <i class="fa fa-book text-warning" aria-hidden="true"></i>
                           25(신청수)
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
                        <li class="page-item"><a class="page-link" href="#">&laquo;</a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">&raquo;</a>
                        </li>
                     </ul>
                  </div>
                  
            </div>
            </div>
            
            <div class="col-sm-3">
               <div class="card border-secondary mb-3" style="max-width: 20rem;"
               id="guideline">
               <div class="card-header">
                  <b>스크랩 기준</b>
               </div>
               <div class="card-body">
                  <p>자바 시작하기 : 
                  <i class="fa fa-book" aria-hidden="true"></i>
                  100 이상</p>
                  <p>자료형 : 
                  <i class="fa fa-book" aria-hidden="true"></i>
                  200 이상</p>
                  <p>제어문 : 
                  <i class="fa fa-book" aria-hidden="true"></i>
                  300 이상</p>
                  <p>객체지향 프로그래밍 : 
                  <i class="fa fa-book" aria-hidden="true"></i>
                  400 이상</p>
                  <p>자바 날개 달기 : 
                  <i class="fa fa-book" aria-hidden="true"></i>
                  500 이상</p>
               </div>
            </div>

            </div>
           </div>
         </main>
      </div>
   </div>

</body>
</html>