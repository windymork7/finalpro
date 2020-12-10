<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>공 지 사 항 글 쓰 기 폼</h1>
	<div align="center">
		<form action="noticeWriteAction.no" method="post" enctype="multipart/form-data">
		<fieldset>
			<table>
				<tr>
					<td>제목</td>
					<td><input type="text" name="notice_title"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="20" cols="20" name="notice_content"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputFile" class="text-muted">파일Upload</label> 
							<input type="file" class="form-control-file" id="exampleInputFile" name="q_file1" aria-describedby="fileHelp">
						</div>
					</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-secondary">등록하기</button>
			</fieldset>
		</form>
	</div>

</body>
</html>