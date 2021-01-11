<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>글쓰기</h1>
<form action="write" method="POST">
<table>
	<tr>
		<th>제목</th>
		<td><input type="text" name="title" value="게시판 글쓰기 연습"/></td>
	</tr>
	<tr>
		<th>글쓴이</th>
		<td><input type="text" name="writer" value="김길동"/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea cols="50" rows="10" name="content">게시판 글쓰기 연습입니다. 김수로왕의 아내는 허황옥입니다.</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="저장하기">
		</td>
	</tr>
</table>
</form>

</body>
</html>