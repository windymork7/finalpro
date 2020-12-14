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
<form action="#">
    <div>
        <c:set var="a" value="0"/>
        <c:set var="b" value="0"/>
        <c:set var="c" value="4"/>
        <c:forEach begin="${b}" var="sList" items="${subCaList}">
            <li class="nav-item active"><a class="nav-link pl-0" href="#">
                <span class="d-none d-sm-inline"><b>${sList.sub_ca_name}</b></span></a>
            </li>
            <c:forEach var="bList" items="${bookCaList}">
                <c:if test="${bList.sub_ca_no==b+1}">
                    <li class="nav-item"><a class="nav-link pl-0" href="#">
                        <span class="d-none d-sm-inline"><a href="scrapBookMain.bs?ca_no=${bList.ca_no}&subCa=${bList.sub_ca_no}&bookCa=${bList.book_ca_no}">${bList.book_ca_name}</a></span></a>
                    </li>
                </c:if>
            </c:forEach>

            <c:set var="b" value="${b + 1}"/>
        </c:forEach>
    </div>
</form>
</body>
</html>