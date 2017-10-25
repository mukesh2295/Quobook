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
body{
	
	text-align:center;
	font-family:Nunito-Light;
	</style>
</head>
<body bgcolor="#E5E4E2">
<% HttpSession session1 = request.getSession();
int id = (int) session1.getAttribute("user_id1");
//System.out.println("User id: " + id);
database db = new database();
Connection conn = db.createConnection();



Calendar currentDate = Calendar.getInstance(); //Get the current date
int month = currentDate.get(Calendar.MONTH);
month=month+1;
int day = currentDate.get(Calendar.DAY_OF_MONTH);
//System.out.println(month + " " + day); //months have zero based index

Statement statement = conn.createStatement() ;
ResultSet resultset = 
statement.executeQuery("select name from profile where date= '" + day + "' and month='" + month + "'" );
//String name = resultset.getString("name");
//System.out.println();

//resultset= statement.executeQuery("select month from profile where uid= '" + id + "'");
//String m = resultset.getString("month");
//System.out.println(m);

//SimpleDateFormat formatter= new SimpleDateFormat("DD-MM-YYYY HH:mm:ss"); //format it as per your requirement
//tring dateNow = formatter.format(currentDate.getTime());
//System.out.println("Now the date is :=>  " + dateNow);
%>  
<center>
<H1 align="center"> BIRTHDAYS</H1>
<table>
 <% if(resultset==null){ %>
            
            <tr>
                <TD>No birthday today! :(</td>
               </tr>
               <%} %>
 <% while(resultset.next()){ %>
            <tr>
                <TD><%= resultset.getString("name") %>  has birthday today! :) </td>
               </tr>
               <%}%>
            </table>
            
            <form action="timeline.jsp">
        <br>
	<input id="submit_button" align="bottom" type="submit" value="Back" />
</form>						
</center>
</body>
</html>