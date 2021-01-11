<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML>
<html>

<head>
<title>list</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link href="<c:url value="/resources/assets/css/main.css" />"
	rel="stylesheet">
</head>
<style>
ul#paging {
	list-style: none;
	float: left;
	padding: 6px;
}

div#bottom {
	margin-left: 400px;
}
.alt2{
	width: 1200px;
}
hr {
	margin-top: 0px
}

@media screen and (max-width: 720px) {
  	div#bottom {
    	margin-left: 0px;
  	}
}

@media screen and (max-width: 1200px) {
  	.alt2 {
    	width: 100%
  	}
}

</style> 

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<h3>
						<strong>Send Message / list</strong>
					</h3>
					<ul class="icons">
						<li><a href="https://twitter.com/"
							class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="https://www.facebook.com/"
							class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="https://www.snapchat.com/"
							class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
						<li><a href="https://www.instagram.com/"
							class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="https://medium.com/"
							class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
					</ul>
				</header>

				<!-- Content -->
				<section>
					<div class="row">
						<div class="col-2 col-12-small">
							<strong>쪽지쓰기</strong>
							<hr>
							<table class="alt">
								<thead>
									<tr>
										<th>친구목록</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="row" items="${list }">
											<tr>
												<td><a href="write?id=${row.id}"><c:out value="${row.id}" /></a></td>
											</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<div class="table-wrapper">
							<strong>보낸편지함</strong>
							<hr>
							<table class="alt2">
								<thead>
									<tr>
										<th>no</th>
										<th>받는사람</th>
										<th>내용</th>
										<th>보낸날짜</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="mrow" items="${Mlist }">
											<tr>
												<td style="width: 100px">${mrow.seq}</td>
												<td style="width: 150px">${mrow.recv_id}</td>
												<td style="width: 500px"><a href="send_detail?seq=${mrow.seq }">${mrow.content}</a></td>
												<td style="width: 200px">${mrow.send_date}</td>
											</tr>									
									</c:forEach>
								</tbody>
							</table>
							
							<div id="bottom">
								<ul class="pagination" id="paging">
										<li><a href="list${pageMaker.makeQuery(pageMaker.startPage)}&send_id=<%=(String) session.getAttribute("userId")%>" class="button">Prev</a></li>
									
									<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
										<li><a href="list${pageMaker.makeQuery(idx)}&send_id=<%=(String) session.getAttribute("userId")%>" class="page active">${idx}</a></li>
									</c:forEach>
									
										<li><a href="list${pageMaker.makeQuery(pageMaker.endPage)}&send_id=<%=(String) session.getAttribute("userId")%>" class="button">Next</a></li>
								</ul>
							</div><!-- 페이징 -->
						</div><!-- 보낸편지함 -->
					</div><!-- Content -->
				</section>
			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Message</h2>
					</header>
					<ul>
						<ul>
							<li><a href="list?send_id=<%=(String) session.getAttribute("userId")%>">Send Message / list</a></li>
							<li><a href="recv?recv_id=<%=(String) session.getAttribute("userId")%>">recv Message</a></li>
						</ul>
					</ul>
				</nav>
				<footer id="footer">
					<p class="copyright">&copy; Untitled. All rights reserved.</p>
				</footer>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>