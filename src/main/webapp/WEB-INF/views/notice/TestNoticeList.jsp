<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
table, tr, td {
	border: 1px solid;
}
</style>
<body>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성일</td>
			<%-- <td>조회수</td> --%>
			<td>작성자</td>
		</tr>
		<c:forEach var="notice" items="${list}">
			<tr>
				<td>${notice.notice_no}</td>
				<td><a href="noticeContent.no?noticeNo=${notice.notice_no}">${notice.notice_title}</a></td>
				<td>${notice.notice_date}</td>
				<td>관리자</td>
				<td><a href="noticeDelete.no?noticeNo=${notice.notice_no}">삭제</a></td>
				<td><a href="noticeUpdateForm.no?noticeNo=${notice.notice_no}">수정</a></td>
				</tr>
    </c:forEach>
	<tr>
		<td><button type="button"
					onclick="location.href='/noticeWriteForm.no'">글 쓰 기</button></td>
	</tr>
</table>
</body>
</html>