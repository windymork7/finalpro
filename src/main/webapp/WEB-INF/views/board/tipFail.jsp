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
            console.log("..",${updown})
            if (${updown} == 1) {
                console.log("ㅇㅇㅇ")
                alert("이미 추천을 한 게시글입니다.")
                history.back()
            }else
                alert("이미 신고를 한 게시글입니다.")
                history.back()
            });


    </script>
</head>
</html>