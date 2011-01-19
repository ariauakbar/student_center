<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	rs = st.executeQuery("SELECT *FROM MsMember");
	rs.next();
	
	Integer materistat = rs.getInt("matericounter");

%>
<% if(materistat >= 1){ %>
<p><%= materistat %></p> times.
<%
	} else {
		out.print("Not access any page, yet.");
	}

%>

