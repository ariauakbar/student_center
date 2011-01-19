<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	Statement stm = con.createStatement(1004, 1008);
	rs = stm.executeQuery("select * from MsThread");
	while(rs.next()) {
	
	String title = rs.getString("title");
	String konten = rs.getString("content");
	Integer id = rs.getInt("id");
	
	
%>

<ul>
<a href="show_thread.jsp?id=<%=id%>"><p><li># &nbsp;<%= title%></li></p></a>
</ul>
<%} con.close();%>
