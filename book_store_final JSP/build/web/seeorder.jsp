<%-- 
    Document   : seeorder
    Created on : Apr 18, 2013, 6:10:24 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
         <link href="css/seeoredr.css" rel="stylesheet" type="text/css">
    </head>
    <body background="images/back.gif"> <%@page language="java" import="java.sql.*" %>
        <div id="jsp">
		<%

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
Statement stm = con.createStatement();
       String s=(String)session.getAttribute("auth");
       if(s=="yes")
    {

ResultSet rst=stm.executeQuery(" SELECT *FROM `order`ORDER BY `order`.`orderticket` ASC");

       //
       // select all order from database
       //


          out.println("<table border=1 align='center' cellpadding='1' bordercolor='#000000' bgcolor='#9999FF' id='table1'><tr bgcolor='#9966FF'><th>Order ticket</th><th>First name</th><th>Last name</th><th>Email</th><th>Contact no</th><th>Country</th><th>Address</th></tr>");
          while(rst.next())
            {
            out.println("<tr>");
            out.println("<td>"+rst.getString("orderticket")+"</td>");
            out.println("<td>"+rst.getString("firstname")+"</td>");
            out.println("<td>"+rst.getString("lastname")+"</td>");
            out.println("<td>"+rst.getString("email_address")+"</td>");
            out.println("<td>"+rst.getString("contactno")+"</td>");
            out.println("<td>"+rst.getString("country")+"</td>");
             out.println("<td>"+rst.getString("address")+"</td>");
             out.println("</tr>");
            }
  out.println("</table>");
              }
         else
             {
             out.println("only Administrator can access this page");
             }

        %>
	</div>
		<script>
function loc11()
{
location.href='index.jsp';
}
</script>
<input type='button' id=b11 value='Home' onclick="loc11()" />

<script>
function loc12()
{
location.href='aboutus.jsp';
}
</script>
<input type='button' id=b12 value='About us' onclick="loc12()" />

<script>
function loc1()
{
location.href='login.jsp';
}
</script>
<input type='button' id=b1 value='User Login' onclick="loc1()" />
<script>
function loc2()
{
location.href='show.jsp';
}
</script>
<input type='button' id=b2 value='Show All Books' onclick="loc2()" />
<script>
function loc3()
{
location.href='searchbook.jsp';
}
</script>
<input name="button" type='button' id=b3 onClick="loc3()" value='Search Book' />
<script>
function loc4()
{
location.href='contactus.jsp';
}
</script>
<input type='button' id=b4 value=contactus onclick="loc4()" />

    </body>
</html>
