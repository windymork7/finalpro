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
	h2 {
		text-align: center;
	}
	table {
		width: 100%;
	}
	#outter {
		display: block;
		width: 60%;
		margin: auto;
	}
	a {
		text-decoration: none;
	}
</style>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="faqListForm.fa?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
<body>
<div id="outter">
	<div style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
					<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
					<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
					<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
					<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
	</div> <!-- 옵션선택 끝 -->
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
	</table>
		<button type="button"
					onclick="location.href='/faqBoardInsertForm.fa'">글 쓰 기</button>

	<input type="button" value="글쓰기" style="float: right;" onclick="location.href='/write'"><br>

	<div style="display: block; text-align: center;">
		<c:if test="${paging.startPage != 1 }">
			<a href="/faqListForm.fa?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/faqListForm.fa?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/faqListForm.fa?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
</div>
</body>
</html>