<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	rs = st.executeQuery("SELECT *FROM MsMember");
	rs.next();
	
	Integer score = rs.getInt("score");

%>
<% if(score >= 1){ %>
<p><%= score %></p>
<%
	} else {
		out.print("Not access any quiz, yet.");
	}

%>

