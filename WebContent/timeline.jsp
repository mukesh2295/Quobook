<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FriendsBook</title>
<link href="timelinecss.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="nav">
			<div id="nav_wrapper">
			<ul>
			<li><a href="#">HOME</a></li><li>
			<a href="#">DISCUSSIONS</a></li><li>
			<a href="notify.jsp">NOTIFICATIONS</a></li><li>
			<a href="message.jsp">MESSAGE</a></li><li>
			<a href="#">SETTINGS<img src="C:\Users\HP\workspace\social\WebContent\Arrow-down-navmenu.png" id="circle" /></a>
				<ul><li>
				<a href="login.jsp">Logout</a></li>
				</ul></ul>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
<div class="container1">
<form class="h4" action="aboutme.jsp" method="post" >
<fieldset id="h3">
<legend align="center"><font face="serif" color="black" size="+3"><i><b>Profile</i></b></font></legend>
<center>
<div class="head">
<div>
<table class="img" border="1" bgcolor="#000000"><tr></tr>
</table></div>
<div class="info">

<input type="submit" value="ABOUT ME" name="b5" class="t1"/>
</div>
</div>

</center>
</fieldset>
</form>
</div>
<form class="h6">
<fieldset id="h1">
<legend align="center"><font face="serif" color="black" size="+3"><i><b>Timeline</i></b></font></legend>
</fieldset>
</form>

</body>
</html>