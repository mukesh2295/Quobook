<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="social.database" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FriendsBook</title>
<style type="text/css">
body{background:#CC6600 0px 0px no-repeat;
	text-align:left;
	font-family:Nunito-Light;
	background-attachment: fixed;
    background-position: center;
    background-size: cover;
	
	left:25px;
	top:50px;
	padding:10px;
	margin:10px;
	height:90%;
	width:90%;
	color:white;
        text-decoration: none;
        
	
}

.h1{
	width:80%;
	height:auto;
	padding-left:100px;
	
}
.h2{
	size:24px;
	font-size:26px;
	color:#000;
}
.h5{
	font-size:22px;
}
.t2{
	font-size:20px;
	font-family:Georgia, "Times New Roman", Times, serif;
}
</style>
</head>
<body>


<% HttpSession session1 = request.getSession();
int id = (int) session1.getAttribute("user_id1");
System.out.println("User id: " + id);
database db = new database();
Connection conn = db.createConnection();

Statement statement = conn.createStatement() ;
ResultSet resultset = 
statement.executeQuery("select * from profile where uid= '" + id + "'");
%>  

<form action="timeline.jsp" method="get" class="form1" overflow="auto">
<fieldset class="h1">
<legend align="center"><font face="Palatino Linotype, Book Antiqua, Palatino, serif" color="black" size="+3"><i><b>ABOUT ME</i></b></font></legend>
<TABLE>
             <% while(resultset.next()){ %>
            <TR><td colspan="2" class="h2"> Basic Info </td></tr>
            <tr  class="h5">
                <TD>Name:</TD><td> <%= resultset.getString(9) %></td>
               </tr>
               <tr  class="h5">
                <TD>City:</TD><td> <%= resultset.getString(1) %></TD>
                
            </TR>
            <TR  class="h5">
                <TD>Gender: </TD><td><%= resultset.getString(13) %></td>
               </tr>
               <tr  class="h5">
                <TD>Phone:</TD><td> <%= resultset.getString(2) %></TD>
                
            </TR>
            <TR  class="h5">
                <TD>Date of Birth:</TD><td> <%= resultset.getString(10)%>/<%= resultset.getString(11)%>/<%= resultset.getString(12) %> </td>
               </tr>
               <tr><td></td><td></td> </tr>
               <tr> <td colspan="2" class="h2"> Social Information </td></tr>
               <tr  class="h5">
                <TD>Movie:</TD><td> <%= resultset.getString(3) %></TD>
                
            </TR>
            <TR  class="h5">
                <TD>Sport:</TD><td> <%= resultset.getString(4) %></td>
               </tr>
               <tr  class="h5">
                <TD>Novel:</TD><td> <%= resultset.getString(5) %></TD>
                <tr><td></td><td></td></tr>
            
            <tr><td colspan="2" class="h2">Education</td></tr>
            <TR  class="h5">
                <TD>School:</TD><td> <%= resultset.getString(6) %></td>
               </tr>
               <tr  class="h5">
                <TD>College:</TD><td> <%= resultset.getString(7) %></TD>
                
            </TR>
            <tr  class="h5">
                <TD>Work:</TD><td> <%= resultset.getString(8) %></TD>
                
            </TR>
            
            
            <% } %>
        </TABLE>
    
        <br>
	<input class="t2" align="bottom" type="submit" value="Back" />
    </fieldset>
</form>		
				
</body>
</html>
