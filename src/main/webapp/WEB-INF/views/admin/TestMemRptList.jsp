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
        <td>이메일</td>
        <td>닉네임</td>
        <td>이름</td>
        <td>등급</td>
        <td>제재</td>
    </tr>
    <c:forEach var="memRpt" items="${list}">
        <tr>
            <td>${memRpt.rownum}</td>
            <td>${memRpt.mem_email}</td>
            <td>${memRpt.mem_nick}</td>
            <td>${memRpt.mem_name}</td>
            <td>${memRpt.grade_name}</td>
            <td><a href="memBlackAction.ad?memNo=${memRpt.mem_no}">제제</a></td>
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