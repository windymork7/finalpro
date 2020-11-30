<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> 공 지 사 항 글 쓰 기 폼 </h1>
<div align="center">
<form action="noticeWriteAction.no">
<table>
	<tr>
		<td>
			제목
		</td>
		<td>
			<input type="text" name="notice_title">
		</td>
	</tr>
	<tr>
		<td>
			내용
		</td>
		<td>
			<textarea rows="20" cols="20" name="notice_content"></textarea>
		</td>
	</tr>
</table>
<input type="submit" value="글쓰기">
</form>
</div>

</body>
</html>