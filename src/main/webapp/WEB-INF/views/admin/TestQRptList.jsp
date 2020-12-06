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
        <td>번호 </td>
        <td>작성자</td>
        <td>제목</td>
        <td>카테고리</td>
    </tr>
    <c:forEach var="qRpt" items="${list}">
        <tr>
            <td>${qRpt.rownum}</td>
            <td>${qRpt.mem_nick}</td>
            <td><a href="/qboardContent.bo?qboardNum=${qRpt.q_no}&subCa=${qRpt.sub_ca_no}">${qRpt.q_title}</a></td>
            <td>${qRpt.sub_ca_name}</td>
            <td><a href="qDeleteAction.ad?qNo=${qRpt.q_no}">삭제</a></td>
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