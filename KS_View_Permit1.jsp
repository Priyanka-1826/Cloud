<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>KS_View_Permit</title>
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
.style3 {color: #FF00FF}
.style4 {color: #000000}
.style7 {color: #FF0000; font-weight: bold; }
.style8 {color: #FFFFFF}
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
          <li class="active"><a href="C_Login.jsp"><span>Cloud</span></a></li>
          <li><a href="O_Login.jsp"><span>Data Owner</span></a></li>
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
        <h2 class="style3">View Key Request and Permit </h2>
        <p align="center" class="style3">&nbsp;</p>
      <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>

<%
int uid = Integer.parseInt(request.getParameter("usid"));
try {

String str="Permitted";
Statement st1 = connection.createStatement();
String query1 ="update request set data_key='"+str+"' where id='"+uid+"' ";
st1.executeUpdate (query1);

Statement st2 = connection.createStatement();
String query2 ="update request set view_per='Permitted' where id='"+uid+"' ";
st2.executeUpdate (query2);
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("KS_View_Permit.jsp");
%>

      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Cloud Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
    		  <li><strong><a href="index.html.jsp">Home</a></strong></li>
            <li><strong><a href="KS_Login.jsp">Logout</a></strong></li>
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
