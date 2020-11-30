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
<form action="joinProcess.me" method="post">
    <table>
        <tr>
            <td>이메일</td>
            <td>
                <input type="email" id="mem_email" name="mem_email">
            </td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td>
                <input type="password" id="mem_pw" name="mem_pw">
            </td>
        </tr>
        <tr>
            <td>비밀번호 확인</td>
            <td>
                <input type="password" id="mem_pwco" name="mem_pwco">
            </td>
        </tr>
        <tr>
            <td>닉네임</td>
            <td>
                <input type="text" id="mem_nick" name="mem_nick">
            </td>
        </tr>
        <tr>
            <td>이름</td>
            <td>
                <input type="text" id="mem_name" name="mem_name">
            </td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td>
                <input type="tel" id="mem_tel" name="mem_tel">
            </td>
        </tr>
        <tr>
            <td>인증번호</td>
            <td>
                <input type="text" id="mem_telco" name="mem_telco">
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit">회원가입</button>
            </td>
            <td>
                <button type="reset">취소</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
