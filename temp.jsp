 if(answer1 != null)
  {
	  if(!answer1.equals("Jakarta"))
	  {
		  counter = counter - 1;
	  }
  }
      if(answer2 != null)
	  {
		  if(!answer2.equals("Empat"))
							 {
								 counter = counter - 1;
							 }
	  }
	  if(answer3 != null)
	  {
		  if(!answer3.equals("Indonesia"))
							 {
								 counter = counter - 1;
							 }
	  }
	  if(answer4 != null)
	  {
		  if(!answer4.equals("Duabelas"))
							{
								counter = counter - 1;
							}
	  }
	  if(answer5 !=null)
	  {
		  if(!answer5.equals("TujuhHri"))
							 {
								 counter = counter - 1;
							 }
							 
totalscore = counter == 5 ? counter * 0:counter * 20;
benar = counter == 0 ? 5 : totalsoal - counter;
Integer salah = totalsoal - benar;
out.print("benar = " + benar +"<br>");
out.print("salah = " + salah +"<br>");
out.print("totalscore:" + totalscore);				 
	 
	}