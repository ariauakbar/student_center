<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	Integer materi_id = Integer.parseInt(request.getParameter("id"));
	
	rs = st.executeQuery("SELECT *FROM MsTopic where materi_id = "+materi_id+"");
	while(rs.next()){
	
	String topic = rs.getString("topic");

%>

<li># <%= topic  %></li>

<%
	} con.close();
%>