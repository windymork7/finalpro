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
<title>et_list</title>
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

    .card-header-gd {
        padding: 0.75rem 1.25rem;
        margin-bottom: 0;
        background-color: #f3969a;
        border-bottom: 1px solid rgba(0, 0, 0, 0.125);
        color: #fff;
    }

   .fa-pencil-square-o{
      color:#78c2ad
   }
   
   .fa-eye{
      color:#78c2ad
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

small {
   color: #78c2ad;
}
</style>

</head>
<body>

   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-2">
               <div class="card mb-3">
                  <h3 class="card-header">Card header</h3>
                  <div class="card-body">
                     <h5 class="card-title">Special title treatment</h5>
                     <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                  </div>
                  <svg xmlns="http://www.w3.org/2000/svg"
                     class="d-block user-select-none" width="100%" height="200"
                     aria-label="Placeholder: Image cap" focusable="false" role="img"
                     preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180"
                     style="font-size: 1.125rem; text-anchor: middle">
    <rect width="100%" height="100%" fill="#868e96"></rect>
    <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
  </svg>
                  <div class="card-body">
                     <p class="card-text">Some quick example text to build on the
                        card title and make up the bulk of the card's content.</p>
                  </div>
                  <ul class="list-group list-group-flush">
                     <li class="list-group-item">Cras justo odio</li>
                     <li class="list-group-item">Dapibus ac facilisis in</li>
                     <li class="list-group-item">Vestibulum at eros</li>
                  </ul>
                  <div class="card-body">
                     <a href="#" class="card-link">Card link</a> <a href="#"
                        class="card-link">Another link</a>
                  </div>
                  <div class="card-footer text-muted">2 days ago</div>
            </div>

         </div>
         <div class="col-sm-7">
             <c:forEach var="editBoard" items="${list}">
                  <div class="card bg-light">
                     <div class="card-body">
                        <div class="d-flex w-100 justify-content-between">
                           <h4 class="card-title">
                              <a href="/editBoardContent.ed?editBoardNum=${editBoard.edit_no}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                ${editBoard.edit_title}
                              </a>
                           </h4>
                           <small> <i class="fa fa-eye" aria-hidden="true"></i>&nbsp;${editBoard.edit_view}
                           </small>
                        </div>
                        <h6 class="card-subtitle mb-2 text-muted text-right">${editBoard.edit_date}</h6>
                        <h5 class="card-text">
                           ${editBoard.mem_nick}
                        </h5>
                     </div>
                  </div>
                 <br>
             </c:forEach>
                  <div>
                     <br>
                     <br>
<%--                     <ul--%>
<%--                        class="pagination pagination-lg justify-content-center align-items-center">--%>
<%--                        <li class="page-item"><a class="page-link" href="#">&laquo;</a>--%>
<%--                        </li>--%>
<%--                        <li class="page-item active"><a class="page-link" href="#">1</a>--%>
<%--                        </li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#">2</a></li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#">4</a></li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#">5</a></li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#">&raquo;</a>--%>
<%--                        </li>--%>
<%--                     </ul>--%>
                      <ul
                              class="pagination pagination-lg justify-content-center align-items-center">
                          <c:if test="${paging.startPage != 1 }">
                              <li class="page-item"><a class="page-link" href="editBoardList.ed?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&laquo;</a></li>
                          </c:if>
                          <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
                              <c:choose>
                                  <c:when test="${p == paging.nowPage}">
                                      <li class="page-item active"><a class="page-link">${p}</a></li>
                                  </c:when>
                                  <c:when test="${p != paging.nowPage}">
                                      <li class="page-item"><a class="page-link" href="editBoardList.ed?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a></li>
                                  </c:when>
                              </c:choose>
                          </c:forEach>
                          <c:if test="${paging.endPage != paging.lastPage}">
                              <li class="page-item"><a class="page-link" href="editBoardList.ed?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&raquo;</a></li>
                          </c:if>
                      </ul>
                  </div>
         </div>


         
         

         <div class="col-sm-3">
            
            <div class="card border-secondary mb-3"
               id="guideline">
               <div class="card-header-gd">
                  <b>유의사항</b>
               </div>
               <div class="card-body">
                  <p>1. EXP500 이상 에디터만 게시할 수 있습니다.</p>
                  <p>2. IT 관련 Tip을 게시해주세요.</p>
                  <p>3. 등록순으로 노출됩니다.</p>
               </div>
            </div>
            <div>
            <c:if test="${sessionScope.userGrade >= 3}">
               <button type="button" onclick="location.href='/editBoardInsert.ed'"
                     class="btn btn-secondary btn-block">등록하기</button>
            </c:if>
            </div>
         </div>
      </div>
   </div>
</body>
</html>