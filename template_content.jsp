<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	Integer id = Integer.parseInt(request.getParameter("id"));
	
 	rs = st.executeQuery("select * from MsThread where id ="+id+"");
	rs.next();
	
	String title = rs.getString("title");
	String content = rs.getString("content");

%>
<br><%=title%><br/>
<br><%=content%><br/>

