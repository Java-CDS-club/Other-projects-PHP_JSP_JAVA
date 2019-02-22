<%--
    Document   : index
    Created on : Apr 13, 2014, 10:56:38 AM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/abhi.css" rel="stylesheet" type="text/css" />
         <style type="text/css">
<!--
.style2 {font-size: 18px}
.style4 {font-family: "Comic Sans MS"}
.style5 {color: #FF0000}
.style6 {font-size: 18px; color: #0000FF; }
-->
         </style>

<script type="text/javascript">
    var z;
function loc(z)
{
     if(z=='1')
     {
       location.href='home.jsp';
     }
     else if(z=='2')
     {
<%
String dtype=(String)session.getAttribute("user");
if((dtype!=""&&dtype!=null))
{
    out.print("location.href='logout.jsp';");
}
else
{
out.print("location.href='login.jsp';");
}

String button=(dtype!=""&&dtype!=null)?"logout":"login";
%>
     }
      else if(z=='3')
     {
       location.href='courses.jsp';
     }
      else if(z=='4')
     {
       location.href='contactus.jsp';
     }
      else if(z=='5')
     {
       location.href='feedback.jsp';
     }


}


</script>
</head>

<body>
<div id="header">
<center>
  <table width="1236" height="107" border="0">
    <tr bgcolor="#663366">
      <td width="1226" bgcolor="#663366"><img src="images/h2.jpg" /></td>
    </tr>
    <tr bgcolor="#1941A5">
      <td height="40" bgcolor="#FFFFCC">
	    <center>
	      <table width="951" border="0">
            <tr>
              <td><input name="button" type='button' id='button' onclick="loc(1)" value='Home' /></td>
               <td><input name="button2" type='button' id='button' onclick="loc(3)" value='Show Courses' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value=contactus /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value=feedback /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(2)" value='<%=button%>' /></td>
            </tr>
          </table>
	    </center>	  </td>
    </tr>
  </table>
  </center>
</div>
<div id="content">
<center>
  <table width="1236" height="480" border="1">
    <tr>
      <td height="235" bgcolor="#FFFFCC">
          
<h1 align="center" class="style1">Contact Us</h1>
        <p align="center" class="style2"></p>
        <p align="center" class="style2">Address : 1652 M.G. ROAD ,MHOW </p>
        <p align="center" class="style2"> Indore , (Madhya Pradesh,India)</p>
      <div class="style4" id="content">
            <p align="center" class="style2">&nbsp;</p>
            <p align="center" class="style2"><strong>Admin</strong> : <span class="style5">MR. SHUBHAM AGRAWAL </span></p>
            <p align="center" class="style6">mob: +91 9424480414</p>
            <p align="center" class="style6">email : agrawalshubham9250@yahoo.com </p>
            <p align="center" class="style2">&nbsp;</p>
    </div>
        <div id="content2">
          <p align="center" class="style2">&nbsp;</p>
          <p align="center" class="style2"><strong>Content Manager </strong>:<span class="style5"> MR. RAHUL PATIDAR</span></p>
          <p align="center" class="style6">mob : +91 9770433983</p>
          <p align="center" class="style6">email : patidar207@gmail.com </p>
        </div>

        
      </td>
    </tr>
  </table>
</center>
</div>
<div id="footer">
<center>
  <table width="1236" border="1">
    <tr bgcolor="#663366">
      <td width="1236">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>
</body>
</html>
