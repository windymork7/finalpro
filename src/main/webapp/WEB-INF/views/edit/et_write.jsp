<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>et_write</title>
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

#guideline {
   border: 2px solid rgba(0, 0, 0, 0.125);
}
</style>
</head>
<body>

   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
            <form action="/editBoardInsertProcess.ed" method="post" enctype="multipart/form-data">
               <fieldset>
                  <div>
                     <div id="c_left">
                        <legend>에디터's Tip</legend>
                     </div>
                     <div id="c_right">
                        <button type="submit" class="btn btn-primary">등록하기</button>
                     </div>
                  </div>
                  <br>
                  
                  <hr class="my-4">

                  <div class="form-group">
                     <input type="text" class="form-control" placeholder="제목을 입력하세요"
                        id="title" name="edit_title">
                  </div>
                  
                  <div class="form-group">
                     <textarea class="form-control" id="content" name="edit_content" rows="20"></textarea>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputFile" class="text-muted">이미지 Upload</label> 
                     <input type="file" class="form-control-file" id="exampleInputFile" name="edit_img1" EDIT_IMG aria-describedby="fileHelp">
                  </div>
                </fieldset>
                <input type="hidden" id="mem_no" name="mem_no" value="${sessionScope.userNo}">
                <input type="hidden" value="${sessionScope.userNick}">
            </form>
         </div>
         
         <div class="col-sm-3">

            <div class="card" style="max-width: 20rem; border:0">
               <div class="card-header-gd">
                  <b>유의사항</b>
               </div>
               <div class="card-body" style="border: 2px solid #f3969a;  border-radius: 0rem 0rem 0.4rem 0.4rem;">
                  <p>1. EXP500 이상 에디터만 게시할 수 있습니다.</p>
                  <p>2. IT 관련 Tip을 게시해주세요.</p>
                  <p>3. 등록순으로 노출됩니다.</p>
               </div>
            </div>
         
         </div>
      </div>
   </div>
</body>
</html>