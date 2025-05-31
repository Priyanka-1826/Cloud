<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_Uploaded_Files</title>
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
        <h2>View Uploaded Files</h2>
        <p>&nbsp;</p>
		
		<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>
		
        <p><table width="663" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
   <td width="191" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>Owner  Name</strong></div></td>
   <td width="150" height="30" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>Patient Name</strong></div></td>
     <td width="150" height="30" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>Age</strong></div></td>
	   <td width="150" height="30" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>Symptoms</strong></div></td>
	     <td width="150" height="30" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>Disease</strong></div></td>
    <td width="139" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>MAC</strong></div></td>
   
    <td width="176" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>Secret Key</strong></div></td>
    <td width="147" bgcolor="#FF0000"><div align="center" class="style2 style10 style1 style5 style6"><strong>Date</strong></div></td>
  </tr>

<%
String onname=(String)application.getAttribute("owner");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{

      		
      		String query="select * from dataowner where ownername='"+onname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
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

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
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
