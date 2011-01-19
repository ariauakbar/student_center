<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	String query = "INSERT INTO MsThread(title,content) VALUES('"+subject+"' , '"+content+"') ";
	st.executeUpdate(query);
	con.close();
	response.sendRedirect("forum.jsp");
	
%>
