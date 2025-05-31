<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud All Users And Authorize</title>
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
.style2 {color: #0000FF}
.style3 {color: #000000}
.style4 {color: #FF00FF}
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
        
		
		
		<h2 class="style4">View All Users and Authorize..</h2>
		 
		 
		   <p>&nbsp;</p>
      <div class="clr"></div>
	  <table width="913" align="center"  cellpadding="0" cellspacing="0">
        <tr>
          <td width="51" height="37" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>ID</strong></div></td>
          <td width="157" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>User Image</strong></div></td>
          <td width="121" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>User Name</strong></div></td>
          <td width="142" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Email</strong></div></td>
          <td width="135" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Mobile</strong></div></td>
          <td width="121" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Address</strong></div></td>
          <td width="108" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Status</strong></div></td>
        </tr>
        <%@ include file="connect.jsp" %>
        <%
			
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString("addr");
								s4=rs.getString(10);
					%>
        <tr>
          <td height="122" align="center"  valign="middle" bgcolor="#99FF99"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style3"><strong>
              <%out.println(i);%>
          </strong></div></td>
          <td  rowspan="1" align="center" valign="middle" bgcolor="#99FF99" ><div class="style57 style86 style55 style54 style37 style70 style71 style3" style="margin:10px 13px 10px 13px;" ><strong>
              <input  name="image" type="image" src="images.jsp?value=<%="user"%>&id=<%=i%>" style="width:120px; height:100px;" />
          </strong></div></td>
          <td  align="center"  valign="middle" bgcolor="#99FF99"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
              <%out.println(s1);%>
          </strong></div></td>
          <td  align="center"  valign="middle" bgcolor="#99FF99"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
              <%out.println(s2);%>
          </strong></div></td>
          <td align="center"  valign="middle" bgcolor="#99FF99"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
              <%out.println(s5);%>
          </strong></div></td>
          <td  align="center"  valign="middle" bgcolor="#99FF99"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style3"><strong>
              <%out.println(s3);%>
          </strong></div></td>
          <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
          <td align="center" valign="middle" bgcolor="#99FF99"  style="color:#000000;"><div align="center" class="style20 style30 style37 style86 style70 style71 style3">
              <div align="center"><a href="Authentication.jsp?value=<%="userstatus"%>&amp;id=<%=i%>">waiting</a></div>
          </div></td>
          <%
						}
						else
						{
						%>
          <td width="76" align="center"  valign="middle" bgcolor="#99FF99"><div align="center" class="style20 style37 style55 style30 style71 style72 style3">
              <%out.println(s4);%>
          </div></td>
          <%
						}
    %>
      </span></span></td>
	 </tr>
        <%
						}
					
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
      </table>
	  <p align="right"><a href="C_Main.jsp">Back</a></p>
		
		
		
		
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
