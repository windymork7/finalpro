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
<title>password_search_next</title>
<!-- 부트스트랩 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--	src="https://cdn.jsdeliv r.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--	crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--	crossorigin="anonymous"></script>--%>


</head>
<body>
	<div class="text-center">
		<a href="#"> <img src="img/D'sQ.png" alt="D'sQ"></a>
		<legend>
			<b>비밀번호 재설정</b>
		</legend>
	</div>
	<br>



	<div class="row">
		<div class="col-sm-4 offset-sm-4 text-center">
			<form name="pwGo" action="/passSearchUpdate.me" method="post">
				<fieldset>
					<div class="form-group">
						<input type="password" class="form-control" id="new_pw1" name="mem_pw"
							placeholder="새 비밀번호">
					</div>

					<div class="form-group">
						<input type="password" class="form-control" id="new_pw2"
							placeholder="새 비밀번호 확인">
					</div>

					<br>
					<input type="hidden" name="mem_email" value="${email}">
					<input type="hidden" name="mem_tel" value="${tel}">

					<div class="form-group">
						<button type="button" class="btn btn-primary btn-lg btn-block" onclick="confirm1()">확인</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
<script>
	function confirm1(){

		if (pwVali() == false){return false};

		alert("비밀번호가 변경 되었습니다. 다시 로그인 해주세요.");
		document.pwGo.submit();
	}

	function pwVali(){
		if ($("#new_pw1").val() == ""){
			alert("비밀번호를 입력해 주세요");
			return false;
		}
		if($("#new_pw2").val() == ""){
			alert("비밀번호 확인을 입력해 주세요");
			return false;
		}

		if ($("#new_pw1").val() != $("#new_pw2").val()){
			alert("비밀번호와 비밀번호 확인이 다릅니다.");
			return false;
		}
	}
</script>
</html>