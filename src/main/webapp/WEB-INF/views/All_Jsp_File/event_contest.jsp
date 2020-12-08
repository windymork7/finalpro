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
<title>event_contest</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://use.fontawesome.com/b490e94c82.js"></script>
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
#card {
   border: 2px solid rgba(0, 0, 0, 0.125);
   border-color: #f3969a;
}

.jumbotron {
   border-style: solid;
   padding: 1.5rem 1rem 1rem 1rem;
   margin-bottom: 1rem;
   background-color: #f7f7f9;
   border-radius: 0.6rem;
}
</style>

</head>
<body>
   <div class="container-fluid">
      <div class="row">
         <form class="col-sm-8 offset-sm-2">
            <fieldset>
               <div>
                  <div class="row">
                     <div class="col-sm-4">
                        <img src="img/Contest_AI.png" width="100%"
                           height="350">
                     </div>
                     <div class="col-sm-8">
                        <div class="card" id="card">
                           <div class="card-body">
                              <!-- 공모전 제목 -->
                              <h4 class="card-title">
                                 <b>대한민국 바로 알리기 AI 공모전</b>
                              </h4>

                              <hr class="my-4">
                              <p class="card-text">
                              <table>
                                 <tr>
                                    <th>주최</th>
                                    <td>과학기술정보통신부</td>
                                 </tr>

                                 <tr>
                                    <th>접수기간</th>
                                    <td>2020.10.22 ~ 2020.11.10</td>
                                 </tr>
                                 <tr>
                                    <th>참가대상</th>
                                    <td>고등학생,대학생,일반인,제한없음,중학생,초등학생이하</td>
                                 </tr>
                                 <tr>
                                    <th>응모분야</th>
                                    <td>IT/웹/모바일/게임, 과학/공학/기술, 기획/아이디어</td>
                                 </tr>
                                 <tr>
                                    <th>시상규모</th>
                                    <td>5백만원~1천만원</td>
                                 </tr>
                                 <tr>
                                    <th>1등시상금</th>
                                    <td>300만원</td>
                                 </tr>

                                 <tr>
                                    <th>문의(전화)</th>
                                    <td>02-757-8585</td>
                                 </tr>

                                 <tr>
                                    <th>이메일</th>
                                    <td>contest@ictcoc.com</td>
                                 </tr>
                                 <tr>
                                    <th>홈페이지</th>
                                    <td><a
                                       href="http://www.ictcoc.kr/03_pro_n/pro01_view.asp?idx=55">http://www.ictcoc.kr/03_pro_n/pro01_view.asp?idx=55</a></td>
                                 </tr>
                              </table>

                           </div>
                        </div>
                     </div>

                  </div>
                  <br> <br>
                  <div class="row">
                     <div class="col-sm-12">


                        <b>공모요강</b>
                        <hr class="my-4">
                        <br>

                        <textarea class="form-control" rows="45" id="reply_text"
                           readonly>
대한민국 바로 알리기 AI 공모전

★ 왜 세계 속에 대한민국을 바로 알려야 할까요? 참가 신청 전에 반드시 알아봅시다(매우 중요!!!))
※ 21세기 이순신 오류시정 프로젝트_반크 ( http://korea.prkorea.com/kor/main.jsp )
※ 반크의 꿈 ( https://www.youtube.com/watch?v=E9m2wVSBDC4 ) 

■ 주제 : 해외 온라인 상 대한민국 관련 정보 표기 오류 검색을 위한 인공지능 기반의 알고리즘 및 앱∙웹 개발
- 대한민국 관련 정보 표기 오류를 검색할 수 있는 알고리즘(인터넷, 스마트모바일 등에서 영상, 이미지, 텍스트 등의 대한민국 정보 표기 오류 관련 데이터 학습) 및 앱∙웹 개발
※ (대한민국 주요정보 해외 오류 사례) 대표적으로 동해(sea of japan), 독도(Takesima 또는 Liancourt Rocks), 일본군 ‘위안부’ 문제(comfort woman), 중국의 속국(a part of china) 등

■ 참가대상: 개발자, 학생 등 해당 주제에 관심 있는 팀 모두 신청 가능
※ 팀(3~4명)으로 지원(개인 참가 불가)

■ 참가방법: https://forms.gle/QSLVc9v53ffZY7Vh8 (링크접속)
- 신청 양식 작성 → 서류심사 → 본선 참가팀 선정

■ 참가신청기간: 2020.10.22.(목) ~ 11.10.(화) 18:00

■ 서류심사 결과 발표 : 2020.11.12.(목)

※ 개별 통보 예정

■ 본선일정
- 개발 진행 및 결과 제출: 2020.11.12.(목) ~ 11.29.(일)
- 본선심사: 2020.12.1.(화)
- 시상 및 수상자 간담회: 2020.12.3.(목)
※ 발표 및 시상 장소: ICT콤플렉스(서울 마포구 마포대로 122, 프론트원 6층)

■ 시상 (총 상금 9,000,000원)
- 최우수상(정보통신산업진흥원장상) 1팀 : 상장 및 상금(300만원)
- 우수상(정보통신산업진흥원장상 2팀) : 상장 및 상금(각 200만원)
- 장려상(정보통신산업진흥원장상 2팀) : 상장 및 상금(각 100만원)
- 반크(VANK) 특별상 1팀 : 상장

■ 문의
- ICT콤플렉스 사무국(02-6953-0536~7, ictcoc@kfict.or.kr)
※ http://www.ictcoc.kr/
※ ICT콕 인스타그램 https://www.instagram.com/ictcoc/ 
※ ICT콕 페이스북 https://www.facebook.com/ictcoc/ 
ICT CoC(ICT complex of creative developer)은 혁신성장청년인재, SW개발자, 예비창업자 등을 대상으로 기술개발 및 창업 역량 향상을 위한 다양한 지원을 실시하고 있습니다. http://www.ictcoc.kr 
      </textarea>

                        <br>

                        <div class="jumbotron">
                           <p>본 공모전의 내용은 주최사의 기획에 따라 변경될 수 있습니다. 주최사의 공모요강을 꼭 확인하시기
                              바랍니다.</p>
                        </div>

                        <div class="text-center">
                        <a href="http://www.ictcoc.kr/03_pro_n/pro01_view.asp?idx=55">
                           <button type="button" class="btn btn-primary btn-lg">신청</button>
                        </a>
                           <button type="button" class="btn btn-secondary btn-lg">뒤로</button>
                        </div>

                     </div>
                  </div>
               </div>

            </fieldset>
         </form>
      </div>
   </div>

</body>
</html>s