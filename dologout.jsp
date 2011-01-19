<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
	session.removeAttribute("User");
	//session.invalidate();
	response.sendRedirect("index.jsp");
%>