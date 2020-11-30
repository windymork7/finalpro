<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 공 지 사 항 글 수 정 폼 </h1>
<div align="center">
<form action="noticeUpdate.no">
<table>
	<tr>
		<td>
			제목 
		</td>
		<td>
			<input type="hidden" name="notice_no" value="${noticeVO.notice_no}">
			<input type="text"name="notice_title" value="${noticeVO.notice_title }" >
		</td>
	</tr>
	<tr>
		<td>
			내용
		</td>
		<td>
			<textarea rows="20" cols="20" name="notice_content"> ${noticeVO.notice_content }</textarea>
		</td>
	</tr>
</table>
<input type="submit" value="글쓰기">
</form>
</div>

</body>
</html>