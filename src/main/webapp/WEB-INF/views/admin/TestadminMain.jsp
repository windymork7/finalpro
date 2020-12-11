<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>$Title$</title>
<link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

</head>
<body>
    <h1>${sessionScope.userNick}</h1>
    ${sessionScope.userNo} <br>
    <button type="button" onclick="location.href='/memRptList.ad'">신고10개넘은애들</button>
    <button type="button" onclick="location.href='/memBlackList.ad'">제재당한애들</button>
	<button type="button" onclick="location.href='/mypageInfo.my'">내정보</button>
	<button type="button" onclick="location.href='/qRptList.ad'">신고10개넘은게시물들</button>
	<button type="button" onclick="location.href='/bookStandByList.ad'">책승인대기리스트</button>
	<button type="button" onclick="location.href='/caManegementMain.ad'">카테고리관리</button>
	<button type="button" onclick="location.href='/adminExpUpdateForm.ad'">관리자명성수정</button>
</body>
</html>
