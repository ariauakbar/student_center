<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	 Integer mtrcount = (Integer) application.getAttribute("matericount");
	
	if(mtrcount == null){
		mtrcount = 0;
	}
	
	application.setAttribute("matericount", mtrcount+1);
	
Integer rsltCount = (Integer) (application.getAttribute("matericount"));
	
	st.executeUpdate("update msmember set matericounter = "+rsltCount+"");
	st.close();
	
%>
