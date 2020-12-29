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

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=de0vice-width, initial-scale=1">
<title>contest_list</title>
<!-- 부트스트랩 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--   crossorigin="anonymous"></script>--%>

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

#emergency2 {
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

#guideline {
   border: 2px solid rgba(0, 0, 0, 0.125);
}

.badge {
   display: inline-block;
   padding: 0.25em 0.8em;
   font-size: 100%;
   font-weight: 700;
   line-height: 1;
   text-align: center;
   white-space: nowrap;
   vertical-align: baseline;
   border-radius: 0.4rem;
   transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
      border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
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
      <div class="row">
         <div class="col-sm-2">
             <img src="img/Banner3.png" width="100%">

         </div>
         <div class="col-sm-7">
            <c:forEach var="list" items="${contestList}">

                <c:set var="length" value="${fn:length(list.contest_img)}"/>
                <c:set var="contest_img3" value="${fn:substring(list.contest_img, length-3, length)}"/>
                <c:set var="contest_img4" value="${fn:substring(list.contest_img, length-4, length)}"/>

            <div class="card bg-light">
               <div class="row">
                  <div class="card-body col-sm-3">
                   <c:if test="${not empty list.contest_img}">
                       <c:if test="${contest_img3 == 'jpg' || contest_img3 == 'gif' || contest_img3 == 'png' || contest_img4 == 'jpeg'}">
                           <pre>      <img src="upload/${list.contest_img}" width="55%" ></pre>
                       </c:if>
                   </c:if>
                  </div>
                  <div class="card-body col-sm-9">
                              <h4 class="card-title">
                              <a href="/contestContent.co?contest_no=${list.contest_no}">
                                 <b>${list.contest_title}</b>
                              </a>
                              </h4>
                              <br>
                        <div class="card-text">
                        <table>
                                 <tr>
                                    <th>주최</th>
                                    <td> ${list.contest_hosting}</td>
                                 </tr>

                                 <tr>
                                    <th>접수기간</th>
                                    <td>&nbsp;${list.contest_period}</td>
                                 </tr>
                                 <tr>
                                    <th>참가대상</th>
                                    <td>&nbsp;${list.contest_target}</td>
                                 </tr>
                                 <tr>
                                    <th>응모분야</th>
                                    <td> ${list.contest_application}</td>
                                 </tr>
                                 </table>
                                 </div>
                  </div>
               </div>
            </div>
            <br>
            </c:forEach>
                  <div>
                     <br>
                     <br>
                     <ul
                        class="pagination pagination-lg justify-content-center align-items-center">
                        <c:if test="${paging.startPage != 1 }">
                            <li class="page-item"><a class="page-link" href="contestList.co?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&laquo;</a></li>
                        </c:if>
                        <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
                            <c:choose>
                                <c:when test="${p == paging.nowPage}">
                                    <li class="page-item active"><a class="page-link">${p}</a></li>
                                </c:when>
                                <c:when test="${p != paging.nowPage}">
                                    <li class="page-item"><a class="page-link" href="contestList.co?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a></li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <c:if test="${paging.endPage != paging.lastPage}">
                            <li class="page-item"><a class="page-link" href="contestList.co?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&raquo;</a></li>
                        </c:if>
                     </ul>
                  </div>


         </div>
         
         

         <div class="col-sm-3">

             <div class="card" style="border:0">
               <div class="card-header-gd">
                  <b>유의사항</b>
               </div>
               <div class="card-body" style="border: 2px solid #f3969a;  border-radius: 0rem 0rem 0.4rem 0.4rem;">
                  <p>1. 사업자 등록 후 게시할 수 있습니다!</p>
                  <p>2. IT관련 공모전만 게시 가능합니다!</p>
                  <p>3. 등록순으로 노출됩니다!</p>
               </div>
            </div>
             <br>
            <div>
                <c:if test="${not empty sessionScope.businessNo}">
                   <button type="button" class="btn btn-secondary btn-block" onclick="location.href='/contestInsert.co'">등록하기</button>
                </c:if>
            </div>
         </div>
      </div>
   </div>
</body>
</html>