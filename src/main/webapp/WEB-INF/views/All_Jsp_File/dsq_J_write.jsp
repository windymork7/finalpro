<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>dsq_J_write</title>
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
                  <br>
                  <br>
                  <br>
                     <div id="c_left">
                        <legend>JAVA</legend>
                     </div>
                     <div id="c_right">
                        <button type="submit" class="btn btn-primary">등록하기</button>
                     </div>
                  </div>
                  <br>
                  
                  <hr class="my-4">
                  <div class="form-group">
                     <select class="custom-select">
                        <option selected="">책 분류를 선택하세요</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                     </select>
                  </div>

                  <div class="form-group">
                     <input type="text" class="form-control" placeholder="제목을 입력하세요"
                        id="title">
                  </div>
                  
                  <div class="form-group">
                     <textarea class="form-control" id="content" rows="20">
질문글을 작성할 때  가이드라인을 지켜주세요.

*필수 작성
1. 사용하는 언어 버전 : 
2. 사용하는 IDE : 
                     </textarea>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputFile" class="text-muted">파일 Upload</label> 
                     <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                  </div>
               </fieldset>
            </form>
         </div>
         
         <div class="col-sm-3">
            <br><br><br>
            <div class="card border-danger mb-3" style="max-width: 20rem;">

               <div class="card-header"><b>필독사항</b></div>
               <div class="card-body">
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