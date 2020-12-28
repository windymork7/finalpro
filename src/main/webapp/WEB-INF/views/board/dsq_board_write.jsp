<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>dsq_board_write</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 css 추가 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>

<%--<!-- 해외 부트스트랩 js -->--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"--%>
<%--   integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"--%>
<%--   integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"--%>
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

#c_left {
   float: left;
}

#c_right {
   float: right;
}

#guideline{
   border: 2px solid rgba(0, 0, 0, 0.125);
}
</style>
</head>
<body>

   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
            <form action="/qboardInsertProcess.bo" method="post" enctype="multipart/form-data">
               <fieldset>
                  <div>
                  <br>
                  <br>
                  <br>
                     <div id="c_left">
                        <legend>${subCategory}</legend>
                     </div>

                     <c:choose>
                        <c:when test="${subCategory eq 'JAVA'}">
                           <c:set var="sub" value="1"/>
                        </c:when>
                        <c:when test="${subCategory eq 'PYTHON'}">
                           <c:set var="sub" value="2"/>
                        </c:when>
                        <c:when test="${subCategory eq 'C#'}">
                           <c:set var="sub" value="3"/>
                        </c:when>
                        <c:when test="${subCategory eq 'SPRING'}">
                           <c:set var="sub" value="4"/>
                        </c:when>
                        <c:when test="${subCategory eq 'REACT'}">
                           <c:set var="sub" value="4"/>
                        </c:when>
                        <c:when test="${subCategory eq 'VUE'}">
                           <c:set var="sub" value="5"/>
                        </c:when>
<%--                        <c:when test="${subCategory eq 'ORACLE'}">--%>
<%--                           <c:set var="sub" value="7"/>--%>
<%--                        </c:when>--%>
                        <c:when test="${subCategory eq 'MYSQL'}">
                           <c:set var="sub" value="8"/>
                        </c:when>
                        <c:when test="${subCategory eq 'NOSQL'}">
                           <c:set var="sub" value="9"/>
                        </c:when>
                     </c:choose>
                     <div id="c_right">
                        <button type="submit" class="btn btn-secondary">등록하기</button>
                     </div>
                  </div>
                  <br>
                  
                  <hr class="my-4">
                  <div class="form-group">
                     <select class="custom-select" name="book_ca_no">
                        <option value="${setBookNo}">${setBook}</option>
                        <c:forEach var="BookCa" items="${Book}">
                           <option value="${BookCa.book_ca_no}">${BookCa.book_ca_name}</option>
                        </c:forEach>
                     </select>
                  </div>

                  <div class="form-group">
                     <input type="text" class="form-control" placeholder="제목을 입력하세요"
                        id="title" name="q_title">
                  </div>

                  <input type="hidden" name="sub_ca_no" value="${sub}">
                  <input type="hidden" name="mem_no" value=${sessionScope.userNo}>

                  
                  <div class="form-group">
                     <textarea class="form-control" id="content" name="q_content" rows="20">질문글을 작성할 때  가이드라인을 지켜주세요.
                        *필수 작성
                        1. 사용하는 언어 버전 :
                        2. 사용하는 IDE :
                     </textarea>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputFile" class="text-muted">파일 Upload</label> 
                     <input type="file" class="form-control-file" id="exampleInputFile" name="q_file1" aria-describedby="fileHelp">
                  </div>
               </fieldset>
            </form>
         </div>
         
         <div class="col-sm-3">
            <br><br><br>
            <div class="card" style="max-width: 20rem; border:0">

               <div class="card-header-gd"><b>필독사항</b></div>
            <div class="card-body" style="border: 2px solid #f3969a;  border-radius: 0rem 0rem 0.4rem 0.4rem;">
            <p>1. 질문은 <b>구체</b>적으로 해주세요!</p>
            <p>2. 토론을 유발할 가능성이 높은 질문은 피하세요!</p>
            <p>3. 질문 내용에 개인정보(실명, 주민번호, 연락처)가 포함되지 않게 작성해주세요!</p>
            4. 추측성 답변은 삼가 주세요!</div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>