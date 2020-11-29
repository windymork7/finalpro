<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <h1>Main 페이지</h1>
    ${sessionScope.userNo} <br>
    <button type="button" onclick="location.href='/loginForm.me'">로그인 페이지로 이동</button>
    <button type="button" onclick="location.href='/noticeListForm.no'">공지사항</button>
</body>
</html>
