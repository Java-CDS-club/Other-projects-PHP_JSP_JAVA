<%-- 
    Document   : login
    Created on : Apr 13, 2014, 12:05:18 PM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link href="css/login.css" rel="stylesheet" type="text/css" />
           <link href="css/abhi.css" rel="stylesheet" type="text/css" />
           <script type="text/javascript" language="javascript">

function DisableBackButton() {
window.history.forward()
}
DisableBackButton();
window.onload = DisableBackButton;
window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
window.onunload = function() { void (0) }
</script>
    </head>
    <body background="images/back.gif">
<%
String user=(String)session.getAttribute("user");
String msg=user!=null?"your are already logged in":"";
%>
<script>
function fun()
{
                
var a=document.getElementById("t1").value;
if (a==null || a=="")
  {
z=document.getElementById("m1");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
  else
    {
z=document.getElementById("m1");
z.innerHTML="";
    }
    var a=document.getElementById("t2").value;
if (a==null || a=="")
  {
z=document.getElementById("m2");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
  else
    {
z=document.getElementById("m2");
z.innerHTML="";
    }

            }
        </script>
         <%@page language="java" import="java.sql.*,java.util.*" %>

        <form action='profile.jsp' method='get' onsubmit='return fun()'>

            <table border='0' id='username' >
                <tbody>
                    <tr>
                 <td>
                USERNAME:
		  </td>
                        <td><input id="t1" type="text" name="username"><label id=m1>.</label></td>
                    </tr>
                    <tr>
                        <td>PASSWORD:</td>
                        <td><input id="t2" type="password" name="password"><label id=m2>.</label></td>
                    </tr>
                     <tr>
                        <td>TYPE:</td>
                        <td><select id="type" name="type" class="dropdown"><option>student</option><option>faculty</option><option>admin</option></select></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input id="submit" type="submit" value="submit"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><a href="register.jsp" id="link">REGISTER AS NEW USER</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
<%
%>

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
      <td height="235">
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
