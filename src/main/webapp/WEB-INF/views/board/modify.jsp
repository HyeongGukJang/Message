<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>수정</h1>
<form action="modify" method="POST">
<input type="hidden" name="seq" value="${board.seq }">
<table>
	<tr>
		<th>제목</th>
		<td><input type="text" name="title" value="${board.title }"/></td>
	</tr>
	<tr>
		<th>글쓴이</th>
		<td><input type="text" name="writer" value="${board.writer }"/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea cols="50" rows="10" name="content"><c:out value="${board.content }"></c:out></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="수정하기">
		</td>
	</tr>
</table>
</form>

</body>
</html>