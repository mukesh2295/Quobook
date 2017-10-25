<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>

</head>
<body bgcolor="#E5E4E2">

<center>
<form id="contact_form" action="messageserv" method="POST" >
	<div class="register">
		<label for="name" class="t1" >Receiver's name:</label><br />
		<input id="name" class="input" name="name" type="text" value="" size="30" /><br />
		<br>
	</div>
	<div class="register">
		<label for="email" class="t1">Receiver's email:</label><br />
		<input id="email" class="input" name="email" type="text" value="" size="30" /><br />
	</div>
	<br>
	<div class="register">
		<label for="message" class="t1">Your message:</label><br />
		<textarea class="input" name="message" rows="7" cols="30"></textarea><br />
	</div>
	<br>
    <div class="register">
	<input class="t2" type="submit" value="Send message" />
    </div>
</form>		
				
<br>
<br>

<form method ="post" action ="inbox.jsp">
<div class="register">
<input class="t2" type="submit" value="Check Inbox" />
</div>
</form>

<br>
<br>

<form method ="post" action ="outbox.jsp">
<div class="register">
<input class="t2" type="submit" value="Check Outbox" />
</div>
</form>
<br>
<br>

<form method ="post" action ="timeline.jsp">
<div class="register">
<input class="t2" type="submit" value="Back to Timeline" />
</div>
</form>

<br>
<br>

</center>

</body>
</html>