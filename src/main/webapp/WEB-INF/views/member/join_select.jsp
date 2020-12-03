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
#gene_mem {
	float: left;
}

#biz_mem {
	float: right;
}
</style>

</head>
<body>

	<div class="text-center">
		<a href="#"> <img src="img/D'sQ.png" width="200" height="100"
			alt="D'sQ"></a><br>
		<legend>
			<b>회원가입</b>
		</legend>
	</div>
	<br>
	<div class="container-fluid">
		<div class="row col-sm-6 offset-sm-3">

			<div class="form-group text-center">
				<div class="custom-control" id="gene_mem">
					<img src="img/General_mem.png" class="rounded-circle" width="350"
						height="350"> <br>
					<br> <a href="#"><button type="button"
							class="btn btn-danger btn-lg btn-block" onclick="location.href='/member_agree'">개인 회원가입</button></a>
				</div>
				<div class="custom-control custom-radio" id="gene_mem" >

					<img src="img/Business_mem.png" class="rounded-circle" width="350"
						height="350"> <br>
					<br> <a href="#"><button type="button"
							class="btn btn-warning btn-lg btn-block" onclick="location.href='/business_agree'">기업 회원가입</button></a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>