<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Register Page</title>
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
.style3 {
	color: #000000;
	font-weight: bold;
}
.style4 {color: #FF0000; font-weight: bold; }
.style5 {color: #FF0000}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
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

var na5=document.s.email.value;
if(na5=="")

{
alert("Please Enter Email");
document.s.email.focus();
return false;
}

if (na5.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}

if (na5.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}
var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}

var na8=document.s.address.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.address.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="--Select--")

{
alert("Please Enter Your Gender");
document.s.gender.focus();
return false;
}
var na10=document.s.pic.value;
if(na10=="")

{
alert("Please Choose Profile Pic");
document.s.pic.focus();
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
       
	   
	   
	   <h2><span>DATA OWNER REGISTERATION FORM</span></h2>
	   
	   
	    <form action="O_RegIns.jsp" method="post" id="s" enctype="multipart/form-data" name="s" onsubmit="return valid()" ons target="_top">
            <ol class="style4">
              <li>
                <label for="name"><br />
                <img src="images/Register.jpg" width="180" height="134" /><br />
                <br />
                Data Owner Name (required)</label>
                <input id="name" name="userid" class="text" />
              </li>
              <li>
                <label for="email"> Password (required)</label>
                <input name="pass" type="password" class="text" id="pass" />
              </li>
            </ol>
            <ol class="style4">
              <li>
                <label for="label">E-Mail  (required)</label>
                <input id="email" name="email" class="text" />
              </li>
            </ol>
            <ol class="style4">
              <li>
                <label for="label2">Mobile (required)</label>
                <input id="mobile" name="mobile" class="text" />
              </li>
            </ol>
            <ol class="style4">
              <li>
                <label for="label3">Address (required)</label>
                <textarea name="address" class="address" id="address"></textarea>
              </li>
            </ol>
            <ol class="style4">
              <li>
                <label for="label4">Date Of Birth  (required)</label>
                <input id="dob" name="dob" class="text" />
              </li>
            </ol>
            <ol class="style4">
              <li>
                <label for="label5">Gender (required)</label>
              </li>
              <li>
                <select id="s1" name="gender" style="width:480px;" class="text">
                  <option>--Select--</option>
                  <option>MALE</option>
                  <option>FEMALE</option>
                </select>
</li>
            </ol>
            <ol>
              <li class="style3">
                <span class="style5">
                <label for="pic">Select Profile Picture (required)</label>
                </span>
                <label for="pic"></label>
                <input type="file" id="pic" name="pic" class="text" />
              </li>
              <ol>
                <ol>
                  <ol>
                    <li class="style3"> <br />
                        <input name="submit" type="submit" value="REGISTER" />
                    &nbsp;&nbsp;&nbsp;&nbsp;</li>
                  </ol>
                </ol>
              </ol>
          </ol>
            <label></label>
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
