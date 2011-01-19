<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	rs = st.executeQuery("SELECT *FROM MsMember");
	rs.next();
	
	String quizstat = rs.getString("result");

%>
<% if(quizstat != null){ %>
<center><p><%= quizstat %></p></center>
<%
	} else {
		out.print("Not access any page, yet.");
	}

%>

