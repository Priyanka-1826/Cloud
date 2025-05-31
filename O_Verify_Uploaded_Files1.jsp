<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>O_Verify_Uploaded_Files</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {
	color: #FF0000;
	font-size: 24px;
}
.style5 {color: #FFFFFF}
.style6 {font-size: 14px}
.style7 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="C_Login.jsp"><span>Cloud</span></a></li>
          <li class="active"><a href="O_Login.jsp"><span>Data Owner</span></a></li>
		  <li><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html"><span class="style2">Hidden cipher text policy attribute based encryption with fast decryption for personal health records</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <h2>Verify Uploaded Files</h2>
        <p>&nbsp;</p>
		<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
	 	
	 	String csmac=null, ownermac=null,ocon=null,csname=null;
		
			
				String omac="";

	 	try {
		
		    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	    	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
		
	 		String file = request.getParameter("pname");
	 		String on=(String)application.getAttribute("owner");

	 	    Statement st = connection.createStatement();

	 		String strQuery2 = "select * from cloudserver where fname='"+ file + "' and ownername='" + on + "'";
	 		ResultSet rs = st.executeQuery(strQuery2);
	 		if (rs.next()) {
			
	 			            csmac = rs.getString("mac");//mac
							
	 			           }
				
				
				else if (rs.next()!=true) {
								%>
<p>
<h2><%=file %>  is Not Found in the Cloud Server !!!</h2>
</p>
<%				
					 		               }
        
					String strQuery3 = "Select * FROM dataowner where fname='"+ file + "' and ownername='" + on + "' ";
					ResultSet rss = st.executeQuery(strQuery3);
					if (rss.next()) {
								
								ownermac = rss.getString("mac");//mac
								
								    }

							
					
							if(csmac.equals(ownermac) )
							{
							%>
<p>
<h1>Patient ::<%=file %>  Report is Secured !!!</h1>
</p>

<%
							}	
							else {
							
							
							String strQuery22 = "select * from dataowner where fname='"+ file + "' and ownername='" + on + "'";
							ResultSet rs1 = st.executeQuery(strQuery22);
							if (rs1.next()) {
				
							                  ocon = rs1.getString("ct");//content
				                               omac=rs1.getString("mac");
	 			
	 			                             }
				
				String strQuery222 = "update  cloudserver set ct='"+ocon+"', mac='" + omac + "' where fname='" + file + "'  and ownername='"+on+"'";
				connection.createStatement().executeUpdate(strQuery222);
				
			
				
				
				
							
								%>
<p>
<h2>Patient ::<%=file %> Report  is Attacked by Attacker !!! </h2>  <br />
<Br>
<h2> and Data Recoverd from Data Owner Server</h2>
</p>
<p>
  <%				
					 	}
						 						
		  	connection.close();

		  	}catch (Exception e) {
		  		out.println(e.getMessage());
		  		e.printStackTrace();
		  	} 
  %>
        <p>&nbsp;</p>
        <p><a href="O_Main.jsp">Back</a></p>
        <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Data Owner</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
		  <li><strong><a href="C_Main.jsp">Home</a></strong></li>
            <li><strong><a href="O_Login.jsp">Logout</a></strong></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
