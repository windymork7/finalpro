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

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>et</title>
    <!-- 부트스트랩 -->
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--    <script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>


   <style>
   
   .fa-pencil-square-o{
      color:#78c2ad
   }
   
   .fa-eye{
      color:#78c2ad
   }
   
   .card-title{
      margin-bottom: 0rem;
   }
   
   #question-text{
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
   
   #sidebox { position:absolute; }
   
   </style>
</head>
<body>

    <c:set var="length" value="${fn:length(editMemberVO.edit_img)}"/>
    <c:set var="edit_img3" value="${fn:substring(editMemberVO.edit_img, length-3, length)}"/>
    <c:set var="edit_img4" value="${fn:substring(editMemberVO.edit_img, length-4, length)}"/>


   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
         <form action="/editBoardUpdateProcess.ed">
           <fieldset>
                  <div>

                     <div>
                        <a href="#" onclick="location.href='/editBoardList.ed'"><legend>에디터's Tip</legend></a>
                     </div>
                  </div>
                  <hr class="my-4">
               <div class="card bg-light mb-3">
                 <div class="card-header">
                 
                          <div class="d-flex w-100 justify-content-between">
                           <h4 class="card-title">
                              <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                               <c:choose>
                                   <c:when test="${upda == 1}">
                                       <input type="text" class="form-control" name="edit_title" value="${editMemberVO.edit_title}">
                                   </c:when>
                                   <c:otherwise>
                                       ${editMemberVO.edit_title}
                                   </c:otherwise>
                               </c:choose>
                           </h4>
                           <small> <i class="fa fa-eye" aria-hidden="true"></i> ${editMemberVO.edit_view}
                           </small>
                        </div>

                   <p class="card-text">
                   <h6>${editMemberVO.mem_nick}</h6>
                   ${editMemberVO.edit_date}</p>
                 </div>
                 <div class="card-body">
                   <div class="card-text" id="question-text">
                   <c:if test="${not empty editMemberVO.edit_img}">
                       <a href="${pageContext.request.contextPath}/upload/${editMemberVO.edit_img}">${editMemberVO.edit_img}</a>
                       <c:if test="${edit_img3 == 'jpg' || edit_img3 == 'gif' || edit_img3 == 'png' || edit_img4 == 'jpeg'}">
                           <img src="upload/${editMemberVO.edit_img}" width="100%"><br><br>
                       </c:if>
                   </c:if>
                   <br>
                   <br>
                   <c:choose>
                       <c:when test="${upda == 1}">
                           <textarea class="form-control" name="edit_content" rows="20">${editMemberVO.edit_content}</textarea>
                       </c:when>
                       <c:otherwise>
                           <textarea class="form-control" name="edit_content" rows="20" readonly>${editMemberVO.edit_content}</textarea>
                       </c:otherwise>
                   </c:choose>
                  <br>
                  <div class="text-right">
                  <!-- 이 부분 D'sQ 페이지에서 댓글기능 구현하는 것처럼 버튼 누르면 밑에 댓글 쓸수있게 나오고 쓰면 아래 리스트에 들어가게 하고 싶어요 흙흙흙 -->
                        <button type="button" class="btn btn-primary" onclick="editReplyForm()">댓글 쓰기</button>
                  <!-- 글쓴이만 보이게 -->
                        <input type="hidden" name="edit_no" value="${editMemberVO.edit_no}">
                  <c:if test="${sessionScope.userNick == editMemberVO.mem_nick}">
                      <c:choose>
                          <c:when test="${upda == 0}">
                              <button type="button" class="btn btn-primary" onclick="location.href='/editBoardContent.ed?upda=1&editBoardNum=${editMemberVO.edit_no}'">수정</button>
                          </c:when>
                          <c:when test="${upda == 1}">
                              <button type="submit" class="btn btn-primary">수정하기</button>
                          </c:when>
                      </c:choose>
                        <button type="button" class="btn btn-secondary" onclick="editDelete()">삭제</button>
                  </c:if>
                  </div>
                  
                   </div>
                 </div>
               </div>

               <div id="editReplyForm"></div>
               
            <hr class="my-4">
            <br>
                     <div>
                        <legend>Comments</legend>
                         <div id="Comment"></div>
                     </div>
            


            
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            
               </fieldset>
         </form>
         </div>
         
                  <div class="col-sm-1 offset-sm-2">
            <div id="sidebox">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
               <p><i class="fa fa-chevron-up fa-2x text-primary" aria-hidden="true" id="topBtn"></i></p>
               <p><i class="fa fa-chevron-down fa-2x text-primary" aria-hidden="true" id="bottomBtn"></i></p>
            </div>
         </div>
         
      </div>
   </div>

<script>

   $(window).scroll(function(){
   var scrollTop = $(document).scrollTop();
   if (scrollTop < 230) {
    scrollTop = 230;
   }
   $("#sidebox").stop();
   $("#sidebox").animate( { "top" : scrollTop });
   });
   
   var topEle = $('#topBtn');
   var delay = 1000;
   topEle.on('click', function() {
     $('html, body').stop().animate({scrollTop: 0}, delay);
   });
   
   var topEle = $('#bottomBtn');
   var delay = 1000;
   topEle.on('click', function() {
      $("html, body").animate({ scrollTop: $(document).height() }, delay);
   });

   $(document).ready(function(){
       editReplyList();
   });

   function editDelete(){

       var result = confirm("정말로 삭제하시겠습니까?");
       if (result == true){
           location.href="/editBoardDelete.ed?editBoardNum=${editMemberVO.edit_no}";
       }
   }

   function editReplyForm(){

       var html = "";

       html += "<div class=\"card\">\n" +
           "\t  <div class=\"card-header\">\n" +
           "\t  ${sessionScope.userNick}\n" +
           "\t  </div>\n" +
           "\t  <div class=\"card-body\">\n" +
           "\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
           "\t   <textarea id='editText' name='edit_reply_content' class=\"form-control\" rows=\"8\" id=\"reply_text\">\n" +
           "</textarea>\n" +
           "\t   </div><br>\n" +
           "<button type='button' class='btn btn-primary' onclick='editAddReplyInsert()'>전송</button>\n"+
           "<button type='reset' class='btn btn-secondary'>취소</button>\n"+
           "\t  </div>\n" +
           "\t</div>" +
           "<br>";

       $("#editReplyForm").html(html);
   }

   function editAddReplyInsert(){

       var editText = $("#editText").val();
       var html = "";

       $.ajax(
           {
               type : 'GET',
               url : "/editReplyInsert.ed",
               data : {
                   "edit_no" : ${editMemberVO.edit_no},
                   "mem_no" : ${sessionScope.userNo},
                   "edit_reply_content" : editText
               },
               contentType : "application/x-www-form-urlencoded; charset=UTF-8",
               success : function()
               {
                   alert("댓글이 등록되었습니다.");
                   $("#editReplyForm").html(html);
                   editReplyList();

               },
               error : function(request, status, error)
               {
                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
               }

           });
   }

   function editReplyList(){

       var html = "";

       $.ajax(
           {
               type : 'GET',
               url : "/editReplyList.ed",
               dataType : "json",
               data : {
                   "edit_no" : ${editMemberVO.edit_no},
               },
               contentType : "application/x-www-form-urlencoded; charset=UTF-8",
               success : function(data)
               {
                   for (var i = 0; i < data.length; i++) {
                       html += "<ul class=\"list-group\">\n" +
                           "  <li class=\"list-group-item d-flex justify-content-between align-items-center\">\n" +
                           "    "+data[i].edit_reply_content+"\n" +
                           "    <span class=\"badge badge-primary badge-pill\">"+ data[i].mem_nick+"</span>\n" +
                           "  </li>\n" +
                           "</ul>";

                       $("#Comment").html(html);

                   }


               },
               error : function(request, status, error)
               {
                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
               }

           });
   }




</script>

</body>
</html>