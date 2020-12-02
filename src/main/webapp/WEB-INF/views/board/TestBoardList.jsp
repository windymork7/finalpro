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
<script language="JavaScript">
    function popup(){
        var url="/qboardDownPopup.bo";
        var name="TestRptPopup";
        var option="width=500,height=500,left=100,top=50,location=no"
        window.open(url,name,option);
    }
</script>
<body>
<table>
    <tr>
        <td>번호</td>
        <td>제목</td>
        <td>긴급상태</td>
        <td>추천</td>
        <td>누적신고</td>
        <td>작성일</td>
        <td>작성자</td>
        <td>스크랩</td>
    </tr>
    <c:forEach var="qboard" items="${list}">
        <tr>
            <td>${qboard.q_no}</td>
            <td><a href="qboardContent.bo?qboardNum=${qboard.q_no}">${qboard.q_title}</a></td>
            <td>${qboard.q_sos}</td>
            <td><a href="qboardUpCheck.bo?qboardNum=${qboard.q_no}">${qboard.q_up}</a></td>
            <td><input onclick="popup()" type="button" value="${qboard.q_rpt_cnt}"></td>
            <td>${qboard.q_date}</td>
            <td>${qboard.mem_nick}</td>
            <td><a href="myscrapCheck.my?qboardNum=${qboard.q_no}">스크랩하기</a></td>
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