<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title>business_agreement</title>
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
			<b>기업회원 이용약관</b>
		</legend>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-4 offset-sm-4">

			<div class="form-group">
				<div class="form-check">
					<label class="form-check-label"> 
					<input class="form-check-input" name="check" type="checkbox" value="" id="biz_agree_chk1">
						기업회원 약관 동의
					</label>
				</div>
				<div class="form-group">
					<textarea class="form-control" id="Textarea2" rows="8" readonly>
					개정일자 : 2020년 9월 3일

제1조 (목적)
본 약관은 D's Q가 운영하는 "서비스"를 이용함에 있어 "회사"와 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.
제2조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 아래와 같다.
① "사이트"라 함은 회사가 서비스를 "회원"에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트, 모바일웹, 앱 등의 서비스를 제공하는 모든 매체를 통칭하며, 통합된 하나의 회원 계정(아이디 및 비밀번호)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말한다.
- www.dsq.com
② "서비스"라 함은 회사가 운영하는 사이트를 통해 기업(단체, 사업자, 교육기관)이 직원채용을 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사이트에서 제공하는 모든 부대 서비스를 말한다.
③ 회원이라 함은 기업의 필요한 인재를 고용할 것을 목적으로 약관에 동의하고 아이디를 부여받아 회사의 서비스를 이용하는 자를 말하며, 아웃 소싱(도급), 인재파견, 채용대행 기업을 포함한다. 또한, 회원은 각 사업자 별로 아이디를 부여 받아 회사의 서비스를 이용하여야 한다.
④ "아이디"라 함은 회원가입시 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 "회사"가 부여하는 문자와 숫자의 조합을 말한다.
⑤ "비밀번호"라 함은 위 제4항에 따라 회원이 회원가입시 아이디를 설정하면서 아이디를 부여받은 자와 동일인임을 확인하고 "회원"의 권익을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.
⑥ "비회원"이라 함은 회원가입절차를 거치지 않고 "회사"가 제공하는 서비스를 이용하거나 하려는 자를 말한다.
제3조 (약관의 명시와 개정)
① "회사"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등을 이용자가 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.
② "회사"는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위반하지 않는 범위에서 이 약관을 개정할 수 있다.
③ "회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지한다. 단 "회원"의 권리, 의무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.
④ "회원"은 변경된 약관에 대해 거부할 권리가 있다. "회원"은 변경된 약관이 공지된 지 15일이내에 거부의사를 표명할 수 있다. "회원"이 거부하는 경우 본 서비스 제공자인 "회사"는 15일의 기간을 정하여 "회원"에게 사전 통지 후 당해 "회원"과의 계약을 해지할 수 있다. 만약, "회원"이 거부의사를 표시하지 않거나, 전항에 따라 시행일 이후에 "서비스"를 이용하는 경우에는 동의한 것으로 간주한다.
제4조 (약관의 해석)
① 이 약관에서 규정하지 않은 사항에 관해서는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.
② 각 사이트 및 서비스 이용약관이 있는 경우에는 서비스 이용약관이 우선한다.
③ "회원"이 "회사"와 개별 계약을 체결하여 서비스를 이용하는 경우에는 개별 계약이 우선한다.
제5조 (이용계약의 성립)
① "회사"의 서비스 이용계약(이하 '이용계약')은 서비스를 이용하고자 하는 자가 본 약관과 개인정보처리방침을 읽고 "동의" 또는 "확인" 버튼을 누른 경우 본 약관에 동의한 것으로 간주한다.
② 제1항 신청에 있어 "회사"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 있으며, "회원"은 본인인증에 필요한 이름, 생년월일, 연락처 등을 제공하여야 한다, 또한 서비스 이용을 위해 회사명과 사업자등록번호를 제공하여야 하며 "회사"는 기업인증을 위해 사업자정보를 확인할 수 있는 증명서(사업자등록증)를 별도로 요구할 수 있다. 회사명과 사업자등록번호를 허위로 등록한 경우, 휴·폐업 사업자등록번호로 등록한 경우에 "회원"은 일체의 권리를 주장할 수 없다.
③ 이용신청자가 이용신청(회원가입 신청) 작성 후에 "회사"가 웹상의 안내 및 전자메일로 "회원"에게 통지함으로써 이용계약이 성립된다.
④ 사업자등록번호가 없는 기관이나 단체는 "회사"가 정한 별도의 절차에 따라 이용계약을 할 수 있다.
제6조 (이용신청의 승낙과 제한)
① "회사"는 전조의 규정에 의한 이용신청 고객에 대하여 업무수행상 또는 기술상 지장이 없는 경우에는 원칙적으로 접수순서에 따라 서비스 이용을 승낙한다.
② "회사"는 아래사항에 해당하는 경우에 대해서는 서비스 이용신청을 승낙하지 아니한다.
1. 실명이 아니거나 타인의 명의를 이용하여 신청한 경우
2. 이용계약 신청서의 내용을 허위로 기재하거나 "회사"가 제시하는 내용을 기재하지 않은 경우
3. 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우
③ "회사"는 아래사항에 해당하는 경우에는 그 신청에 대하여 승낙제한 사유가 해소될 때까지 승낙을 유보할 수 있다.
1. "회사"가 설비의 여유가 없는 경우
2. "회사"의 기술상 지장이 있는 경우
3. 기타 "회사"의 귀책사유로 이용승낙이 곤란한 경우
제7조 (서비스의 내용)
① "회사"는 제2조 2항의 서비스를 제공할 수 있으며 그 내용은 다음 각 호와 같다.
1. 이력서 등록 및 인재정보 게재 서비스
2. 온라인 입사지원 서비스
3. 헤드헌팅/아웃소싱 서비스
4. 구인/구직과 관련된 제반 서비스
5. 교육과 관련된 제반 서비스
6. 이용자간의 교류와 소통에 관련한 서비스
7. 자료거래에 관련한 서비스
8. 기타 "회사"가 추가 개발하거나 제휴계약 등을 통해 "회원"에게 제공하는 일체의 서비스
② "회사"는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있다. 단, 이 경우 "회사"는 추가 또는 변경내용을 회원에게 공지해야 한다.
제8조 ("회원" 정보, 채용공고 등록, 채용의뢰, 이력서검색)
① "회원"은 채용공고 등록시 기업정보를 정확히 기재하여야 한다.
② "회원"은 아웃소싱(도급), 인재파견 또는 채용대행 공고를 등록하는 경우 구직을 희망하는 개인회원이 자사의 직접 고용 목적으로 등록한 채용공고와 오인·혼동 되지 않도록 하여야 한다.
③ "회원"은 직업안정법 제34조 및 동법 시행령 제 34조 거짓구인광고의 범위에 위배되지 않도록 채용공고를 작성하여 등록해야 하며 그 내용은 다음과 같다.
1. 구인을 가장하여 물품판매, 수강생 모집, 직업소개, 부업알선, 자금모집 등을 행하는 광고
2. 거짓 구인을 목적으로 구인자의 신원(업체명 또는 성명)을 표시하지 아니하는 광고
3. 구인자가 제시한 직종, 고용형태, 근로조건 등이 응모할 때의 그것과 현저히 다른 광고
4. 기타 광고의 중요내용이 사실과 다른 광고
④ "회원"은 관련 법률에 의거하여 근로자의 모집 및 채용에 있어서 남녀, 연령을 이유로 차별하여서는 아니되며 15세 미만 채용 모집을 할 수 없다. 단, 제6조 제2항 제3호에 경우는 예외로 한다.
⑤ 제3항, 제4항을 위반한 경우 이에 대한 책임은 전적으로 "회원"에게 있다.
⑥ "회사"는 "회원"이 등록한 기업정보 및 채용공고를 "회사"가 정한 방법에 의해 노출할 수 있다.
⑦ "회원" 중 아웃 소싱(도급), 인재파견, 채용대행 기업은 "회사"에 채용파트너관 서비스를 신청하여 자사의 HR상품을 홍보할 수 있으며, 일반 기업 "회원"은 채용파트너관에 업로드 된 HR상품 및 사업분야를 선택하여 상담의뢰를 신청할 수 있다. 단, 채용파트너관 서비스 이용 시 수집되는 개인정보는 본 서비스 이용 이외의 목적으로 사용할 수 없으며, 각 개인의 동의 없이 개인정보를 기업의 영업·마케팅의 용도로 사용하거나 제3자에게 제공 시 개인정보보호법, 정보통신망이용촉진 및 정보보호 등에 관한 법률에 의거하여 법적 책임을 질 수 있다.
⑧ "회원"은 직원 채용의 목적으로 유·무료로 개인회원이 등록한 이력서를 검색할 수 있으며 "회원"은 "회사"가 제시하는 별도의 커뮤니케이션을 통하여 개인회원에게 연락을 취할 수 있다. 단, 이력서 연락처의 열람 및 연락의 목적은 직원채용활동에 국한되어야 하며, 기업의 영업·마케팅·제3자 제공 시에는 개인정보보호법, 직업안정법, 정보통신망이용촉진 및 정보보호 등에 관한 법률에 의거하여 법적 책임을 질 수 있다.
⑨ "회원"이 제2조 제 3항에 따라 자사의 직접 고용을 목적으로 하지 않는 헤드헌팅 채용공고를 등록할 경우 "회사"는 해당 공고를 삭제할 수 있으며 "기업회원"의 자격을 "서치펌회원" 으로 전환시킬 수 있다. 
제9조 (제휴를 통한 서비스)
① "회사"는 제휴 관계를 체결한 여타 인터넷 웹사이트 및 채용박람회 또는 신문, 잡지 등의 오프라인 매체를 통해 사이트에 등록한 기업회원의 기업정보와 채용공고가 열람될 수 있도록 서비스를 제공할 수 있다.
② "회사"는 제휴를 통해 타 사이트 및 매체에 등록될 수 있음을 고지해야 하며, 제휴 사이트 목록을 사이트내에서 상시 열람할 수 있도록 해야 한다. 단, 등록의 형태가 "회사"가 직접 구축하지 않고, 제휴사가 xml 또는 api 형태로 "회사"로부터 제공 받아 구축한 매체 목록은 본 약관 외 별도의 제휴 리스트에서 열람할 수 있도록 한다.
④ "본조 ③항" 제휴를 통한 사이트의 변동사항 발생 시 공지사항을 통해 고지 후 진행 한다.
제10조 (서비스의 요금)
① "회원" 가입과 채용공고 등록비용은 무료이다. 다만 개인회원 또는 사이트에 방문한 회원에게 자신의 정보를 보다 효과적으로 노출시키기 위한 유료옵션과 유료 이력서 검색 및 기타 서비스를 이용하기 위한 별도의 서비스는 유료로 제공될 수 있다.
② "회사"는 유료서비스를 제공할 경우 사이트에 요금에 대해서 공지를 하여야 한다.
③ "회사"는 유료서비스 이용금액을 서비스의 종류 및 기간에 따라 "회사"가 예고 없이 변경할 수 있다. 다만, 변경 이전에 적용 또는 계약한 금액은 소급하여 적용하지 아니한다.
제11조 (서비스의 요금의 환불)
① "회사"는 다음 각 호에 해당하는 경우 이용요금을 환불한다. 단, 각 당사자의 귀책사유에 따라 환불 조건이 달라질 수 있다.
1. 유료서비스 이용이 개시되지 않은 경우
2. 네트워크 또는 시스템 장애로 서비스 이용이 불가능한 경우
3. 유료서비스 신청 후 "회원"의 사정에 의해 서비스가 취소될 경우
② "회사"가 본 약관 제20조에 따라 가입해지/서비스중지/자료삭제를 취한 경우, "회사"는 "회원"에게 이용요금을 환불하지 않으며, 별도로 "회원"에게 손해배상을 청구할 수 있다.
③ 이용료를 환불받고자 하는 회원은 고객센터로 환불을 요청해야 한다.
④ "회사"는 환불 요건에 부합하는 것으로 판단될 경우, 각 서비스 환불 안내에 따라 유료이용 계약 당시 상품의 정가 기준으로 서비스 제공된 기간에 해당하는 요금을 차감한 잔액을 환불한다.
제12조 (충전금 규정)
① 충전금은 "회사"가 정한 결제수단을 이용하여 미리 입금해 둔 금액으로, "회사"의 유료서비스 결제 시 사용할 수 있다.
② 서비스 운영정책에 따라 충전금을 구매할 수 있는 수단, 충전금으로 결제할 수 있는 유료서비스 등은 달라질 수 있으며, 이에 대한 사항은 서비스 화면에 게시하거나 공지한다.
③ 회원은 "회사"에 잔여 충전금의 환불을 요청할 수 있으며, "회사"는 회원에게 환불에 필요한 서류를 요청할 수 있다. 환불 시 환불수수료를 공제하고 환불할 수 있으며, 충전금 충전방법에 따라 금융비용이 환불수수료를 초과하여 발생할 경우 이는 회원의 부담으로 한다.
④ 잔여 충전금 중 충전일로부터 5년이 초과할 때까지 이용하지 않은 금액은 상사소멸시효에 따라 소멸된다.
⑤ 회원탈퇴 시 보유중인 충전금은 환불을 요청할 수 있으며, 이와 같은 절차없이 회원탈퇴한 경우 충전금은 전액 자동소멸되어 복구되지 않는다.
제13조 (서비스 이용시간)
① "회사"는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공한다. 다만, "회사"는 서비스의 종류나 성질에 따라 제공하는 서비스 중 일부에 대해서는 별도로 이용시간을 정할 수 있으며, 이 경우 "회사"는 그 이용시간을 사전에 회원에게 공지 또는 통지하여야 한다.
② "회사"는 자료의 가공과 갱신을 위한 시스템 작업시간, 장애 해결을 위한 보수작업 시간, 정기 PM 작업, 시스템 교체작업, 회선 장애 등이 발생한 경우 일시적으로 서비스를 중단할 수 있으며 계획된 작업의 경우 공지란에 서비스 중단 시간과 작업 내용을 알려야 한다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있다.
제14조 (서비스 제공의 중지)
① "회사"는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있다.
1. 설비의 보수 등 "회사"의 필요에 의해 사전에 회원들에게 통지한 경우
2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우
3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우
② 전항의 경우, "회사"는 기간의 정함이 있는 유료서비스 이용자들에게는 그 이용기간을 연장하는 등의 방법으로 손실을 보상하여야 한다.
③ 회원인 개인사업자와 법인사업자의 휴·폐업 여부가 회사가 정한 별도의 절차에 따라 확인된 경우 유료 이력서 검색서비스(건수별 인재검색)의 경우 적립된 건수는 모두 소멸된다.
제15조 (정보의 제공 및 광고의 게재)
① "회사"는 "회원"에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원대상의 서비스 소개 등의 목적으로 하는 각종 정보에 대해서 전자우편이나 서신우편을 이용한 방법으로 제공할 수 있다.
② "회사"는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지, 전자우편 등에 게재할 수 있으며, 광고가 게재된 전자우편을 수신한 "회원"은 수신거절을 "회사"에게 할 수 있다.
③ "회사"는 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 "회원"이 참여하거나 교신 또는 거래를 함으로써 발생하는 모든 손실과 손해에 대해 책임을 지지 않는다.
④ 본 서비스의 "회원"은 서비스 이용 시 노출되는 광고게재에 대해 동의 하는 것으로 간주한다.
제16조 (자료내용의 책임과 "회사"의 정보 수정 권한)
① 자료내용은 "회원"이 등록한 기업정보 및 이력서와 사이트에 게시한 게시물을 말한다.
② "회원"은 자료 내용 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 "회원"에게 있다.
③ 모든 자료내용의 관리와 작성은 "회원" 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를 하더라도 자료내용의 책임은 "회원"에게 있으며 "회원"은 주기적으로 자신의 자료를 확인하여 항상 정확하게 관리가 되도록 노력해야 한다.
④ "회사"는 "회원"이 등록한 자료 내용에 오자, 탈자 또는 사회적 통념에 어긋나는 문구와 내용이 있을 경우 이를 언제든지 수정할 수 있다.
⑤ "회원"이 등록한 자료로 인해 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제 요청이 접수된 경우 "회사"는 "회원"에게 사전 통지 없이 본 자료를 삭제할 수 있으며 삭제 후 메일 등의 방법으로 통지할 수 있다.
제17조 (자료 내용의 활용 및 취급)
① "회원"이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며 그 자료는 매체를 통한 언론 배포 또는 제휴사에게 제공될 수 있다.
② "사이트"에서 정당한 절차를 거쳐 열람한 개인회원의 이력서 정보는 해당 "회원"의 인사자료이며 이에 대한 관리 권한은 해당 "회원"의 정책에 의한다.
③ "회사"는 "사이트"의 온라인 입사지원 시스템을 통해 지원한 개인회원의 이력서 열람 여부 및 "회원"이 제공한 채용정보에 입사지원한 구직자들의 각종 통계데이터를 개인회원에게 제공할 수 있다 .
제18조 ("회사"의 의무)
① "회사"는 본 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 수 있도록 최선의 노력을 다해야 한다.
② "회사"는 서비스와 관련한 "회원"의 불만사항이 접수되는 경우 이를 즉시 처리하여야 하며, 즉시 처리가 곤란한 경우에는 그 사유와 처리일정을 서비스 화면 또는 기타 방법을 통해 동 "회원"에게 통지하여야 한다.
③ "회사"는 유료 결제와 관련한 결제 사항 정보를 1년 이상 보존한다. 다만 회원 자격이 없는 회원은 예외로 한다.
④ 천재지변 등 예측하지 못한 일이 발생하거나 시스템의 장애가 발생하여 서비스가 중단될 경우 이에 대한 손해에 대해서는 "회사"가 책임을 지지 않는다. 다만 자료의 복구나 정상적인 서비스 지원이 되도록 최선을 다할 의무를 진다.
⑤ "회원"의 자료를 본 서비스 이외의 목적으로 제3자에게 제공하거나 열람시킬 경우 반드시 "회원"의 동의를 얻어야 한다.
⑥ "회원"이 "사이트"에 등록한 기업정보, 채용공고 내용은 사이트를 방문하는 일반 대중에게 공개함을 원칙으로 한다. 단, 회사가 운영하는 공식 SNS채널(페이스북, 인스타그램, 카카오스토리, 트위터, 블로그 등)에 한해 채용공고 내용을 업로드하여 일반 대중에게 공개할 수 있다.
제19조 ("회원"의 의무)
① "회원"은 관계법령과 본 약관의 규정 및 기타 "회사"가 통지하는 사항을 준수하여야 하며, 기타 "회사"의 업무에 방해되는 행위를 해서는 안 된다.
② "회원"이 신청한 유료서비스는 등록 또는 신청과 동시에 "회사"와 채권, 채무 관계가 발생하며, "회원"은 이에 대한 요금을 지정한 기일 내에 납부하여야 한다.
③ "회원"이 결제 수단으로 신용카드를 사용할 경우 비밀번호 등 정보 유실 방지는 "회원" 스스로 관리해야 한다. 단, "사이트"의 결함에 따른 정보유실의 발생에 대한 책임은 "회원"의 의무에 해당하지 아니한다.
④ "회원"은 서비스를 이용하여 얻은 정보를 "회사"의 사전동의 없이 복사, 복제, 번역, 출판, 방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없다.
⑤ "회원"은 본 서비스를 건전한 직원채용 이외의 목적으로 사용해서는 안되며 이용 중 다음 각 호의행위를 해서는 안 된다.
1. 다른 회원의 아이디를 부정 사용하는 행위
2. 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위
3. 타인의 명예를 훼손하거나 모욕하는 행위
4. 타인의 지적재산권 등의 권리를 침해하는 행위
5. 해킹행위 또는 바이러스의 유포 행위
6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위
7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위
8. 사이트의 정보 및 서비스를 이용한 영리 행위
9. 그밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위
⑥ "회원"은 "사이트"를 통해 열람한 이력서 정보를 "회사" 및 당사자의 허락없이 재배포할 수 없으며 본 정보에 대한 출력 및 복사 등의 관리 책임은 전적으로 "회원"에게 있다.
제20조 ("회원"의 가입해지/서비스중지/자료삭제)
① "회원"은 언제든지 회원탈퇴 또는 채용공고 등록을 해지하기 위해 고객센터 또는 회원탈퇴 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 처리한다.
② 다음의 사항에 해당하는 경우 "회사"는 사전 동의없이 가입해지나 서비스 중지, 채용공고 삭제 조치를 취할 수 있다.
1. 회원의 의무를 성실하게 이행하지 않았을 때
2. 규정한 유료서비스 이용 요금을 납부하지 않았을 때
3. 불순한 의도로 유료서비스를 반복적으로 결제/취소할 때
4. 본 서비스 목적에 맞지 않는 분야에 정보를 활용하여 사회적 물의가 발생한 때
5. 회원이 등록한 정보의 내용이 사실과 다르거나 조작되었을 때
6. 사업자등록증에 나타난 정보와 기업회원 가입시의 정보가 일치하지 않을 때
7. 타 기업의 사업자등록번호나 상호를 도용하여 허위로 기업정보를 등록하거나 휴·폐업 사업자등록번호로 기업정보를 등록했을 때
8. 지사, 지점, 영업소 등의 경우 구체적인 지사, 지점, 영업소 명칭을 사용하지 않고 기업명을 등록했거나 지사, 지점, 영업소의 사업자등록번호가 별도 있음에도 불구하고 본사의 사업자등록번호로 기업회원 가입을 했을 때
9. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하지 않았을 때
10. 기업회원 가입 또는 채용공고 등록시 본 서비스에서 안내하는 방법으로 가입하지 않았거나 등록하지 않았을 때
11. 동일 회원ID로 마감일이 지나지 않은 사실상의 동일 내용의 채용공고를 중복 등록했을 때
12. 동일 사업자가 마감일이 지나지 않은 사실상의 동일내용의 채용공고를 다수 ID를 사용하여 중복등록 했을 때
13. 허위 구인공고를 등록했을 때
14. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다를 때
15. 채용공고의 모집요강만으로 업무에 대한 내용이 명확하지 않을 때
16. 모집요강에 적합한 업직종 분류를 지정하지 않았을 때 (특히, 교육기관이나 이벤트업체 또는 영업대행 기관의 경우 영업, 마케팅, 텔레마케팅, 상담 인력을 모집하고자 할 경우 반드시 텔레마케팅 또는 고객상담, 교육/강사/학원 등 반드시 직접 관련되는 해당 업종, 직종 분류만 지정해야 한다.)
17. 헤드헌팅과 같이 인력중개를 주 목적으로 사업을 수행하는 업체인 경우
18. 채용공고를 등록한 회원의 정보와 실제 채용공고 상 모집하는 기업의 정보가 다른 경우
19. 아웃소싱(도급), 인재파견, 채용대행 공고임에도 불구하고 자사 공고인 것처럼 혼란을 야기하는 공고를 등록 한 때
20. 다단계 식의 모집 내용을 등록했을 때
21. 구인을 가장하여 유학알선, 물품판매, 자금 모금 등을 행하는 내용을 등록했을 때
22. 회원모집 형태의 광고 또는 카드회원 모집(수당제 광고) 내용을 등록했을 때
23. 추천인 모집 광고, 재택 쇼핑몰 분양 광고, 직업소개, 부업알선 광고를 등록했을 때
24. 취업수수료 등 취업 관련 비용을 필요로 하는 운송·물류·지입 업체의 채용공고를 등록했을 때
25. 불건전한 내용의 유흥업소 채용공고를 등록했을 때
26. 구직자의 피해사례(채용공고를 통해 구직자가 입사 과정에서 피해가 발생한 경우 또는 재직중 "기업회원"이 관계법령을 위반하여 피해가 발생한 경우 등)가 접수된 채용공고
27. 임금체불로 근로감독원에 진정서가 접수되거나, 관계 당국에 고소·고발되어 있는 기업 (단, 기업의 임금체불이 해소가 입증되면 확인 후에 서비스 이용 가능)
28. 본 서비스와 관련하여 회사 또는 제3자의 명예를 훼손하였을 때
29. 동업자 모집, 프랜차이즈 모집, 점포개설, 창업, 사이트 홍보 등 직원 채용이 아닌 공고를 등록했을 때
30. 기타 관계법규에 위배되는 내용이거나 사이트의 원활한 운영을 위하여 운영자가 필요하다고 판단한 경우
③ "회원"이 유료서비스를 이용하는 중 "회사"의 책임에 의해 정상적인 서비스가 제공되지 않을 경우 "회원"은 본 서비스의 해지를 요청할 수 있으며 "회사"는 기간의 정함이 있는 유료서비스의 경우에는 해지일까지 이용일수를 1일기준금액으로 계산하여 이용금액을 공제후 환급하고, 이용 건수의 정함이 있는 유료서비스의 경우에는 기 사용분을 1건기준금액으로 계산하여 이용금액을 공제후 환급한다. 단, 허위·불량공고의 경우 게재시 지불된 광고료는 일체 반환되지 않는다.
④ "회원"인 개인사업자와 법인사업자의 휴·폐업 여부가 회사가 정한 별도의 절차에 따라 확인된 경우 유료 이력서 검색서비스(건수별 인재검색)의 경우 적립된 건수는 모두 소멸된다.
⑤ "회사"는 회원 가입이 해지된 경우 해당 회원 정보를 모두 삭제하여야 하며, 상법, 전자상거래등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 관계법령에서 정한 일정한 기간 동안 회원정보를 보관한다.
⑥ 개인정보보호를 위하여 "회원"이 선택한 개인정보 보유기간(1년, 3년, 회원탈퇴시) 동안 "사이트"를 이용하지 않은 경우, "아이디"를 "휴면계정"으로 분리하여 해당 계정의 이용을 중지할 수 있다. 이 경우 "회사"는 "휴면계정 처리 예정일"로부터 30일 이전에 해당사실을 전자메일, 서면, SMS 중 하나의 방법으로 사전통지하며 "회원"이 직접 본인확인을 거쳐, 다시 "사이트" 이용 의사표시를 한 경우에는 "사이트" 이용이 가능하다. "휴면계정"으로 분리 보관된 개인정보는 5년간 보관 후 지체없이 파기한다.
제21조 (허위 구인광고 경고)
허위 구인광고로 인해 발생된 문제에 따른 법적인 책임은 모두 작성자에게 있으며, 구인광고 게재시에 지불된 광고료는 일체 반환되지 않는다. 허위 구인광고 또는 허위 구인 조건을 제시한 자는 직업 안정법 제 47조에 의해 5년 이하의 징역 또는 2천만원 이하의 벌금형을 받게 된다.
제22조 (손해배상)
① "회사"가 이 약관의 규정을 위반한 행위로 "회원"에게 손해를 입히거나 기타 "회사"가 제공하는 모든 서비스와 관련하여 "회사"의 책임 있는 사유로 인해 "회원"에게 손해가 발생한 경우 "회사"는 그 손해를 배상하여야 한다.
② "회사"는 책임 있는 사유로 제공한 정보가 사실과 달라 "회원"이 손해를 입었을 경우에 "회사"는 그 손해를 배상하여야 한다.
③ "회원"이 이 약관의 규덩을 위반한 행위로 "회사" 및 제3자에게 손해를 입히거나 "회원"의 책임 있는 사유에 의해 "회사" 및 제3자에게 손해를 입힌 경우에는 "회원"은 그 손해를 배상하여야 한다.
④ 타 회원(개인회원, 기업회원, 서치펌회원 모두 포함)의 귀책사유로 "회원"의 손해가 발생한 경우 "회사"는 이에 대한 배상 책임이 없다.
제23조 (양도 금지)
"회원"의 서비스 받을 권리는 제3자에게 양도, 대여, 증여 등으로 사용할 수 없다.
제24조 (이용요금 오류의 조정)
"회사"는 이용요금과 관련하여 오류가 있는 경우에 "회원"의 요청, 또는 "회사"의 사전 통지에 의하여 다음에 해당하는 조치를 취한다.
1. 과다납입한 요금에 대하여는 그 금액을 반환한다. 다만, "회원"이 동의할 경우 다음 달에 청구할 요금에서 해당 금액만큼을 감하여 청구한다.
2. 요금을 반환받아야 할 "회원"이 요금체납이 있는 경우에는 반환해야 할 요금에서 이를 우선 공제하고 반환한다.
3. "회사"는 과소청구액에 대해서는 익월에 합산청구한다.
제25조 ("회원"의 개인정보보호)
"회사"는 "회원"의 개인정보보호를 위하여 노력해야 한다. "회원"의 개인정보보호에 관해서는 정보통신망이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법에 따르고, "사이트"에 "개인정보처리방침"을 고지한다.
제26조 (신용정보의 제공 활용 동의)
① "회사"가 회원가입과 관련하여 취득한 "회원"의 신용정보를 타인에게 제공하거나 활용하고자 할 때에는 신용정보의 이용 및 보호에 관한 법률 제23조의 규정에 따라 사전에 그 사유 및 해당기관 또는 업체명 등을 밝히고 해당 "회원"의 동의를 얻어야 한다.
② 본 서비스와 관련하여 "회사"가 "회원"으로부터 신용정보의 이용 및 보호에 관한 법률에 따라 타인에게 제공 활용에 동의를 얻은 경우 "회원"은 "회사"가 신용정보 사업자 또는 신용정보 집중기관에 정보를 제공하여 "회원"의 신용을 판단하기 위한 자료로 활용하거나, 공공기관에서 정책자료로 활용되도록 정보를 제공하는 데 동의한 것으로 간주한다.
제27조 (분쟁의 해결)
① "회사"와 "회원"은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 한다.
② 전항의 노력에도 불구하고, 동 분쟁에 관한 소송은 "회사"의 주소지 관할법원으로 한다.
부칙
이 약관은 2020년 9월 3일부터 시행한다.</textarea>
				</div>
				</textarea>
			</div>
			<div class="form-group">
				<div class="form-check">
					<label class="form-check-label"> 
					<input class="form-check-input" name="check" type="checkbox" value="" id="biz_agree_chk2">
						개인정보 수집 및 이용 동의
					</label>
				</div>
				<div class="form-group">
					<textarea class="form-control" id="Textarea1" rows="8" readonly>
1. 수집하는 개인정보 항목 및 이용 목적
1) 회원가입 시
- 수집목적 : 회원제 서비스 가입 및 본인여부 확인
- 수집항목 : 대표자명, 본인인증정보 또는 중복가입확인정보(DI), 이메일, 비밀번호, 전화번호,

2) 공모전 정보 등록 시
- 수집목적 : 허위정보 게재로 인한 피해방지를 위한 채용담당자 확인
- 수집항목 : 담당자 이름, 연락처(전화번호/휴대폰번호), e-메일

3) 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 광고 ID
- 모바일 서비스의 특성상 단말기 모델 정보가 수집될 수 있으나, 이는 개인을 식별할 수 없는 형태입니다.

2. 개인정보의 보유 및 이용기간
회원탈퇴를 요청하거나 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 수집 및 이용목적이 달성되거나 이용기간이 종료한 경우 개인정보를 지체 없이 파기합니다.
단, 상법 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 법령에서 규정한 보존기간 동안 거래내역과 최소한의 기본정보를 보유합니다.</textarea>
				</div>
			</div>
			<br>
			 <label class="form-check-label"> 
			 <input class="form-check-input" name="check" type="checkbox" value="" onclick="checkAll()" id="biz_all_agree_chk">
				<b>D's Q 이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</b>
			</label>
			<br><br>
			<a href="#"><button type="button" class="btn btn-primary btn-lg btn-block" onclick="check()">확인</button></a>
		</div>
	</div>
</body>
<script>
	function checkAll(){
		if ($("#biz_all_agree_chk").prop("checked")==true){
			$("input[name=check]").prop("checked", true);
		}
	}


	function check(){

		if ($("#biz_agree_chk1").prop("checked")==false || $("#biz_agree_chk2").prop("checked")==false){
			alert("모든 이용약관의 동의해 주세요.");
		} else {
			location.href='businessJoinForm.bi'
		}
	}

</script>
</html>