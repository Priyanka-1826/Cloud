<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>O_Upload1</title>
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
.style3 {
	color: #FFFF00;
	font-size: 18;
}
.style4 {color: #FFFF00; font-weight: bold; }
.style5 {font-weight: bold}
.style8 {font-size: 16px}
.style10 {color: #FFFF00}
.style11 {font-weight: bold}
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
        <h2>Upload Details </h2>
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
         
<% try 
	{
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
			String age=request.getParameter("age");
			String symp=request.getParameter("symp");
			String disease=request.getParameter("disease");
			
			String uname=(String)application.getAttribute("t1");
      		String keys = "";
      		String h1="";
      		String filename="filename.txt";
			String status="No";
			String status1="Yes";
      		//to get Enc Key
			
	
      		
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(cont));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);//MAC
			
      		
 
			    keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
				String encryptedValue1 = new String(Base64.encode(age.getBytes()));	
				String encryptedValue2 = new String(Base64.encode(symp.getBytes()));
				String encryptedValue3 = new String(Base64.encode(disease.getBytes()));
				
%>

<form action="O_Upload2.jsp" method="post">
<table width="598" border="1" align="center" cellpadding="10" cellspacing="0">

	<tr>
	  <td bgcolor="#FF0000"><div align="center"><strong><span class="style10">Patient Name :- </span></strong></div></td>
	  <td><input name="t42" type="text" id="t42" size="50"
			value="<%= file %>" readonly="readonly" /></td>
	  </tr>
	<tr>
	  <td bgcolor="#FF0000"><div align="center" class="style4"><span class="style3 style10 style11 style8">Age</span></div></td>
	  <td><input type="text" name="age" value="<%= encryptedValue1%>" readonly="readonly"/></td>
	  </tr>
	<tr>
	  <td bgcolor="#FF0000"><div align="center" class="style4">Symptoms</div></td>
	  <td><input type="text" name="symp" value="<%= encryptedValue2%>" readonly="readonly"/></td>
	  </tr>
	<tr>
		<td width="286" bgcolor="#FF0000"><div align="center" class="style10 style8 style2"><strong>Disease</strong></div></td>
		<td width="356"><input type="text" name="disease" value="<%= encryptedValue3 %>" readonly="readonly"/></td>
	</tr>
	
	<tr>
		<td width="286" bgcolor="#FF0000"><div align="center" class="style4"><span class="style5 style8 style10 style11 ">Enc Report :- </span></div></td>
		<td><textarea name="text2" cols="50" rows="15" readonly><%= encryptedValue %></textarea></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><div align="center" class="style4"><span class="style5 style8 style10 style11 ">MAC: </span></div></td>
		<td><input name="t4" type="text" id="t4" size="50"
			value="<%= h1 %>" readonly="readonly" /></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000">
		  <div align="center"></div></td>
		<td><input type="submit" name="Submit2" value="Upload" /></td>
	</tr>
</table>
</form>
<p>
  
  
  <%
	   
         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
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
