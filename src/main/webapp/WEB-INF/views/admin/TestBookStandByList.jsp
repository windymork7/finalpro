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
        <td>큰카테고리</td>
        <td>작은카테고리</td>
        <td>더작은카테고리</td>
        <td>작성자</td>
        <td>제목</td>
        <td>작성일</td>
        <td>추천수</td>
        <td>신고수</td>
        <td>어드민상태</td>
    </tr>
    <c:forEach var="book" items="${list}">
        <tr>
            <td>${book.rownum}</td>
            <td>${book.ca_name}</td>
            <td>${book.sub_ca_name }</td>
            <td>${book.book_ca_name }</td>
            <td>${book.mem_nick }</td>
            <td><a href="/qboardContent.bo?qboardNum=${book.q_no}&subCa=${book.sub_ca_no}">${book.q_title}</a></td>
            <td>${book.q_date }</td>
            <td>${book.q_up }</td>
            <td>${book.q_rpt_cnt }</td>
            <td>${book.q_admin_state }</td>
            <td><a href="/bookAddAction.ad?qNo=${book.q_no}&caNo=${book.ca_no}&subCa=${book.sub_ca_no}&bookCaNo=${book.book_ca_no}">책으로이동</a></td>
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