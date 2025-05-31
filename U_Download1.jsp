<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page</title>
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
.style4 {color: #FFFFFF}
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
        
		<h2>Download Patient Report </h2>
		<p>
		
		</p>
		<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@include file="connect.jsp" %>

<%
	try 
{
	String file = request.getParameter("t1");
	String owner = request.getParameter("t22");

	
				
				String strQuery = "select * from cloudserver where fname='"+file+"' and ownername='"+owner+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
				
					if(rs.next()==true)
					{
						String oon=rs.getString(2);
						String fn=rs.getString(3);//pname
						String mac=rs.getString(5);
						String sk=rs.getString(6);
										
			%>
			
			<form action="U_Download2.jsp" method="post" name="form1" id="form1">
            <table width="478" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#333333">
              <tr>
                <td width="223" bgcolor="#FF0000"><span class="style4 style14 style13 style1"><strong>Patient Name :-</strong></span></td>
                <td width="245"><span class="style11">
                  <label>
                  <input required name="t1" type="text" value="<%=fn%>" size="40" readonly="readonly"/>
                  </label>
                </span></td>
              </tr>
				<tr>
		<td width="223" bgcolor="#FF0000"><span class="style4 style14 style13 style1"><strong>Enter Owner Name :-</strong></span></td>
		<td width="245"><span class="style11">
		  <label> 
		  <input required name="t12"
			type="text"  size="40" value="<%=oon%>" readonly="readonly"/> 
		  </label>
		</span></td>
	</tr>
			  
              <tr>
                <td bgcolor="#FF0000"><span class="style4 style13 style14 style1"><strong>Secret Key :-</strong></span></td>
                <td><input name="t13" type="text"  size="40" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000">&nbsp;</td>
                <td><span class="style11"></span></td>
              </tr>
              <tr>
                <td bgcolor="#99CC00"><div align="right"><span class="style14"></span></div></td>
                <td><span class="style11">
                  <label>
                  <input type="submit" name="Submit2" value="Download" />
                  </label>
                </span></td>
              </tr>
            </table>
          </form>		
			
			<%	}
			else
			{%>
			
			<h2>Wrong Credintials !!! Pl Enter Proper Details !!! </h2><br><p align="center"><a href="U_Main.jsp">Back</a></p>
			
			<%}
			
	}
  catch(Exception e)
  {
    out.println(e.getMessage());
    e.printStackTrace();
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
