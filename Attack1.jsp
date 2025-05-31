<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attack1</title>
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
	color: #0000FF;
	font-size: 18px;
}
.style4 {color: #FFFF00}
.style5 {font-size: 24px}
.style6 {color: #FF0000}
.style7 {color: #FFFFFF}
.style8 {font-size: 18px}
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
          <li><a href="A_Login.jsp"><span>Cloud</span></a></li>
          <li><a href="O_Login.jsp"><span>Data Owner</span></a></li>
		  <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
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
        <h2>Attack Patient Report</h2> </p>
		
       <%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
  String prcst="",attcksttus="",prc="";
  String fn, ct, on, mac = "";
  	try {
  		String file = request.getParameter("t1");
  		String oname = request.getParameter("ot");
  		String cattack = request.getParameter("attack");
  		
  		application.setAttribute("aname",cattack);
  		
  			%>
<h1 class="style5 style6">Add Malicious Content to Patient Report </h1>
<p class="style4">&nbsp;</p>
<%
  			
  		
  		String sk = "";
  		String strQuery = "select * from cloudserver where fname='"+ file + "'";
  		ResultSet rs = connection.createStatement().executeQuery(strQuery);
  		{
  			if (rs.next() == true) {
  				fn = rs.getString(2);
  				ct = rs.getString(7);

  				mac = rs.getString(5);
  				sk = rs.getString(6);

  				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
  				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

  				Date now = new Date();

  				String strDate = sdfDate.format(now);
  				String strTime = sdfTime.format(now);
  				String dt = strDate + "   " + strTime;
  				String task = "Download";
  %>

<form action="Attack2.jsp" method="get" name="form1" id="form1">
<table width="478" border="0" align="center">
	<tr>
		<td width="223" bgcolor="#FF0000"><span class="style1 style7 style8">Patient Name :-</span></td>
		<td width="245"><label> <input required name="t1" type="text" value="<%=file%>" size="40" /> </label></td>
	</tr>

	<tr>
		<td height="34" bgcolor="#FF0000"><span class="style1 style7 style8">Your Name :-</span></td>
		<td><input name="t12" type="text" value="<%=oname%>" size="40" /></td>
	</tr>
		

	<tr>
		<td bgcolor="#FF0000"><span class="style1 style7 style8">Patient Report Content :-</span></td>
		<td><textarea name="text" id="textarea" cols="45" rows="17"><%=ct%></textarea></td>
	</tr>


	<tr>
		<td bgcolor="#99CC00"><span class="style5"></span></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td bgcolor="#99CC00">
		<div align="right"><span class="style5"></span></div>		</td>
		<td><label> <input type="submit" name="Submit2"
			value="Attack" /> </label></td>
	</tr>
</table>
</form>

<%
									} 
  		
  		else {
  			out.println("File Doesn't Exist !!!");
	   		 }
									}

									connection.close();
  		
  							  			
  	}					catch(Exception e) {
									out.println(e.getMessage());
								}
							%>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><a href="U_Main.jsp">Home</a></li>
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
