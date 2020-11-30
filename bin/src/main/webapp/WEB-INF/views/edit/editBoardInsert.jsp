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
<form action="/editBoardInsertProcess.ed" method="post">
    <table>
        <tr>
            <td>글제목</td>
            <td>
                <input type="text" id="edit_title" name="edit_title">
            </td>
            <td>작성자</td>
            <td>
                <input type="hidden" id="mem_no" name="mem_no" value="${sessionScope.userNo}">
                <input type="text" value="${sessionScope.userNick}">
            </td>
        </tr>
        <tr>
            <td>
                <textarea id="edit_content" name="edit_content"></textarea>
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
</form>
</body>
</html>
