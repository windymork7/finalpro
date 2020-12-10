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
<table>
	<tr>
		<td>${qboardVO.book_ca_name}</td>
	</tr>
	<c:forEach var="bookCa" items="${list }">
		<tr>
			<td><a href="qboardContent.bo?qboardNum=${bookCa.q_no}&subCa=${bookCa.sub_ca_no}">${bookCa.q_title}</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>