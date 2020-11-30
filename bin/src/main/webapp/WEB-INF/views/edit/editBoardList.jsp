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
<table>
    <tr>
        <td>번호</td>
        <td>제목</td>
        <td>작성자</td>
    </tr>
    <c:forEach var="edit" items="${list}">
        <tr>
            <td>${edit.edit_no}</td>
            <td><a href="editBoardContent.ed?editBoardNum=${edit.edit_no}">${edit.edit_title}</a></td>
            <td>${edit.mem_nick}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>