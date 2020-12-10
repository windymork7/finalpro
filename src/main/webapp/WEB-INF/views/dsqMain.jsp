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
    <h1>${sessionScope.businessNick}</h1>
    <h1>Main 페이지  ${sessionScope.userNo}</h1>
    ${sessionScope.userNo} <br>
    <button type="button" onclick="location.href='/loginForm.me'">로그인 페이지로 이동</button>
    <button type="button" onclick="location.href='/noticeListForm.no'">공지사항</button>
    <button type="button" onclick="location.href='/qboardListForm.bo'">DSQ리스트</button>
    <button type="button" onclick="location.href='/qReplyList.re'">답글리스트</button>
    <button type="button" onclick="location.href='/faqListForm.fa'">FAQ</button>
    <button type="button" onclick="location.href='/bookSubCaList.bs'">스크랩북</button>
</body>
</html>
