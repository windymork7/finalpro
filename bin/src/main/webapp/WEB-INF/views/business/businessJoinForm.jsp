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
<form action="/businessJoinProcess.bi" method="post">
    <table>
        <tr>
            <td>사업자 등록번호</td>
            <td>
                <input type="text" id="biz_no" name="biz_no">
            </td>
        </tr>
        <tr>
            <td>상호명</td>
            <td>
                <input type="text" id="biz_trademark" name="biz_trademark">
            </td>
        </tr>
        <tr>
            <td>대표자이름</td>
            <td>
                <input type="text" id="biz_name" name="biz_name">
            </td>
        </tr>
        <tr>
            <td>대표자 전화번호</td>
            <td>
                <input type="text" id="biz_tel" name="biz_tel">
            </td>
        </tr>
        <tr>
            <td>이메일</td>
            <td>
                <input type="text" id="biz_email" name="biz_email">
            </td>
        </tr>
        <tr>
            <td>회사주소</td>
            <td>
                <input type="text" id="biz_address" name="biz_address">
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
