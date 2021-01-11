<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
label {
	display: inline-block;
	width: 80px;
}
</style>
</head>
<body>
<c:choose>
	<c:when test="${loginUser == null }">
		<h1>로그인 페이지</h1>
		<form action="login" method="POST">
			<label for="id">아이디</label>
			<input type="text" name="id" id="id" value="user01" /><br />
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="password" value="12345" /><br />
			<input type="submit" value="Login" />
		</form>
	</c:when> 
	<c:otherwise>
		<h3><c:out value="${loginUser.name}님 어서오세요!"></c:out></h3>
		<a href="logout">로그아웃</a>
		<a href="home">돌아가기</a>
		<!-- <a href="message/list">보낸쪽지함</a>
		<a href="message/recv">받는쪽지함</a>  -->
		<li><a href="message/list?send_id=${loginUser.id }">보낸 쪽지함</a></li>
		<li><a href="message/recv?recv_id=${loginUser.id }">받는 쪽지함</a></li>
	</c:otherwise>
</c:choose>
</body>
</html>