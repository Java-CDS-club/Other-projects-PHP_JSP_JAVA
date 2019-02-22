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
#l1 {
	position: absolute;
	left: 470px;
	top: 250px;
}

#tf1
{
	color: #FF0033;
	background-color: #FFCC33;
	position:absolute;
	left: 570px;
	top: 250px;
}
#submit {
	background-color: #FF66FF;
	position: absolute;
	left: 614px;
	top: 366px;
}
#l2 {
	position: absolute;
	left: 470px;
	top: 290px;
}

#tf2
{
	color: #FF0033;
	background-color: #FFCC33;
	position:absolute;
	left: 570px;
	top: 290px;
}
#l3 {
	position: absolute;
	left: 470px;
	top: 330px;
}

#tf3
{
	color: #FF0033;
	background-color: #FFCC33;
	position:absolute;
	left: 570px;
	top: 330px;
}

</style>
    </head>
    <body background="images/back.gif">
        <h1 align="center" class="style2">&nbsp;</h1>
        <h1 align="center" class="style2">Extra page </h1>
        <p align="center">&nbsp;</p>
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
<form name="form1" method="post" action="">
  <label>
  <input name="tf1" type="text" id="tf1">
  </label>
<label id="l1">book name</label>
  <input name="tf2" type="text" id="tf2">
  </label>
<label id="l2">book name</label>
  <input name="tf3" type="text" id="tf3">
  </label>
<label id="l3">book name</label>
</form>

    <label>
    <input id="submit" type="submit" name="Submit" value="Submit">
    </label>
    </body>
</html>
