<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>
<%
  String answer1 = request.getParameter("radio");
  String answer2 = request.getParameter("radio2");
  String answer3 = request.getParameter("radio3");
  String answer4 = request.getParameter("radio4");
  String answer5 = request.getParameter("radio5");
  
  Integer counter = 5;
  Integer totalscore = 0;
  Integer totalsoal = 5;
  Integer benar = 0;
  Integer salah = 0;
  
 if(answer1 != null){
	
	if(!answer1.equals("Jakarta")){
		
		counter -= 1;
	}
	if(answer2 != null){
		
		if(!answer2.equals("Tiga")){
			
			counter -= 1;
		}
		if(answer3 != null){
			
			if(!answer3.equals("Indonesia")){
				
				counter -= 1;
			}
		}
		if(answer4 != null){
			
			if(!answer4.equals("Duabelas")){
				
				counter -= 1;
			}
		}
		if(answer5 != null){
			
			if(!answer5.equals("TujuhHri")){
				counter -= 1;
			}
		}
	}
	
	benar = counter;
	salah = totalsoal - counter;
	totalscore = benar * 20;
	
	out.print("Benar: "+ benar);
	out.print("<br/> Salah: "+ salah);
	out.print("<br/> TotalScore: "+ totalscore);
} 

%>
  
<%
 String ket;

  if(totalscore >= 85)
  {
	  ket ="Excellent";
  }
  else if(totalscore <85 && totalscore >= 75)
  {
	  ket ="Good";
  }
  else if(totalscore <75 && totalscore >= 65)
  {
	  ket="Average";
  }
  else
  {
	  ket="Poor";
  }
   
  out.print("<br/> Keterangan: "+ket);

%>

<%
  rs = st.executeQuery("select result, score from MsMember");
  if(rs.next())
  {
    st.executeUpdate("update MsMember set result = '"+ket+"', score = "+totalscore+"");
	con.close();
	
  }
  else
  {
    st.executeUpdate("insert into MsMember (result, score) values('"+ket+"',"+totalscore+")");
	con.close();
  } 
%>