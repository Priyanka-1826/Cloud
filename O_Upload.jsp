<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload File</title>
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
.style3 {color: #FFFF00}
.style4 {font-weight: bold}
.style5 {font-size: 18}
-->
</style>

<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
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
        <h2>Upload Data !! </h2>
        <p>&nbsp;</p>
        <form id="form1" name="form1" method="post" action="O_Upload1.jsp">
          <table width="598" border="1" align="center" cellspacing="0" cellpadding="10">
            <tr>
              <td width="286" bgcolor="#FF0000"><div align="center" class="style3 style7 style12 style11 style10"><strong>Select File :- </strong></div></td>
              <td width="356"><input name="t42" type="file" id="file"  onchange="loadFileAsText()" required="required" /></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000" class="style12 style11 style10"><div align="center"><strong><span class="style3"><strong>Patient Name :- </strong></span></strong></div></td>
              <td><input name="tt" type="text" id="tt" size="50"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000" class="style3 style12 style11 style10"><div align="center"><strong>Age</strong></div></td>
              <td><input type="text" name="age" /></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000" class="style3 style12 style11 style10"><div align="center"><strong>Symptoms</strong></div></td>
              <td><input type="text" name="symp" /></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style3 style7 style2 style5">Disease</div></td>
            <td><input type="text" name="disease" /></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><div align="center" class="style3 style7"><strong>Report Content :- </strong></div></td>
              <td><span class="style13">
                <textarea name="text" id="textarea" cols="50" rows="15"></textarea>
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><div align="center" class="style3 style7"><strong><span class="style10 style11 style12 "><span class="style10 style11 style12">MAC :- </span></span></strong></div></td>
              <td><input name="t4" type="text" id="t4" value="" size="50" readonly="readonly" /></td>
            </tr>
			
            <tr>
              <td bgcolor="#FF0000"><div align="center"><span class="style10"><span class="style11"><span class="style12"><span class="style7"><span class="style3"></span></span></span></span></span></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
            </tr>
          </table>
        </form>

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
