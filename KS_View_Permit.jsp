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
       <table width="551" border="1.5" cellpadding="0" cellspacing="0" align="center">
                    <tr bgcolor="#00FF33">
                      <td width="59" height="30" bgcolor="#FF0000"><div align="center" class="style7 style20 style26 style21 style8"><strong> ID </strong></div></td>
                      <td width="141" bgcolor="#FF0000"><div align="center" class="style7 style20 style27 style8"><strong>User Name </strong></div></td>
                      <td width="161" bgcolor="#FF0000"><div align="center" class="style7 style20 style27 style8"><strong><span class="style28">Patient  Name </span></strong></div></td>
                      <td width="156" bgcolor="#FF0000"><div align="center" class="style7 style20 style27 style8"><strong>Permission</strong></div></td>

<%@ include file="connect.jsp" %>                      
					 
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

 try 
	{		
	      
      	   String query="select * from request "; 
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
		
		%>
                    </tr>
                    <tr>
                      <td height="53"><div align="center" class="style7"><%=i%></div></td>
                      <td><div align="center" class="style7"><%=s2%></div></td>
                      <td><div align="center" class="style7"><%=s4%></div></td>
                      <%	
			if(s5.equalsIgnoreCase("Requested"))
			{
			
		%>
                      <td><div class="style7">
                          <div align="center"><a href="KS_View_Permit1.jsp?usid=<%=i%>">Permit</a></div>
                      </div></td>
                      <%
		
			}
			else if(s5.equalsIgnoreCase("No"))
			{
			
		%>
                      <td><div class="style7">
                          <div align="center">Not Requested</div>
                      </div></td>
                      <%
		
			}
			else
			{
		%>
                      <td width="22"><div class="style7">
                          <div align="center"><%=s5%></div>
                      </div></td>
                    </tr>
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
        </table>
       <p>&nbsp;</p>
       <p>&nbsp;</p>
       <p><a href="KS_Main.jsp">Back</a></p>
       <p>&nbsp;</p>
       <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Cloud Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
    		  <li><strong><a href="index.html.jsp">Home</a></strong></li>
            <li><strong><a href="C_Login.jsp">Logout</a></strong></li>
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
