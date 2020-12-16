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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=de0vice-width, initial-scale=1">
<title>cs_faq_list</title>
<!-- 부트스트랩 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
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
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-8 offset-sm-2">
            <div class="text-center">
               <legend>
                  <b>FAQ</b>
               </legend>
            </div>
         <!-- 관리자만 등록할 수 있습니다.
            <div class="text-right">
               <button type="button" class="btn btn-primary">글 등록하기</button>
            </div>
            -->
            
         <hr class="my-4">
         <div class="text-right">
            <c:if test="${sessionScope.userNick eq 'admin'}">
               <button type="button" class="btn btn-primary" onclick="location.href='noticeWriteForm.no'">글쓰기</button>
               <br><br>
            </c:if>
         </div>

         <table class="table">
            <thead>
               <tr class="table-secondary">
                  <th scope="col">번호</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성자</th>
                  <th scope="col">작성일</th>
               </tr>
            </thead>
            <tbody>
            <c:forEach var="faq" items="${list}">
               <tr class="table-light">
                  <td>${faq.faq_no}</td>
                  <td><a href="faqContent.cu?faq_no=${faq.faq_no }">${faq.faq_title }</a></td>
                  <td>관리자</td>
                  <td>${faq.faq_date }</td>
               </tr>
            </c:forEach>
            <!--
               <tr class="table-light">
                  <td>1</td>
                  <td><a href="#">답변은 아무나 할 수 있나요?</a></td>
                  <td>관리자</td>
                  <td>2020.12.05</td>
               </tr>
             -->
            </tbody>
         </table>

         <div>
            <br> <br>
            <ul
               class="pagination pagination-lg justify-content-center align-items-center">
               <c:if test="${paging.startPage != 1 }">
               <li class="page-item"><a class="page-link" href="faqList.cu?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&laquo;</a>
               </c:if>
               </li>
                <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
                <c:choose>
                 <c:when test="${p == paging.nowPage}">
               <li class="page-item active"><a class="page-link">${p}</a></li>
               </c:when>
               <c:when test="${p != paging.nowPage}">
               <li class="page-item"><a class="page-link" href="faqList.cu?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a></li>
               </c:when>
               </c:choose>
               </c:forEach>
                <c:if test="${paging.endPage != paging.lastPage}">
               <li class="page-item"><a class="page-link" href="faqList.cu?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&raquo;</a></li>
               </c:if>
               <%--  
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
               --%>
            </ul>
         </div>
      </div>
   </div>
   </div>
</body>
</html>