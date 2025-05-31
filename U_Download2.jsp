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
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs =document.getElementById("fn").value;

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



</script>


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
		<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
		   	try {
		   		String file = request.getParameter("t1");
		   		String mac = request.getParameter("t12");
		   		String sk = request.getParameter("t13");

		   		application.setAttribute("file2", file);
		   		application.setAttribute("sk2", sk);

		   		String strQuery = "select * from cloudserver where fname='"+ file+ "' and  sk='" + sk + "' ";
				
		   		String strQuery1 = "select * from cloudserver where fname='"+ file + "' ";

		   		ResultSet rs = connection.createStatement().executeQuery(strQuery);
		   		{
		   			if (rs.next() == true) {
		   				ResultSet rs1 = connection.createStatement().executeQuery(strQuery1);
		   				{
		   					if (rs1.next() == true) {
		   						String rank = rs1.getString(10);
		  
					        int updaterank = Integer.parseInt(rank)+ 1;
						
							String strQuery2 = "update cloudserver set rank='"
														+ updaterank
														+ "' where fname='"
														+ file+ "'";
						
							connection.createStatement().executeUpdate(strQuery2);
							
							String strQuery22 = "update dataowner set rank='"
														+ updaterank
														+ "' where fname='"
														+ file+ "'";
						
							connection.createStatement().executeUpdate(strQuery22);
						
							String ct = rs.getString(7);
							String sk1=rs.getString(9); 

						
						           if(sk1.equals("No Key"))
								   {
							       out.print("NO SECRET KEY OR PRIVATE KEY GENERATED");
								   }
						           else
								   {
												String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												String decryptedValue = new String(Base64.decode(ct.getBytes()));
						%>
			
		  </p>
		  <p align="center" class="style1 style11 style12">Report Contents</p>
		  
		  <td> <input type="hidden" id="fn" value="<%=file %>" ></input></td>
		    <label>
	            <div align="center">
	            
	              <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
	              <br/>
	              <br/>
	              <td><button onClick="saveTextAsFile()">Download</button></td>
          </div>
		    </label>
						<p><a href="U_Main.jsp">Back</a></p>
		  <p>
		    <%
			}
			
		    	} else {
		    %>
	      </p>
		  <p><h1 class="style1 style10">File Doesn't Exist !!!</h1>
		  </p><br />
						<p><a href="U_Download.jsp">Back</a></p>
	<%
		}
					}
				}
				
				else {
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

					Date now = new Date();

					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;

					String user = (String) application.getAttribute("uname");
                    String type="Wrong Credentials";
					String strQuery2 = "insert into attacker(user,fname,sk,type,dt) values('"
							+ user
							+ "','"
							+ file
							+ "','"
							+ sk
							+ "','"+type+"','"
							+ dt
							+ "')";
					connection.createStatement().executeUpdate(strQuery2);
	%>
	      </p>
		  <p>
		  <h1 class="style1 style10">Hash / Secret Key Mismatch !!!</h1>
		  </p><br />
						<p><a href="tenant1_main.jsp">Back</a></p>
	<%
		}
				 
			}
			connection.close();
		} catch (Exception e) {
			out.println(e.getMessage());
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
