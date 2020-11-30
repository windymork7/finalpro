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
<style>
    table, tr, td
    {
        border: 1px solid;
    }
</style>
<body>
<h1>게시판</h1>
<hr>
<form action="/qboardInsertProcess.bo" method="post">
    <table>
        <tr>
            <td>글제목</td>
            <td>
                <input type="text" id="q_title" name="q_title">
            </td>
            <td>작성자</td>
            <td>
                <input type="hidden" id="mem_no" name="mem_no" value="${sessionScope.userNo}">
                <input type="text" value="${sessionScope.userNick}">
            </td>
        </tr>
        <tr>
            <td>
                <textarea id="q_content" name="q_content">내용</textarea>
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit">글쓰기</button>
            </td>
            <td>
                <button type="reset">취소</button>
            </td>
        </tr>
    </table>

    <button type="button" onclick="location.href='/qboardListForm.bo'">리스트</button>
</form>
</body>
</html>