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
<body>
<form action="" method="post">
    <table>
        <tr>
            <td>글제목</td>
            <td>
                <input type="text" id="q_title" name="q_title" value="${editMemberVO.edit_title}">
            </td>
            <td>작성자</td>
            <td>
                <input type="text" value="${editMemberVO.mem_nick}">
            </td>
        </tr>
        <tr>
            <td>
                <textarea id="q_content" name="q_content">${editMemberVO.edit_content}</textarea>
            </td>
        </tr>
    </table>

    <button type="button" onclick="location.href='/editBoardList.ed'">에디터 리스트</button>
</form>
</body>
</html>
