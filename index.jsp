<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
	"http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<title>materi</title>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<jsp:include page="template_js.jsp" flush="true"/>
	<%
		String msg = request.getParameter("err");
	%>
</head>
<body id="materi" onload="">
	<div id="header">
		<div class="logo">
			Student Center.
		</div>
	</div>
	<div id="container">
		<div id="main_container">
			<div class="content">
					<div class="loginform">
						<%
							if(msg != null){
								
								out.print("<center><p>"+msg+"</p></center>");
							}
						%>
						<form action="dologin.jsp" method="post" accept-charset="utf-8">
							<input class="login" type="text" name="username" value="Username" id="username">
							<input class="login" type="password" name="password" value="Password" id="password">
							<p class="submit"><input class="login" type="submit" value="Login Now"></p>
						</form>
					</div>	
			</div>
		</div>
	</div>
</body>
</html>