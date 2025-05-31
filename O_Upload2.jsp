<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>O_Upload2</title>
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
.style3 {color: #FF0000}
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
        <h2>Uploaded Status !!! </h2>
        <p>&nbsp;</p>
       <%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>

<%
	try {
	
	long stime=System.currentTimeMillis();
		String file = request.getParameter("t42");
		String cont = request.getParameter("text2");
		String mac = request.getParameter("t4");
		String cloud = request.getParameter("cloud");
		String cname = request.getParameter("cname");
		String age = request.getParameter("age");
		String symp = request.getParameter("symp");
		String disease = request.getParameter("disease");
		
		
		
		String user=(String)application.getAttribute("owner");
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		String enc="";
		Statement st22 = connection.createStatement();
		
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;

			
			KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
		    Cipher encoder = Cipher.getInstance("RSA"); 
		    KeyPair kp = kg.generateKeyPair(); 
		    PublicKey pubKey = kp.getPublic(); 
		 
		    // RSA produces 1024 bits Key
		 
		    byte[] pub = pubKey.getEncoded();
		    String pk = pub.toString();
			
			String rank = "0";
			String 	cmac="null";
			Statement st = connection.createStatement();
			Statement st2 = connection.createStatement();

            String query="select * from cloudserver where mac='"+mac+"'";
            ResultSet rs=st.executeQuery(query);
			
			if(rs.next()==true)
			{
			
		             out.println("DATA DEDUPLICATION FOUND IN THE CLOUD SERVER !!! FILE EXISTS ALREADY");			
			}
			 else if(rs.next()!=true)
             {
			
			String task = "Upload";
			String stat = "Verified";

			String ownernam = (String) application.getAttribute("owner");

			String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"
					+ user
					+ "','"
					+ file
					+ "','"
					+ pk
					+ "','" + task + "','" + dt + "')";
					
					
					Statement st21 = connection.createStatement();
					st21.executeUpdate(strQuery2);
					
	
							
							st2.executeUpdate("insert into  dataowner(ownername,fname,age,symptoms,disease,ct,mac,sk,rank,dt) values ('"
							+ ownernam
							+ "','"
							+ file
							+ "','"
							+ age
							+ "','"
							+ symp
							+ "','"
							+ disease
							+ "','"
							+ cont
							+ "','"
							+ mac
							+ "','"
							+ pk
							+ "','"
							+ rank
							+ "','"
							+ dt
							+ "')");
							
							st2.executeUpdate("insert into  cloudserver(ownername,fname,age,Symtoms,Disease,ct,mac,sk,rank,dt,status) values ('"
							+ ownernam
							+ "','"
							+ file
							+ "','"
							+ age
							+ "','"
							+ symp
							+ "','"
							+ disease
							+ "','"
							+ cont
							+ "','"
							+ mac
							+ "','"
							+ pk
							+ "','"
							+ rank
							+ "','"
							+ dt
							+  "','"
							+ stat
							+ "')");
							
							
					long etime=System.currentTimeMillis();
					long ttime = etime-stime;
					long tpt=((cont.length())/ttime)*1024;
					
					Statement st1=connection.createStatement();
					st1.executeUpdate("insert into  results values ('"+file+"','"+ttime+"','"+tpt+"')"); 
		
						
							%>
							  <p>
							  <h1 class="style8 style3">Patient Details  Uploaded Successfully !!!</h1>
							
					          <%
							
						}
%>
		
		  </p><br />
		<p>  <a href="O_Main.jsp">BACK</a></p>

		  <%
		 // 	}
		  		connection.close();
		  	}

		  	catch (Exception e) {
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
