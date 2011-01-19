<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	if (username.equals("") || username==null)
		response.sendRedirect("index.jsp?err=Username harus diisi");
	else if (password.equals("") || password==null)
		response.sendRedirect("index.jsp?err=Password harus diisi");
	else{
		rs = st.executeQuery("Select * from MsMember where username='"+username+"' and password='"+password+"'");
		if(rs.next()){
			
			session.setAttribute("usersession",username);
			response.sendRedirect("home.jsp");
			//pindah halaman
		}
		else{
			response.sendRedirect("index.jsp?err=Sorry, your account not found.");
		}
	}


%>