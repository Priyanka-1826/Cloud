<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Sk_Res</title>
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
.style3 {font-weight: bold}
.style5 {color: #FF0000; font-size: 18px; }
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
          <li><a href="O_Login.jsp"><span>Data Owner</span></a></li>
		  <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html"><span class="style2">Clustering and category used in Clinical Health Database</span></a></h1>
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
        
		<h2>Search</h2>
		<p>
		
		</p>
		<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>   
   
   <%
try
{
	
	String owner = request.getParameter("t142");
	String fname = request.getParameter("t14");
	String uname=(String)application.getAttribute("uname");
	String generate ="Requested";
	String s="null";
	
	String query11="select * from request  where user='"+uname+"' and fname='"+fname+"' and owner='"+owner+"' and data_key='Permitted' "; 
	Statement st11=connection.createStatement();
	ResultSet rs11=st11.executeQuery(query11);
	
	if ( rs11.next()==true){
	                    
						String query111="select sk from dataowner  where fname='"+fname+"' and ownername='"+owner+"' "; 
						Statement st111=connection.createStatement();
						ResultSet rs111=st11.executeQuery(query111);
			
						if ( rs111.next())
						       {
						                   String s1 = rs111.getString(1);
									  	 
						
						
						 %>
                  </p>
                  <span class="style5">Request Already Sent and Permitted Data Key(Copy Key) : <%=s1%>                  </span>
                  <p align="right" class="style24">&nbsp;</p>
                  <p align="right" class="style24"><a href="U_Main.jsp">Back</a></p>
                  <%	
						       }
						    }
						 
else
{	
	String query="select * from request  where user='"+uname+"' and fname='"+fname+"' and owner='"+owner+"' and data_key='Requested'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	
	if ( rs.next()==true)
	  {
		
		
		
		          %>
                  </p>
                  <p class="style30"><h2>Request Already Sent !!! Wait for Owner to Permit Data Key</h2></p>
                  <p align="right" class="style24">&nbsp;</p>
                  <p align="right" class="style24"><a href="U_Main.jsp">Back</a></p>
                  <%	
	  }
	
	else
	{	
			
					String query4="insert into request(user,owner,fname,data_key,view_per) values('"+uname+"','"+owner+"','"+fname+"','Requested','Requested')";
					connection.createStatement().executeUpdate(query4); 
						%>
                  <p class="style30"><h2>Request Sent Successfully to Key Authority !!!</h2> </p>
                  <p align="right" class="style24">&nbsp;</p>
                  <p align="right" class="style24"><a href="tenant1_main.jsp">Back</a></p>
                  <p class="style6">
                    <%
				
    }
}
			
		
	
	connection.close();
} 
catch(Exception e)
{
out.println(e.getMessage());
}
	%>
			
		<p align="center">&nbsp;</p>
		<p align="center"><a href="U_Main.jsp">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style3">
		   <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
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
