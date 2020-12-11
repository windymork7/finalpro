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
<form action="bookCaNameUpdateAction.ad">
	<input type="hidden" name="book_ca_no" value="${categoryVO.book_ca_no}">
   <input type="text" name="book_ca_name" value="${categoryVO.book_ca_name}">
   <input type="submit" value="수정">
</form>
   
</body>
</html>