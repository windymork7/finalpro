<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
	<title>join_select</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 부트스트랩 css 추가 -->
<%--	<link rel="stylesheet" href="css/bootstrap.css">--%>

<%--	<!-- 해외 부트스트랩 js -->--%>
<%--	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--	<script--%>
<%--			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"--%>
<%--			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"--%>
<%--			crossorigin="anonymous"></script>--%>
<%--	<script--%>
<%--			src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"--%>
<%--			integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"--%>
<%--			crossorigin="anonymous"></script>--%>

</head>
<body>
<div class="text-center">
	<a href="#"> <img src="img/D'sQ.png"  class="text-center" alt="D'sQ"></a><br>
	<legend>
		<b>회원가입</b>
	</legend>
</div>
<div class="container-fluid">
	<br>
	<div class="row">
		<div class="col-sm-3 offset-sm-3">
			<img src="img/general_mem.png" class="rounded-circle text-center" width="100%" height="350">
			<br>
			<br>
			<button type="button" class="btn btn-danger btn-lg btn-block" onclick="location.href='/member_agree'">개인 회원가입</button>
			<br>
			<br>
		</div>
		<div class="col-sm-3">
			<img src="img/business_mem.png" class="rounded-circle tect-center" width="100%" height="350">
			<br>
			<br>
			<button type="button" class="btn btn-warning btn-lg btn-block" onclick="location.href='/business_agree'">기업 회원가입</button>
		</div>
	</div>
</div>

</body>
</html>