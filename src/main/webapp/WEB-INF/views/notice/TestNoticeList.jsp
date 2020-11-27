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
        <td>작성일</td>
        <%-- <td>조회수</td> --%>
        <td>작성자</td>
    </tr>
    <c:forEach var="noticeboard" items="${list}">
        <tr>
            <td>${noticeboard.notice_no}</td>
            <td><a href="noticeboardContent.bo?noticeboardNo=${noticeboard.notice_no}">${noticeboard.notice_title}</a></td>
            <td>${noticeboard.notice_date}</td>
            <td>관리자</td>
            <%-- <td>${noticeboard.q_rpt_cnt}</td>   조회수 넣는다면 ?--%>
        </tr>
    </c:forEach>
</table>
</body>
</html>