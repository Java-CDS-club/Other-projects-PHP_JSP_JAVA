<%-- 
    Document   : confirm
    Created on : Apr 16, 2013, 6:11:51 PM
    Author     : black_queen
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
        <div align="center">
          <%@page language="java" import="java.sql.*"%>
          <%

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
        Statement stm = con.createStatement();

        String s1=request.getParameter("firstname");
        String s2=request.getParameter("lastname");
        String s3=request.getParameter("email_address");
        String s4=request.getParameter("contactno");
        String s5=request.getParameter("country");
        String s9="";
        s5=s5.toUpperCase();
        if(s5.equals("INDORE"))
            {
               out.println("i am in if"+s5);
           
            }
        else
            {
              out.println("i am out of if"+s5);
               s9="<font color='red'>EXTRA ADDITIONAL SHIPPING CHARGE WILL BE APPLIED...</font>";
            }
        String s6=request.getParameter("address");



        if((s1==null && s6==null) ||(s1=="" && s6==""))
        {

                out.println("please fill the form first");

        }
        else
        {
            try{
       // String qry="insert into order(firstname,lastname,email_address,contactno,country,address) values('"+s1+"','"+s2+"','"+s3+"',"+s4+",'"+s5+"','"+s6+"')";
        String qry="INSERT INTO `book_store`.`order` (`orderticket`, `firstname`, `lastname`, `email_address`, `contactno`, `country`, `address`) VALUES (NULL, '"+s1+"', '"+s2+"', '"+s3+"', '"+s4+"', '"+s5+"', '"+s6+"')";
                boolean a=stm.execute(qry);
        con.close();
        }
            catch(SQLException ch)
                 {
                out.println(ch);
                }
        }
%>
        </div>
        <h1 align="center">&nbsp;</h1>
        <h1 align="center">Your Order Confirmed And would b dispatched as soon as possible</h1>
        <div align="center"><br>
        </div>
        <h2 align="center">On Following Details</h2>
        <div align="center">
          <%
out.println("Customer Name: "+s1+" ");
out.println(s2+"<br>");
out.println("email address: "+s3);
out.println("<br>contact no: "+s4);
out.println("<br>city: "+s5);
out.println("<br>Postal Address: "+s6);
out.println("<br>"+s9);
String s=(String)session.getAttribute("books");
 out.println("<br><blink><a href=show.jsp>want to purchase other book</a></blink>");
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
