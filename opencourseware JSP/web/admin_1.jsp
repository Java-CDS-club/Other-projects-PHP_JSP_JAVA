<%-- 
    Document   : admin
    Created on : Apr 13, 2014, 12:32:11 PM
    Author     : magic
--%>

<%@page import="myclasses.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/abhi.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
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
       location.href='adminapproval.jsp?approval=course';
     }
      else if(z=='4')
     {
       location.href='adminapproval.jsp?approval=feedback';
     }
      else if(z=='5')
     {
       location.href='adminapproval.jsp?approval=user';
     }
      else if(z=='6')
     {
       location.href='addtest.jsp';
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
               <td><input name="button2" type='button' id='button' onclick="loc(3)" value='course approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value='feedback approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value='user approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(6)" value='create test' /></td>
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
        <%
           Admin s=new Admin();

            String data=s.updateprofile();
            String t=s.searchcourse();
            String q=s.upload();
           // String r=s.managedatabase();
            String w=s.logout();
            out.println(data);
            out.println(t);
            out.println(q);
            //out.println(r);
            out.println(w);
           // out.println("Manage Database:<a href='adminapproval.jsp?approval=course'> <img src='images/update profile.jpg' /></a> <a href='adminapproval.jsp?approval=feedback'> <img src='images/update profile.jpg'/></a><a href='adminapproval.jsp?approval=registration'> <img src='images/update profile.jpg' /></a>");
             //out.println("<br>Manage Database:<a href='adminapproval.jsp?approval=course'>course approval</a> <a href='adminapproval.jsp?approval=feedback'>feedback approval</a><a href='adminapproval.jsp?approval=registration'>user approval</a><a href='addtest.jsp'>Create test</a>");
        %>

        
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
