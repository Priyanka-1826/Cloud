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
.style4 {
	color: #FF0000;
	font-weight: bold;
}
.style7 {font-size: 12px}
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
        
		<h2>Search</h2>
		<p>		</p>
		<form name="s" action="U_Search_Data.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center" class="style4">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit"  VALUE="Search Patient Report"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2">
                        <div align="center" class="style13">
                          <p class="style7">(<span class="style4"> Searching  Based on  Patient Name Or Content Description</span>)</p>
                        </div>
                      </div></TD>
                    </TR>
                  </TABLE>
                </DIV>
                <P>&nbsp; </P>
        </form>
	  </div>
			<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
				
                  <%
				  
				  
				

							try
							{
								String s1="",keyword="",s2="",s3="",s4="",s5="",s6="";
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
								Date now = new Date();
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
				
								String sql="select * from cloudserver  ";
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								while(rs.next())
										{
									i=rs.getInt(1);
								    s1 = rs.getString(2);
									s2 = rs.getString(3);//pname
									s3 = rs.getString(4);//age   
									s4 = rs.getString(5); // symp
									s5 = rs.getString(6); // disease
									s6 = rs.getString(7); // report
								
								                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   
						  				String decryptedValue = new String(Base64.decode(s6.getBytes()));
									   
					
										if ((decryptedValue.toLowerCase().contains(keyword)) || (s2.toLowerCase().contains(keyword)) )
										{
										
									%>
                </P>
 </p>
              
               <p> 
               <div align="center" class="style11 style4">Patient Name : <span class="style15"> <%=s2%></span></div>
               <span class="style4"><br />
               </span>
               <div align="center" class="style11 style4">Uploader Name :  <span class="style15"> <%=s1%></span></div></p>
                <p class="style4">
                <div align="center" class="style14"><strong><span class="style11 style4">Request or View Response on   <a href="U_Sk_Res.jsp?fname=<%=s2%>&keyword=<%=input%>&owner=<%=s1%>">View Data Key</a></span></strong></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	}
							
						 }
						
					}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  

		<p align="center">&nbsp;</p>
		<p align="center"><a href="U_Main.jsp">Back</a></p>
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
