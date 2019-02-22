<%-- 
    Document   : exp
    Created on : Apr 16, 2014, 7:27:07 PM
    Author     : magic
--%>

<%@page import="newmath.NewMath"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<script type="text/javascript" language="javascript">

function DisableBackButton() {
window.history.forward()
}
DisableBackButton();
window.onload = DisableBackButton;
window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
window.onunload = function() { void (0) }
</script>

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
       location.href='login.jsp';
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

        
        <link href="css/abhi.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style2 {font-size: 18px}
.style4 {font-family: "Comic Sans MS"}
.style5 {color: #FF0000}
.style6 {font-size: 18px; color: #0000FF; }
-->
</style>
        
    </head>
    <body>
        <h1>Hello World!</h1>
        <%

        int[] arry=new int[10];

         String arng="arng";

         double x=Math.random();
         //out.println(x);
         int y=(int)(x*10);
         y=y%2;
         arng=arng+y;
         out.println(arng);

        %>


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
              <td><input name="button2" type='button' id='button' onclick="loc(2)" value='Login' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(3)" value='Show Courses' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value=contactus /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value=feedback /></td>
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

    </body>
</html>
