<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
  response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">

  <meta name="viewport"
        content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>survey</title>
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

  <script>
  $("#btn").on("click", function() {
  var radios = $(":radio:nth-child(odd)");
  for(var i = 0; i < radios.length; i++) {
  var $this = $(radios[i]);
  if(!$this.is(":checked")) { //동의함에 선택되어있지 않다면
  alert('반드시 동의해야 합니다.');
  $this.focus();
  return;
  }
  }
  });
  </script>

  출처: https://sub0709.tistory.com/23 [쓸데없는 코딩하기]
  <style>
    .card-header-gd {
      padding: 0.75rem 1.25rem;
      margin-bottom: 0;
      background-color: #f3969a;
      border-bottom: 1px solid rgba(0, 0, 0, 0.125);
      color: #fff;
    }
  </style>
</head>
<body>
<div class="container-fluid">
  <div class="row">

    <div class="col-sm-2">
      <div class="card mb-3">
        <h3 class="card-header">Card header</h3>
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <h6 class="card-subtitle text-muted">Support card subtitle</h6>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg"
             class="d-block user-select-none" width="100%"
             aria-label="Placeholder: Image cap" focusable="false" role="img"
             preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180"
             style="font-size: 1.125rem; text-anchor: middle">
          <rect width="100%" height="100%" fill="#868e96"></rect>
          <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
        </svg>
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the
            card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Cras justo odio</li>
          <li class="list-group-item">Dapibus ac facilisis in</li>
          <li class="list-group-item">Vestibulum at eros</li>
        </ul>
        <div class="card-body">
          <a href="#" class="card-link">Card link</a> <a href="#"
                                                         class="card-link">Another link</a>
        </div>
        <div class="card-footer text-muted">2 days ago</div>
      </div>
    </div>

    <div class="col-sm-7">
      <form action="/surveyCountUp.su" method="post">
        <fieldset>

          <div class="card mb-3">
            <div class="card-header">
              <b>설문조사</b>
            </div>
            <div class="card-body">
              <div>
                <h5 class="card-title">
                  D's Q 사이트 설문 조사를 통해 서비스를 더욱 개선하고자 합니다.<br> 각 설문항목에 자유롭게
                  답변해주시면 감사하겠습니다.
                </h5>

              </div>
              <br>
              <c:set var="b" value="0"/>

              <c:forEach begin="${b}" var="qlist" items="${qlist}">

              <div class="card bg-light">
                <div class="card-body">
                  <div class="d-flex w-100 justify-content-between">
                    <h4 class="card-title">${qlist.rn}. ${qlist.survey_q_content}.</h4>
                  </div>
                  <div class="card-text">
                    <div class="form-group">
                      <c:forEach var="rlist" items="${rlist}">
                        <c:if test="${rlist.survey_q_no==b+1}">
                      <div class="custom-control custom-radio">
                        <input type="radio" id="${rlist.survey_r_no}" name="survey_q_no${rlist.survey_q_no}"
                               class="custom-control-input" value="${rlist.survey_r_no}"> <label
                              class="custom-control-label" for="${rlist.survey_r_no}">${rlist.survey_r_content}</label>
                      </div>
                        </c:if>
                      </c:forEach>
                      <c:set var="b" value="${b + 1}"/>
                    </div>
                  </div>
                </div>
              </div>
              <br>
              </c:forEach>
              <input type="hidden" name="count" value="${b}">
              <button type="submit" class="btn btn-secondary btn-lg btn-block">제출하고
                결과 보러가기</button>
            </div>

          </div>
        </fieldset>
      </form>
    </div>

    <div class="col-sm-3">

      <div class="card border-secondary mb-3" id="guideline">
        <div class="card-header-gd">
          <b>공지사항</b>
        </div>
        <div class="card-body">
          <p>1. 설문조사 작성 후, 결과를 확인할 수 있습니다!</p>
          <p>2. 보기의 내용과 가장 가깝다고 생각하는 선택지에 체크해주세요!</p>
          <p>3. 설문조사는 한 계정당 1회만 참여할 수 있습니다!</p>
        </div>
      </div>
    </div>

  </div>
</div>
</body>
</html>