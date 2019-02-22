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

<script type="text/javascript">
    var z;
function loc(z)
{
     if(z=='1')
     {
<%
String dtype=(String)session.getAttribute("user");
String dpassword=(String)session.getAttribute("password");
String duser=(String)session.getAttribute("type");
if((dtype!=""&&dtype!=null))
{
    out.print("location.href='profile.jsp?username="+dtype+"&password="+dpassword+"&type="+duser+"';");
}
else
{
out.print("location.href='home.jsp';");
}
String hbutton=(dtype!=""&&dtype!=null)?"User Home":"Home";
%>
     }
     else if(z=='2')
     {
<%
//String dtype=(String)session.getAttribute("user");
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
      <td width="1226" bgcolor="#663366">
          <img src="images/h2.jpg" />
      </td>
    </tr>
    <tr bgcolor="#1941A5">
      <td height="40" bgcolor="#FFFFCC">
	    <center>
	      <table width="951" border="0">
            <tr>
              <td><input name="button" type='button' id='button' onclick="loc(1)" value='<%=hbutton%>' /></td>
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
    <tr background="images/logo.jpg">
      <td height="235"><p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td>
          <iframe src="announcement.jsp" width="30%" frameborder="0" scrolling="no"></iframe>
          <a href="courses.jsp?stream=cs"><img src="images/cs.jpg" height="200" width="250"/></a>
            <a href="courses.jsp?stream=it"><img src="images/it.jpg" height="200" width="250"/></a>
          <a href="courses.jsp?stream=proglang"><img src="images/Java.jpg" height="200" width="250"/></a>
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
