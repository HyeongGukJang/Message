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

<h1>삭제</h1>
<h3><c:out value="${board.seq }" />번 글을 정말로 삭제 하겠습니까?</h3>
<form action="delete" method="post">
	<input type="hidden" name="seq" value="${board.seq }" />
	<input type="submit" value="정말로 삭제하기" />
</form>

</body>
</html>