<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>

<html>

<head>
    <title>detail</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link href="<c:url value="/resources/assets/css/main.css" />"
	rel="stylesheet">
</head>
<style>
table{
	width: 800px;
}
@media screen and (max-width: 800px) {
  	table {
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
                    <h3><strong>Detail Message</strong></h3>
                    <ul class="icons">
                        <li><a href="https://twitter.com/" class="icon brands fa-twitter"><span
                                    class="label">Twitter</span></a></li>
                        <li><a href="https://www.facebook.com/" class="icon brands fa-facebook-f"><span
                                    class="label">Facebook</span></a></li>
                        <li><a href="https://www.snapchat.com/" class="icon brands fa-snapchat-ghost"><span
                                    class="label">Snapchat</span></a></li>
                        <li><a href="https://www.instagram.com/" class="icon brands fa-instagram"><span
                                    class="label">Instagram</span></a></li>
                        <li><a href="https://medium.com/" class="icon brands fa-medium-m"><span
                                    class="label">Medium</span></a></li>
                    </ul>
                </header>

                <section>
					<header class="main">
						<h4>
							<strong>쪽지 상세확인</strong>
						</h4>
					</header>
					
						<div>		
							<table class="alt2" >
								<tr>
									<th>no</th>
									<td>${recv_message.seq }</td>
								
									<th style="width: 200px;">보낸사람</th>
									<td style="width: 700px">${recv_message.send_id }</td>
								</tr>
								<tr>
									<th style="width: 200px">받은날짜</th>
									<td style="width: 400px">${recv_message.send_date}</td>
								</tr>
			
								<tr>
									<td colspan="4" >${recv_message.content }</td>
								</tr>
							</table>
						</div>
				</section>
				
                <div id="btn">
                    <ul class="actions">
                        <li><a href="recv?recv_id=<%=(String) session.getAttribute("userId")%>" class="button primary">BACK</a></li>
                        <li><a href="recv_delete?seq=${recv_message.seq }" class="button primary">DEL</a></li>
                    </ul>
                </div>
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
                <!-- Section -->


                <!-- Section -->


                <!-- Footer -->
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