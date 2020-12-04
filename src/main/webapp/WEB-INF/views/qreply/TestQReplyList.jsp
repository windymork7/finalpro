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
    	<td>원글</td>
        <td>내용</td>
        <td>채택</td>
        <td>추천</td>
        <td>누적신고</td>
        <td>작성자</td>
        <td>작성일</td>
    </tr>
    <c:forEach var="qreply" items="${list}">
        <tr>
        	<td><a href="/qboardContent.bo?qboardNum=${qreply.q_no }">${qreply.q_title}</a></td>
            <td>${qreply.reply_content}</td>
            <td>${qreply.reply_pick}</td>
            <td>${qreply.reply_up}</td>
            <td>${qreply.reply_rpt_cnt}</td>
            <td>${qreply.mem_nick}</td>
            <td>${qreply.reply_date}</td>
        </tr>
    </c:forEach>
</table>
<c:choose>
    <c:when test="${sessionScope.userGrade ge 5}">
        <button type="button" onclick="location.href='/editBoardInsert.ed'">에디터 글쓰기</button>
    </c:when>
    <c:otherwise></c:otherwise>
</c:choose>

</body>
</html>