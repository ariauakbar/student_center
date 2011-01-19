<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	rs = st.executeQuery("SELECT *FROM MsMember");
	rs.next();
	
	Integer forumstat = rs.getInt("forumcounter");

%>
<% if(forumstat >= 1){ %>
<p><%= forumstat %></p> times.
<%
	} else {
		out.print("Not access any page, yet.");
	}

%>

