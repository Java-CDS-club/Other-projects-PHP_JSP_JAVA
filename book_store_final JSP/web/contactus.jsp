<%-- 
    Document   : contactus
    Created on : Apr 16, 2013, 8:14:07 PM
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
         <style type="text/css">
<!--
.style1 {font-size: 58px}
-->
         </style>
         <link href="css/contactus.css" rel="stylesheet" type="text/css">
         <style type="text/css">
<!--
.style2 {font-size: 18px}
.style4 {font-family: "Comic Sans MS"}
.style5 {color: #FF0000}
.style6 {font-size: 18px; color: #0000FF; }
-->
         </style>
</head>
    <body background="images/back.gif">
        <h1 align="center">&nbsp;</h1>
        <h1 align="center" class="style1">Contact Us</h1>
        <p align="center" class="style2">online book store</p>
        <p align="center" class="style2">Address : 1652 M.G. ROAD ,MHOW </p>
        <p align="center" class="style2"> Indore , (Madhya Pradesh,India)</p>
        <div id="content2">
          <p align="center" class="style2">&nbsp;</p>
          <p align="center" class="style2"><strong>Sales Department Manager </strong>:<span class="style5"> MR. PAWAN YADAV</span></p>
          <p align="center" class="style6">mob : +91 8827056860</p>
          <p align="center" class="style6">email : pawan@yahoomail.com </p>
        </div>
          <div class="style4" id="content">
            <p align="center" class="style2">&nbsp;</p>
            <p align="center" class="style2"><strong>BookStore Manager</strong> : <span class="style5">MR. SHUBHAM AGRAWAL </span></p>
            <p align="center" class="style6">mob: +91 9424480414</p>
            <p align="center" class="style6">email : agrawalshubham9250@yahoo.com </p>
            <p align="center" class="style2">&nbsp;</p>
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
