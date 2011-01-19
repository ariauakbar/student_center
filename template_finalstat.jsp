<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
	
	rs = st.executeQuery("SELECT *FROM MsMember");
	rs.next();
	
	String quizrslt = rs.getString("result");
	Integer forumrslt = rs.getInt("forumcounter");
	Integer materirslt = rs.getInt("matericounter");

%>

<%

	String materi = materirslt > 5 ? "tinggi" : "rendah";
	String quiz = quizrslt;
	String result = "";
	
	if(materi.equals("tinggi") && quiz.equals("Excellent")){ result = "Tinggi";}
	else if(materi.equals("rendah") && quiz.equals("Excellent")){ result = "Tinggi";}
	else if(materi.equals("tinggi") && quiz.equals("Good")){ result = "Tinggi";}
	else if(materi.equals("rendah") && quiz.equals("Good")){ result = "Sedang";}
	else if(materi.equals("tinggi") && quiz.equals("Average")) { result = "Sedang";}
	else if(materi.equals("rendah") && quiz.equals("Average")) { result = "Sedang";}
	else if(materi.equals("tinggi") && quiz.equals("Poor")) { result = "Rendah";}
	else if(materi.equals("rendah") && quiz.equals("Poor")) { result = "Rendah";}
	else { result = "cannot generate result";}
	
	out.print(result);
%>
