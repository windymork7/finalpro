<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        for(int i=0; i<)
        var chk_radio = document.getElementsByName('service_type');

        var sel_type = null;

        for (var i = 0; i < chk_radio.length; i++) {

            if (chk_radio[i].checked == true) {

                sel_type = chk_radio[i].value;

            }

        }

        if (sel_type == null) {
            alert("서비스유형을 선택하세요.");
            return false;
        }

    </script>
</head>
<body>
<form action="surveyCountUp.su">
    <c:set var="a" value="0"/>
    <c:set var="b" value="0"/>

    <c:forEach begin="${b}" var="qlist" items="${qlist}">
        ${qlist.survey_q_content}<br>
        <c:forEach var="rlist" items="${rlist}">
            <c:if test="${rlist.survey_q_no==b+1}">
                <input type="radio" name="survey_q_no" value="${rlist.survey_r_no}">${rlist.survey_r_content}<br>
            </c:if>
        </c:forEach>
        <c:set var="b" value="${b + 1}"/>
        <br><br>
    </c:forEach>
    <input type="submit" value="전송">

</form>
</body>
</html>