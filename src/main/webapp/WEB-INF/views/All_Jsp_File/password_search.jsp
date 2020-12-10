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
<title>email_search_next</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="css/bootstrap.css">
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
#c_left {
   float: left;
}

#c_right {
   float: right;
}
</style>
</head>
<body>
   <div class="text-center">
      <a href="#"> <img src="img/D'sQ.png" alt="D'sQ"></a>
      <legend>
			<b>비밀번호 찾기</b>
		</legend>
   </div><br>
   
   <div class="row">
      <div class="col-sm-4 offset-sm-4 text-center">
         <form>
            <fieldset>
               
                      고객님의 계정은 <span class="text-primary">sl@dsq.com</span> 입니다.
               <br><br>
               
               
               <div class="form-group">
				<div class="custom-control col-sm-6" id="c_left">
 <a href="#"><button type="submit" class="btn btn-primary btn-lg btn-block">로그인하기</button></a>
				</div>
				<div class="custom-control col-sm-6" id="c_right" >
<a href="#"><button type="submit" class="btn btn-primary btn-lg btn-block">비밀번호 찾기</button></a>
				</div>
			</div>
			
                  
            </fieldset>
         </form>
      </div>
   </div>
</body>
</html>