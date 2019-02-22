<%-- 
    Document   : study
    Created on : Apr 13, 2014, 8:35:26 PM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>studyPage</title>
    </head>
    <body>
        <h1>Hello World!</h1>

<%@page language="java" import="java.sql.*,java.util.*" session="true" %>
<%
String id=request.getParameter("id");
String type=request.getParameter("type");
out.println(id);
out.println(type);
if(type.equals("vedio"))
    {

    }

out.println("<div id='embed1' style='position:absolute; overflow:hidden; left:222px; top:90px; width:606px; height:404px; z-index:0'>");
out.println("<script type='text/javascript'>");
out.println("AC_RunMMContent('codebase','http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,5,715','id','embed1','width','606','height','404','autostart','true','src','file:///D:/med.wmv');");
out.println("</script>");
out.println("</div>");

%>

<script type='text/javascript'>
AC_RunMMContent('codebase','http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,5,715','id','embed1','width','606','height','404','autostart','true','src','file:///D:/med.wmv');
</script>
    <vedio src="study/med.mp3"></vedio>

           <table border="0" width="1" cellspacing="1" cellpadding="40">
                <tr>
                    <td><input type='button' id=b11 value='Home' onclick="loc(1)" /></td>
                    <td><input type='button' id=b2 value='Register' onclick="loc(2)" /></td>
                    <td><input type='button' id=b1 value='Show Courses' onclick="loc(3)" /></td>
                    <td><input type='button' id=b3 value=contactus onclick="loc(4)" /></td>
                    <td><input type='button' id=b12 value=feedback onclick="loc(5)" /></td>
                </tr>
        </table>
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
       location.href='register.jsp';
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

    
    </body>
</html>
