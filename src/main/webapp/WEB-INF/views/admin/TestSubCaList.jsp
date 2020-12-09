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

    <c:forEach var="subCa" items="${list}">
    	<a href="bookCaList.ad?subCa=${subCa.sub_ca_no}">${subCa.sub_ca_name}</a>
    	<br>
    </c:forEach>
</body>
</html>