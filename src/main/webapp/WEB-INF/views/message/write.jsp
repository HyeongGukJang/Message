<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<head>
<title>list</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value="/resources/assets/css/main.css" />"
	rel="stylesheet">
<script>
	window.onload = function() {
		var demoName = document.getElementById("demo-name");
		demoName.readOnly = true;
		if(demoName.value != null) {
			demoName.value = "<%=(String) session.getAttribute("name")%>";
		}

		var parse = window.location.href;
		var recvId = document.getElementById("recv_id");
		if (parse.indexOf("?") > -1) {
			var splits = parse.split("?");
			var gets = splits[1];
			var para = gets.split("&");
			var len = para.length;
			for (var i = 0; i < len; i++) {
				var param = para[i].split("=");
				var address = param[1];
				console.log(address);
				recvId.value = address;
			}
		}
	}
</script>
</head>
<style>
td {
	border: 1px solid white;
	background-color: white; 
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
						<strong>Send Message</strong>
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
				<section>
					<div class="col-6 col-12-small" style="width: 700px">
						<h4>Enter Message</h4>
						<form action="write" method="POST">
							<input type="hidden" name="name" value="<%=(String) session.getAttribute("userId")%>" />
							<div class="col-2 col-12-small">
								<table border="">
								<tr>
									<td><label><strong>보낸 사람 :</strong></label></td>
									<td><input type="text" name="send_id" value="<%=(String) session.getAttribute("userId")%>" readonly/></<td> 
								</tr>
								<tr>
									<td><label><strong>받는 사람 :</strong></label></td>
									<td><input type="text" name="recv_id" value="${vo.id}" readonly/></td>
								</tr>
								</table>
							</div>
							<div>
								<hr>
							</div>
							<textarea name="content" placeholder="Enter your message" rows="6" style="margin-bottom: 20px"></textarea>
							<div class="col-12">
								<ul class="actions">
									<li><input type="submit" value="Send Message"
										class="primary" /></li>
									<li><input type="reset" value="Reset" /></li>
								</ul>
							</div>
						</form>
					</div>
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