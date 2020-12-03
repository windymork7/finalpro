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
        var url="/MypageUpdate.my";
        var name="TestMypageUpdatePopup";
        var option="width=500,height=500,left=100,top=50,location=no"
        window.open(url,name,option);
    }
</script>
<body>
<form action="/mypageUpdateAction.my">
 <input type="hidden" name="mem_no" value="${mem.mem_no}">
<table>
    <tr>
        <td>이메일</td>
        <td>${mem.mem_email}</td>
    </tr>
    <tr>
        <td>이름</td>
        <td><input type="text" name="mem_name" value="${mem.mem_name}"></td>
    </tr>
    <tr>
        <td>닉네임</td>
        <td><input type="text" name="mem_nick" value="${mem.mem_nick}"></td>
    </tr>
    <tr>
        <td>명성</td>
        <td>${mem.mem_exp}</td>
    </tr>
    <tr>
        <td>등급</td>
        <td>${mem.grade_name}</td>
    </tr>
    <tr>
        <td>번호</td>
        <td><input type="text" name="mem_tel" value="${mem.mem_tel}"></td>
    </tr>
    <tr>
        <td>가입날짜</td>
        <td>${mem.mem_date}</td>
    </tr>
    <tr>
        <td align="center" colspan="2"><input type="submit" value="수정"></td>
    </tr>
</table>
</form>
</body>
</html>