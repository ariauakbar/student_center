<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
	"http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<title>materi</title>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<jsp:include page="template_js.jsp" flush="true"/>	
</head>
<body id="materi" onload="">
	<div id="header">
		<jsp:include page="template_navbar.jsp" flush="true"/>
	</div>
	<div id="container">
		<div id="main_container">
			<div class="content">	
		<jsp:include page="template_topic.jsp" flush="true"/>
			</div>
		</div>
	</div>
</body>
</html>