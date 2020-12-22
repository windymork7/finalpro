<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <script>

        $(document).ready(function (){
            console.log("...",${check});
            if (${check} == 0) {
                alert("추천을 완료 했습니다.")
                window.location = document.referrer;
            }else if(${check} == 1){
                alert("이미 추천을 했습니다.")
                window.location = document.referrer;
            }else if(${check} == 2){
                alert("신고를 완료 했습니다.")
                window.location = document.referrer;
            }else if(${check} == 3){
                alert("이미 신고를 했습니다.")
                window.location = document.referrer;
            }});


    </script>
</head>
</html>