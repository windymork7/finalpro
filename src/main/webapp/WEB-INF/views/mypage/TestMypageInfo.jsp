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
    table, tr, td {
        border: 1px solid;
    }
</style>
<script language="JavaScript">
    function popup() {
        var url = "/qboardDownPopup.bo";
        var name = "TestRptPopup";
        var option = "width=500,height=500,left=100,top=50,location=no"
        window.open(url, name, option);
    }
</script>
<body>
<a href="mypageUpdateForm.my">회원정보수정</a>
<table>

    <tr>
        <td>이메일</td>
        <td>이름</td>
        <td>닉네임</td>
        <td>명성</td>
        <td>등급</td>
        <td>전화번호</td>
        <td>가입날짜</td>
        <td>비밀번호</td>
    </tr>
    <tr>
        <td>${mem.mem_email}</td>
        <%--            <td><a href="qboardContent.bo?qboardNum=${myscrap.q_no}">${myscrap.q_title}</a></td>--%>
        <td>${mem.mem_name}</td>
        <td>${mem.mem_nick}</td>
        <td>${mem.mem_exp}</td>
        <td>${mem.grade_name}</td>
        <td>${mem.mem_tel}</td>
        <td>${mem.mem_date}</td>
        <td>${mem.mem_pw}</td>
    </tr>
</table>

</body>
</html>