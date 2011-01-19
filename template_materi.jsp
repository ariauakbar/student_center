<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	rs = st.executeQuery("SELECT *FROM MsMateri");
	while(rs.next()){
	
	String name = rs.getString("nama");
	Integer id = rs.getInt("id");

%>
<ul>
<a href="show_materi.jsp?id=<%=id%>"><li># <%= name  %></li></a>
</ul>
<%

	} con.close();
%>