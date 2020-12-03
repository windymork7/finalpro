<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NULL</title>
</head>
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
<body>

<h1>qboardNum : ${param.qboardNum}</h1>
<h1>subCa : ${param.subCa}</h1>

<div class="card">
    <div class="card-header">
        아이디1 (로고)
    </div>
    <div class="card-body">
        <div class="card-text d-flex justify-content-between align-items-center">
            <div class="btn-group-vertical">
                <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    20
                </button>
                <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="채택">
                    <i class="fa fa-check" aria-hidden="true"></i>
                </button>
                <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
                    <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                </button>
            </div>
            &nbsp;
            &nbsp;
            <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 안 했을 때(질문자에게 이렇게 보임)

인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
부족하지만 도움이 되셨기를 바라며 추가적인 문의가 필요하시면 답변 부탁드려요!
		</textarea>
        </div>
    </div>
</div>
<br>

<div class="card">
    <div class="card-header">
        아이디2 (로고)
    </div>
    <div class="card-body">
        <div class="card-text d-flex justify-content-between align-items-center">
            <div class="btn-group-vertical">
                <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    20
                </button>
                <button type="button" class="btn btn-primary" data-toggle="tooltip" data-placement="left" title="채택">
                    <i class="fa fa-check" aria-hidden="true"></i>
                </button>
                <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
                    <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                </button>
            </div>
            &nbsp;

            &nbsp;
            <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 했을 때(질문자, 사용자에게 모두 이렇게 보임)

질문하신 내용에 대하여 아래와 같이 답변 드립니다.
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
		</textarea>
        </div>
    </div>
</div>
<br>

<div class="card">
    <div class="card-header">
        아이디3 (로고)
    </div>
    <div class="card-body">
        <div class="card-text d-flex justify-content-between align-items-center">
            <div class="btn-group-vertical">
                <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="추천">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    13
                </button>
                <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="left" title="신고">
                    <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                </button>
            </div>
            &nbsp;
            &nbsp;
            <textarea class="form-control" rows="8" id="reply_text" readonly>
채택 받지 못한 답변

질문하신 내용에 대하여 아래와 같이 답변 드립니다.
인터넷만 켜도 렉 걸리는정도면 새로 맞추시는게 좋습니다.
요즘은 장비가 비싸지 않아서 저렴하게 맞출수 있고공부하는 모습을 보여주시면서 설득을 하셔야할것 같습니다.
독학을 고려하신다면 꼭 바꾸시는게 맞습니다
		</textarea>
        </div>
    </div>
</div>
</body>
</html>