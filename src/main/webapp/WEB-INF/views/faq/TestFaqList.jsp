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
		<c:forEach var="faq" items="${list}">
			<tr>
				<td>${faq.faq_no}</td>
				<td><a href="faqContent.fa?faq_no=${faq.faq_no}">${faq.faq_title}</a></td>
				<td>${faq.faq_date}</td>
				<td>관리자</td>
				<td><a href="faqBoardDelete.fa?faq_no=${faq.faq_no}">삭제</a></td>
				<td><a href="faqBoardUpdateForm.fa?faq_no=${faq.faq_no}">수정${faq.faq_no}</a></td>
				</tr>
    </c:forEach>
	<tr>
		<td><button type="button"
					onclick="location.href='/faqBoardInsertForm.fa'">글 쓰 기</button></td>
	</tr>
</table>
</body>
</html>