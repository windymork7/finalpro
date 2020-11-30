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
<form action="loginProcess.me" method="post">
    <table>
        <tr>
            <td>이메일</td>
            <td>
                <input type="text" name="MEM_EMAIL">
            </td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td>
                <input type="text" name="MEM_PW">
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit">로그인</button>
            </td>
            <td>
                <button type="button" onclick="location.href='/joinFormWay.me'">회원가입</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
