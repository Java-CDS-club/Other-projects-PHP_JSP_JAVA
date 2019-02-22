<%-- 
    Document   : login
    Created on : Apr 15, 2013, 10:25:41 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link href="css/login.css" rel="stylesheet" type="text/css" />
		    <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
         <%@page language="java" import="java.sql.*,java.util.*" %>
        <form action="validate.jsp" method="get">
            <div id="username">
                USERNAME:<input id="t1" type="text" name="username">
                <br>
		  </div>
            <div id="password">PASSWORD:<input id="t2" type="password" name="password">
            <br>
            </div>
            <input id="submit" type="submit" value="submit">
            <a href="register.jsp" id="link">REGISTER AS NEW USER</a>
        </form>
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
