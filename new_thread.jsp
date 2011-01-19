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
  <div align="right" id="main_container">	
	<div class="content">
	<form id="form1" name="form1" method="post" action="template_newthread.jsp">
        <label>
      <div align="left">
        Subject 
          <input class="login" name="subject" type="text" id="subject" size="50" />
        <p>Content
          <br>
          </br>
           <textarea name="content" id="content" cols="10" rows="10"></textarea>       
          </p>
        <p align="center">
          <label>
          <input type="submit" name="submit" id="submit" value="Submit">
          </label>
        </p>
      </div>
	</label></form>
		</div>
		</div>
</div>
</body>
</html>