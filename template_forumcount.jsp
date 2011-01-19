<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	Integer frmcount = (Integer) application.getAttribute("forumcount");
	
	if(frmcount == null){
		frmcount = 0;
	}
	
	application.setAttribute("forumcount", frmcount+1);
	
	Integer rsltCount = (Integer) (application.getAttribute("forumcount"));
	
	st.executeUpdate("update msmember set forumcounter = "+rsltCount+"");
	st.close();
	
%>
