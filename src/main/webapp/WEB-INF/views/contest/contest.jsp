<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>contest</title>
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
#card {
   border: 2px solid rgba(0, 0, 0, 0.125);
   border-color: #f3969a;
}

</style>

</head>
<body>

<c:set var="length" value="${fn:length(contestVO.contest_img)}"/>
<c:set var="contest_img3" value="${fn:substring(contestVO.contest_img, length-3, length)}"/>
<c:set var="contest_img4" value="${fn:substring(contestVO.contest_img, length-4, length)}"/>

   <div class="container-fluid">
      <div class="row">
         <form class="col-sm-8 offset-sm-2">
            <fieldset>
               <div>
                  <div class="row">
                     <div class="col-sm-4">
                        <c:if test="${not empty contestVO.contest_img}">
                           <c:if test="${contest_img3 == 'jpg' || contest_img3 == 'gif' || contest_img3 == 'png' || contest_img4 == 'jpeg'}">
                              <img src="upload/${contestVO.contest_img}" width="100%" height="350"><br><br>
                           </c:if>
                        </c:if>
                     </div>
                     <div class="col-sm-8">
                        <div class="card" id="card">
                           <div class="card-body">
                              <!-- 공모전 제목 -->
                              <h4 class="card-title">
                                 <b>${contestVO.contest_title}</b>
                              </h4>

                              <hr class="my-4">
                              <p class="card-text">
                              <table>
                                 <tr>
                                    <th>주최</th>
                                    <td>${contestVO.contest_hosting}</td>
                                 </tr>

                                 <tr>
                                    <th>접수기간</th>
                                    <td>${contestVO.contest_period}</td>
                                 </tr>
                                 <tr>
                                    <th>참가대상</th>
                                    <td>${contestVO.contest_target}</td>
                                 </tr>
                                 <tr>
                                    <th>응모분야</th>
                                    <td>${contestVO.contest_application}</td>
                                 </tr>
                                 <tr>
                                    <th>시상규모</th>
                                    <td>${contestVO.contest_scale}</td>
                                 </tr>
                                 <tr>
                                    <th>1등시상금</th>
                                    <td>${contestVO.contest_firstMoney}</td>
                                 </tr>

                                 <tr>
                                    <th>문의(전화)</th>
                                    <td>${contestVO.contest_tel}</td>
                                 </tr>

                                 <tr>
                                    <th>이메일</th>
                                    <td>${contestVO.contest_email}</td>
                                 </tr>
                                 <tr>
                                    <th>홈페이지</th>
                                    <td><a
                                       href="${contestVO.contest_homepage}">${contestVO.contest_homepage}</a></td>
                                 </tr>
                              </table>

                           </div>
                        </div>
                     </div>

                  </div>
                  <br> <br>
                  <div class="row">
                     <div class="col-sm-12">


                        <b>공모요강</b>
                        <hr class="my-4">
                        <br>

                        <textarea class="form-control" rows="45" id="reply_text" readonly>${contestVO.contest_content}</textarea>

                        <br>

                        <div class="text-center">
                           <button type="button" class="btn btn-primary btn-lg" onclick="location.href='${contestVO.contest_homepage}'">신청</button>
                        <!--  등록한 사업자는 신청말고 삭제 보이게
                           <button type="button" class="btn btn-warning btn-lg">삭제</button>
                        -->
                           <button type="button" class="btn btn-secondary btn-lg" onclick="history.back()">뒤로</button>
                        </div>

                     </div>
                  </div>
               </div>

            </fieldset>
         </form>
      </div>
   </div>

</body>
</html>