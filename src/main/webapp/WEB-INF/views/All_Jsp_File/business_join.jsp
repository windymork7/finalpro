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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>business_join</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
   integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>
</head>
<body>
   <div class="text-center">
      <a href="#"> <img src="img/D'sQ.png" alt="D's Q"></a>
   </div>
   <div class="row">
      <form class="col-sm-6 offset-sm-3">
         <fieldset>
            <div class="form-group">
               <label for="biz_email"><b>이메일</b></label> 
                  <div class="form-group">
                     <div class="input-group mb-3">
                     <input type="email" class="form-control" id="biz_email" aria-describedby="emailHelp">
                        <div class="input-group-append">
                           <button type="button" class="btn btn-outline-secondary"
                              data-toggle="modal" data-target="#exampleModal1">중복
                              <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                              </button>
                        </div>
                     </div>
                  </div>
               </div>

               <!-- Modal -->
               <div class="modal fade" id="exampleModal1" tabindex="-1"
                  aria-labelledby="exampleModalLabel1" aria-hidden="true">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="exampleModalLabel1">이메일 중복검사</h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">중복 여부~~</div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        </div>
                     </div>
                  </div>
               </div>
            
            <div class="form-group">
               <label for="biz_pw1"><b>비밀번호</b></label> <input
                  type="password" class="form-control" id="biz_pw1">
            </div>
            <div class="form-group">
               <label for="biz_pw2"><b>비밀번호 확인</b></label> <input
                  type="password" class="form-control" id="biz_pw2">
            </div>
            <div class="form-group">
               <label for="biz_number"><b>사업자 등록번호</b></label> <input
                  type="text" class="form-control" id="biz_number">
            </div>
            <div class="form-group">
               <label for="biz_company_name"><b>회사명</b></label> <input
                  type="text" class="form-control" id="biz_company_name">
            </div>

            <!-- 주소 api사용해야함! -->
            <div class="form-group">
               <label for="biz_address"><b>회사 주소</b></label>
               <div class="form-group">
                  <div class="input-group mb-3">
                     <input type="text" class="form-control" id="biz_address">
                     <div class="input-group-append">
                        <button type="button" class="btn btn-secondary"
                           data-toggle="modal" data-target="#exampleModal2">
                           <span class="glyphicon glyphicon-search" aria-hidden="true">
                           </button>
                     </div>
                  </div>
               </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal2" tabindex="-1"
               aria-labelledby="exampleModalLabel2" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel2">주소찾기</h5>
                        <button type="button" class="close" data-dismiss="modal"
                           aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">주소 api사용해야함!</div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-secondary"
                           data-dismiss="modal">닫기</button>
                     </div>
                  </div>
               </div>
            </div>

            <div class="form-group">
               <input type="text" class="form-control" id="biz_detail_address"
                  placeholder="회사 상세주소">
            </div>
            <div class="form-group">
               <label for="biz_name"><b>대표자명</b></label> <input type="text"
                  class="form-control" id="biz_name">
            </div>
            <div class="form-group">
               <label for="biz_tel"><b>대표자 전화번호</b></label>
               <div class="form-group">
                  <div class="input-group mb-3">
                     <input type="text" class="form-control" id="biz_tel">
                     <div class="input-group-append">
                        <button type="button" class="btn btn-secondary"
                           data-toggle="modal" data-target="#exampleModal3">인증</button>
                     </div>
                  </div>
               </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal3" tabindex="-1"
               aria-labelledby="exampleModalLabel3" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel3">인증번호</h5>
                        <button type="button" class="close" data-dismiss="modal"
                           aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">여기에 랜덤값 넣으면 됩니당.</div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-secondary"
                           data-dismiss="modal">닫기</button>
                     </div>
                  </div>
               </div>
            </div>

            <div class="form-group">
               <label for="biz_tel_check"><b>인증번호</b></label> <input
                  type="text" class="form-control" id="biz_tel_check">
            </div>
            <br>
            <div class="text-center">
               <button type="submit" class="btn btn-primary btn-lg">회원가입</button>
            </div>
         </fieldset>
      </form>
   </div>
</body>
</html>