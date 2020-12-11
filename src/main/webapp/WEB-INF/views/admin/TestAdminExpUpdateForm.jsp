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
<form action="adminExpUpdateAction.ad">
    관리자의 명성은 -> <input type="text" value="${admin.mem_exp}" name="mem_exp" size=5>
    <input type="submit" value="수정">
 </form>
</body>
</html>