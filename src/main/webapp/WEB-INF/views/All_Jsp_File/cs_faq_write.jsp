<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>cs_faq_write</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 css 추가 -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- 해외 부트스트랩 js -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
   integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
   integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
   crossorigin="anonymous"></script>

<style>
#c_left {
   float: left;
}

#c_right {
   float: right;
}
</style>
</head>
<body>
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
            <form>
               <fieldset>
                  <div>
                     <div id="c_left">
                        <legend>FAQ</legend>
                     </div>
                     <div id="c_right">
                        <button type="submit" class="btn btn-primary">등록하기</button>
                     </div>
                  </div>
                  <br>
                  
                  <hr class="my-4">
                  
                  <div class="form-group">
                     <input type="text" class="form-control" placeholder="제목을 입력하세요"
                        id="title">
                  </div>
                  
                  <div class="form-group">
                     <textarea class="form-control" id="content" rows="20"></textarea>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputFile" class="text-muted">파일 Upload</label> 
                     <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                  </div>
               </fieldset>
            </form>
         </div>
      </div>
   </div>
</body>
</html>