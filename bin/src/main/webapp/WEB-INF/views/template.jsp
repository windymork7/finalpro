<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <title>$Title$</title>
</head>
<style>
    body
    {
        margin: 0px;
        padding: 0px;
        height: 100%;
    }
    .header
    {
        background-color: darkseagreen;
        width: 100%;
        height: 15%;

    }

    .footer
    {
        background-color: burlywood;
        bottom: 0px;
        width: 100%;
        height: 200px;
        position: absolute;
    }
</style>
<body>
    <header class="header">
        <c:import url="header.jsp"/>
    </header>
    <section>
        <c:choose>
            <c:when test="${empty main}">
                <c:import url="section.jsp"/>
            </c:when>
            <c:otherwise>
                <c:import url="${main}.jsp"/>
            </c:otherwise>
        </c:choose>
    </section>
    <footer class="footer">
        <c:import url="footer.jsp"/>
    </footer>
</body>
</html>
