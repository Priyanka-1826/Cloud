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
.style7 {font-weight: bold}
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
		<form action="U_Download1.jsp" method="post" >
            <table width="524" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#333333">
              <tr>
                <td width="192" bgcolor="#FF0000"><span class="style4 style7 style12 style9 style1"><strong>Enter Patient Name :-</strong></span></td>
                <td width="240"><span class="style15">
                  <label>
                  <input required name="t1"
			type="text"  size="40" />
                  </label>
                </span></td>
              </tr>
              <tr>
                <td width="192" bgcolor="#FF0000"><span class="style4 style7 style12 style9 style1"><strong>Enter Owner Name :-</strong></span></td>
                <td width="240"><span class="style15">
                  <label>
                  <input name="t22" type="text"   />
                  </label>
                </span></td>
              </tr>
              
              <tr>
                <td bgcolor="#FF0000">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr bgcolor="#FF0000">
                <td><div align="right" class="style4"><strong>
                  <input type="submit" name="Submit"
			value="Req Report" />
                </strong></div></td>
              </tr>
          </table>
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
