<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
	"http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<title>materi</title>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen" title="no title" charset="utf-8">	
</head>
<body id="materi" onload="">
	<div id="header">
		<jsp:include page="template_navbar.jsp" flush="true"/>
	</div>
	<div id="container">
		<div id="main_container">
			<div class="content">
				<% if (session.getAttribute("usersession") != null) {%>
				Hello, <em><%= session.getAttribute("usersession")%></em>
				<% } %><a class="logout" href="dologout.jsp">(logout)</a>
				<div class="stat">	
				<div class="forumstat">
					<h3>Forum</h3>
					<jsp:include page="template_forumstat.jsp" flush="true"/>
				</div>
				<div class="forumstat">
					<h3>Materi</h3>
				<jsp:include page="template_materistat.jsp" flush="true"/>	
					</div>	
					<div class="quizstat">
					<h3>Quiz</h3>
				<jsp:include page="template_quizstat.jsp" flush="true"/>	
					</div>
					<div class="forumstat">
						<h3>Result</h3>
					<jsp:include page="template_finalstat.jsp" flush="true"/>
					</div>
					<div class="forumstat">
						<h3>Score</h3>
					<jsp:include page="template_scorestat.jsp" flush="true"/>
					</div>
						<div class="forumstat">
							<h3>Score</h3>
						<jsp:include page="template_scorestat.jsp" flush="true"/>
						</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>