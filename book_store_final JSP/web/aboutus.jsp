<%-- 
    Document   : aboutus
    Created on : Apr 20, 2013, 4:26:40 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {font-size: 36pt; }
-->
</style></head>
    <body background="images/back.gif">
        <h1 align="center" class="style2">&nbsp;</h1>
        <h1 align="center" class="style2">About Us </h1>
        <p align="center"><span class="style1">we are the leading online bookseller having a huge collection of books </span></p>
        <p align="center"><span class="style1">from national and international publishers.Selling books of both </span></p>
        <p align="center"><span class="style1">Technical &amp; Non Technical streams at best market prices.</span></p>
        <p align="center"><span class="style1">We would be expanding our services in few more cities in the comming</span></p>
        <p align="center"><span class="style1">future.</span></p>
        <p align="center">&nbsp;</p>
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
