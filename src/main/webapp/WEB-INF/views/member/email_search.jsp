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
<title>email_search</title>
<!-- 부트스트랩 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
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
			<b>계정 찾기</b>
		</legend>
	</div>

	<div class="row">
		<div class="col-sm-4 offset-sm-4">
			<form>
				<fieldset>
					<div class="form-group">
						<div class="form-group">
							<label for="tel"><b>전화번호</b></label>
							<div class="form-group">
								<div class="input-group mb-3">
									<input type="text" class="form-control" id="tel">
									<div class="input-group-append">
										<button type="button" class="btn btn-secondary" onclick="random()"
											data-toggle="modal" data-target="#exampleModal">인증</button>
									</div>
								</div>
							</div>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">인증번호</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div id="random" class="modal-body"></div>
									<input type="hidden" id="hiddenRandom">

									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">닫기</button>
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
							<input type="text" class="form-control" id="tel_check"
								placeholder="인증번호 6자리">
						</div>
						<br>
						
						<!-- email_search_next.jsp 파일하고 연결 -->
						<div class="text-center">
							<button type="button" class="btn btn-primary btn-lg btn-block" onclick="next()">다음</button>
						</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
<script>
	var random1 = Math.floor(Math.random()*9999);

	function next(){

		var tel = $("#tel").val();

		if (telVali() == false){return false;}
		if (autuVali() == false){return false;}
		if (emailCheck() == false){return false;}

		location.href='/emailSearchSecond.me?tel='+tel;
	}

	function telVali(){
		if ($("#tel").val() == ""){
			alert("전화번호를 입력해 주세요");
			return false;
		}

		if ($("#tel").val().indexOf("-") != -1){
			for (var i=0; i< $("#tel").val().length; i++){
				$("#tel").val($("#tel").val().replace("-", ""));
			}
		}
	}

	function  autuVali(){
		if ($("#tel_check").val() != $("#hiddenRandom").val()){
			alert("인증번호를 다시 입력해 주세요");
			return false;
		}
	}

	function random(){
		$("#random").html(random1);
		$("#hiddenRandom").val(random1);
	}

	function emailCheck(){
		var tel = $("#tel").val();
		var rtn = true;


		$.ajax(
				{
					type : 'GET',
					async: false,
					url : "/memberVali.me",
					data : {
						"mem_tel" : tel,
						"state" : 3,
					},
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(data)
					{
						if (data == 0){
							alert("가입된 이메일이 없습니다.");
							rtn = false;
						}
					},
					error : function(request, status, error)
					{
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}

				});

		return rtn;
	}

</script>
</html>