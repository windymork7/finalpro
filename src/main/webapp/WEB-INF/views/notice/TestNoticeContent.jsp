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
<h1>공지사항</h1>
<hr>
<form action="" method="post">
    <table>
        <tr>
            <td>글제목</td>
            <td>작성자</td>
        </tr>
        <tr>
            <td>${noticeVO.notice_title}</td>
            <td>관리자</td>
        </tr>
        <tr>
        	<td>글내용</td>
        </tr>
        <tr>
            <td>${noticeVO.notice_content}</td>
        </tr>
    </table>

    <button type="button" onclick="location.href='/noticeListForm.no'">리스트</button>
</form>

</body>
</html>