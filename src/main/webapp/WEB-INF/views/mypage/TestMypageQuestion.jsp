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
        <td>카테고리</td>
        <td>작은카테고리</td>
        <td>작성일</td>


    </tr>
    <c:forEach var="myquestion" items="${list}">
        <tr>
            <td>${myquestion.rownum}</td>
            <td><a href="qboardContent.bo?qboardNum=${myquestion.q_no}&subCa=${myquestion.sub_ca_no}">${myquestion.q_title}</a></td>
            <td>${myquestion.q_date}</td>
            <td>${myquestion.sub_ca_name}</td>
            <td>${myquestion.book_ca_name}</td>
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