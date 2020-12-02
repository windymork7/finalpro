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
<form action="qboardDownAction">
<input type="radio" name="rpt_no" value="1">주제에 맞지 않음<br>
<input type="radio" name="rpt_no" value="2">욕설<br>
<input type="radio" name="rpt_no" value="3">광고<br>
<input type="radio" name="rpt_no" value="4">사칭<br>
    <button type="submit">전송</button>
</form>
</body>
</html>