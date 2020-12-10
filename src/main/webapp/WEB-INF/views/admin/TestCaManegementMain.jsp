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

    <c:forEach var="ca" items="${list}">
    	<a href="/subCaList.ad?ca_no=${ca.ca_no}">${ca.ca_name}</a>
    	<br><br><br>
    </c:forEach>
</body>
</html>