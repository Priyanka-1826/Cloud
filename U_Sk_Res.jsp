<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Sk_Res</title>
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
.style4 {
	color: #FF0000;
	font-weight: bold;
}
.style5 {color: #FF0000}
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
        <h1><a href="index.html"><span class="style2">Clustering and category used in Clinical Health Database</span></a></h1>
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
		<p>
		
		</p>
		<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@include file="connect.jsp" %>
 <%
			  String oname=request.getParameter("owner");
			  String titl=request.getParameter("fname");
			  application.setAttribute("title",titl);
			  String keywo=request.getParameter("keyword");
			  application.setAttribute("keyword",keywo);
			  
try{
			        String user=(String)application.getAttribute("t1");
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

					Date now = new Date();
					
					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;	
					
					String strQuery = "select sk from cloudserver where fname='"+titl+"'";
				    ResultSet rs = connection.createStatement().executeQuery(strQuery);
					if(rs.next()==true)
					{
						String sk=rs.getString(1);
					
					String task="Searched";
					String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"+user+"','"+titl+"','"+sk+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
					
					}
					
	connection.close();
         
	 
	 }
  catch(Exception e)
  {
    out.println(e.getMessage());
    e.printStackTrace();
  }

			
 %>
		 
		 <form id="form" name="form1" method="post" action="U_Sk_Req.jsp">
                    <div align="center" class="style21">
                      <p><br />
                        <span class="style19 style4"> Enter File Name :</span>
						<span class="style4"><input name="t14" type="text" id="t14" size="50" value="<%=titl%> " />
                      </span></p>
                      <p> <span class="style4"><br />
                        <span class="style19">Enter Owner Name :</span>
						<input name="t142" type="text" id="t142" size="50" value="<%=oname%> " />
                      </p>
                      <br />
                          <input type="submit" name="Submit" value="View Key " />
                      </p>
                      <p>&nbsp; </p>
                    </div>
                    <%String key=(String)application.getAttribute("key");
			  if(key!=(null))
			  {%>
                    <p align="center" class="style21"><strong><span class="style19 style5">Requested  Key :</span> <%=key%>&nbsp;</strong></p>
                    <%application.removeAttribute("key");
			  }%>
        </form>
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
