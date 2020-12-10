<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>general_agreement</title>
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
</head>
<body>
	<div class="text-center">
		<a href="#"> <img src="img/D'sQ.png" width="200" height="100"
			alt="D'sQ"></a><br>
		<legend>
			<b>개인회원 이용약관</b>
		</legend>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-4 offset-sm-4">

			<div class="form-group">
				<div class="form-check">
					<label class="form-check-label"> 
					<input class="form-check-input" type="checkbox" value="" id="agree_chk1">
						개인회원 약관 동의
					</label>
				</div>
				<div class="form-group">
					<textarea class="form-control" id="Textarea2" rows="8" readonly>
					여러분을 환영합니다.
D's Q 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 
본 약관은 D's Q 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.

D's Q 서비스를 이용하시거나 D's Q 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.

다양한 D's Q 서비스를 즐겨보세요.
여러분은 PC를 통해 D's Q 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, D's Q 고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.

회원으로 가입하시면 D's Q 서비스를 보다 편리하게 이용할 수 있습니다.
여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, D's Q는 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 D's Q 서비스 이용 계정(이하 ‘계정’)을 부여합니다. 계정이란 회원이 D's Q 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다. 회원은 자신의 계정을 통해 좀더 다양한 D's Q 서비스를 보다 편리하게 이용할 수 있습니다. 이와 관련한 상세한 내용은 계정 운영정책 및 고객센터 내 D's Q 회원가입 방법 등에서 확인해 주세요.

여러분이 제공한 콘텐츠를 소중히 다룰 것입니다.
D's Q는 여러분이 게재한 게시물이 D's Q 서비스를 통해 다른 이용자들에게 전달되어 우리 모두의 삶을 더욱 풍요롭게 해줄 것을 기대합니다. 게시물은 여러분이 타인 또는 자신이 보게 할 목적으로 D's Q 서비스 상에 게재한 부호, 문자, 음성, 음향, 그림, 사진, 동영상, 링크 등으로 구성된 각종 콘텐츠 자체 또는 파일을 말합니다.

D's Q는 여러분의 생각과 감정이 표현된 콘텐츠를 소중히 보호할 것을 약속 드립니다. 여러분이 제작하여 게재한 게시물에 대한 지식재산권 등의 권리는 당연히 여러분에게 있습니다.

D's Q 서비스와 관련하여 궁금하신 사항이 있으시면 고객센터로 문의 주시기 바랍니다.</textarea>
				</div>
				</textarea>
			</div>
			<div class="form-group">
				<div class="form-check">
					<label class="form-check-label"> 
					<input class="form-check-input" type="checkbox" value="" id="agree_chk2">
						개인정보 수집 및 이용 동의
					</label>
				</div>
				<div class="form-group">
					<textarea class="form-control" id="Textarea1" rows="8" readonly>
개인정보보호법에 따라 D's Q에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.

1. 수집하는 개인정보
이용자는 회원가입을 하지 않아도 정보 검색, 질문과 답변 보기 등 대부분의 D's Q 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 질문글 작성 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, D's Q는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.

회원가입 시점에 D's Q가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원 가입 시에 ‘이메일, 비밀번호, 이름, 핸드폰전화번호’를 필수항목으로 수집합니다.
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
D's Q 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.

서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.
구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나,
2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며, 이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.

2. 수집한 개인정보의 이용
D's Q 관련한 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.

- 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
- 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
- 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
3. 개인정보의 보관기간
회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.</textarea>
				</div>
			</div>
			<br>
			 <label class="form-check-label"> 
			 <input class="form-check-input" type="checkbox" value="" id="all_agree_chk">
				<b>D's Q 이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</b>
			</label>
			<br><br>
			<a href="#"><button type="button" class="btn btn-primary btn-lg btn-block">확인</button></a>
		</div>
	</div>
</body>
</html>