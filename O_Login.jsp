<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Login Page</title>
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
.style5 {color: #000000; font-weight: bold; }
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Data Owner Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


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
         <h2><span>DATA OWNER LOGIN </span></h2>
          <div class="clr"></div>
		   <form action="Authentication.jsp?value=<%="ownerlogin"%>" method="post" name="s" id="sendemail" onsubmit="return valid()" ons target="_top">
         	
            <ol>
              <li class="style5">
                <label for="name"><br />
                <img src="images/Login.png" width="190" height="133" /><br />
                <br />
                <br />
                Data Owner Name (required)</label>
                <input id="name" name="userid" class="text" />
              </li>
              <li>
                <span class="style5">
                <label for="email"> Password (required)</label>
                </span><span class="style3">
                </span>
                <input name="pass" type="password" class="text" id="pass" />
              </li>
            </ol>
            <p>&nbsp;</p>
            <p>
              <input type="submit" name="Submit2" value="LOGIN" />
            </p>
            <label>New User To Register <a href="O_Register.jsp">Click Here</a></label>
          </form>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home Page</a></li>
            <li><a href="C_Login.jsp">Cloud</a></li>
            <li><a href="O_Login.jsp">Data Owner</a></li>
            <li><a href="U_Login.jsp">User</a></li>
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
