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

<h1>상세보기</h1>
<table width="550" border="1">
	<tr>
		<th>SEQ</th>
		<td><c:out value="${board.seq }"/></td>
	</tr>
	<tr>
		<th>TITLE</th>
		<td><c:out value="${board.title }"/></td>
	</tr>
	<tr>
		<th>WRITER</th>
		<td><c:out value="${board.writer }"/></td>
	</tr>
	<tr>
		<th>REGDATE</th>
		<td><c:out value="${board.regDate }"/></td>
	</tr>
	<tr>
		<th>CNT</th>
		<td><c:out value="${board.cnt }"/></td>
	</tr>
	<tr>
		<th>CONTENT</th>
		<td><c:out value="${board.content }"/></td>
	</tr>
</table>
<a href="list">목록</a> |
<a href="modify?seq=${board.seq }">수정</a> |
<a href="delete?seq=${board.seq }">삭제</a>

</body>
</html>