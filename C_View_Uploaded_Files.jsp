
 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>H_Views_All_Disease_Records_By_Blockchain</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style4 {color: #FF0000}
.style6 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="DataUser.jsp"><span>Physician </span></a></li>
          <li><a href="HospitalServer.jsp"><span>Hospital</span></a></li>
          <li><a href="EndUser.jsp"><span>Brad</span></a></li>

        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1>&nbsp;</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style3">Views All Clinical Records By Clustering and Category!!!<br />
            <br />
          </h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,disease;
						int i=0,j=1,k=0;
												
						int count1=1;
						
						try 
						{
						String str1 = " select distinct(Disease) from cloudserver ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						disease = rs1.getString(1);
//						count1=count1+1;
						   	String query="select * from cloudserver where Disease= '"+disease+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(disease.getBytes()));
	
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
		  <table width="663" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
   <td width="191" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>Owner  Name</strong></div></td>
   <td width="150" height="30" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>Patient Name</strong></div></td>
     <td width="150" height="30" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>Age</strong></div></td>
	   <td width="150" height="30" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>Symptoms</strong></div></td>
	     <td width="150" height="30" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>Disease</strong></div></td>
    <td width="139" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>MAC</strong></div></td>
   
    <td width="176" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>Secret Key</strong></div></td>
    <td width="147" bgcolor="#000000"><div align="center" class="style2 style10 style1 style6"><strong>Date</strong></div></td>
  </tr>
		 
		 
		 
         <h3 align="center">
<p align="center" class="style4"><span class="style1">Clustering and Category Chain--->::</span> <%=decryptedValue%><br>
	     </h3>
			<div align="center">
			  <%
							
							}
			 					i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(8);
		s8=rs.getString(9);
		s9=rs.getString(11);

					%>
	      </div>
		  
  <tr>
    <td height="52"><div align="center" class="style7 style11"><strong><%=s2%></strong></div></td>
    <td><div align="center" class="style7 style11"><strong><%=s3%></strong></div></td>
    <td><div align="center" class="style7 style11"><strong><%=s4%></strong></div></td>
	  <td><div align="center" class="style7 style11"><strong><%=s5%></strong></div></td>
	  <td><div align="center" class="style7 style11"><strong><%=s6%></strong></div></td>
	  <td><div align="center" class="style7 style11"><strong><%=s7%></strong></div></td>
	  <td><div align="center" class="style7 style11"><strong><%=s8%></strong></div></td>
	   <td><div align="center" class="style7 style11"><strong><%=s9%></strong></div></td>
  </tr>
            <p align="center">
         <%
								j=j+1; }
			   }
			 
			 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
          <p>&nbsp;</p>
          <p><a href="C_Main.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
        
        
      </div>
      
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
    
</html>
