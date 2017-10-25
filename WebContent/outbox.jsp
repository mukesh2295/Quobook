<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.*" %>
    <%@ page import="social.database" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FriendsBook</title>
<style type="text/css">
body{background:#E5E4E2 0px 0px no-repeat;
	text-align:left;
	font-family:Nunito-Light;
	background-attachment: fixed;
    background-position: center;
    background-size: cover;
	position:fixed;
	left:25px;
	top:50px;
	padding:10px;
	margin:10px;
	height:90%;
	width:90%;
	color:black;
    text-decoration: none;	
}
.msg{
	font-size:24px;
	color:#2B1B17;
}
.t2{
	font-size:20px;
	font-family:Georgia, "Times New Roman", Times, serif;
}
.t1{

	border:1px solid black;
}
</style>
</head>
<body>
<% HttpSession session1 = request.getSession();
int id = (int) session1.getAttribute("user_id1");
//System.out.println("User id: " + id);
database db = new database();
Connection conn = db.createConnection();
Statement statement = conn.createStatement() ;
String emailid = null;
ResultSet rs = statement.executeQuery("select email_id from test1 where user_id = '" + id + "'");
while(rs.next()){
	emailid = rs.getString("email_id");
}
//System.out.println(emailid);
ResultSet rs1 = statement.executeQuery("select receiver_id,message from message1 where sender_id = '" + emailid + "'");
%>  
<H1 align="center"> SENT MESSAGES</H1>
 <TABLE border="1" class="t1">
           
            <% while(rs1.next()){ %>
            <tr>
                <TD class="msg">To:</TD><td> <%= rs1.getString("receiver_id") %></td></tr>
               <tr> <TD class="msg">Message:</TD><td> <%= rs1.getString("message") %></TD>
                
            </TR>
           <% } %>
</TABLE>
<br>
<br>
<form action="message.jsp" align="center">
        <br>
	<input class="t2" align="bottom" type="submit" value="Back" />
</form>			


</body>
</html>
