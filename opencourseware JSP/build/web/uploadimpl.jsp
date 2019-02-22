<%-- 
    Document   : uploadimpl
    Created on : Apr 13, 2014, 9:36:17 PM
    Author     : magic
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/abhi.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            function fun1()
            {
               // alert(document.cookie);
            }
         </script>
    </head>
    <body onload="fun1()">
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
if(dtype!="")
{
    out.print("location.href='logout.jsp';");
}
else
{
out.print("location.href='login.jsp';");
}

String button=dtype!=""?"logout":"login";
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
    <%@ page import="com.oreilly.servlet.MultipartRequest" import="java.util.*" import="javax.servlet.http.*" %>
    <%

Cookie[] ck=request.getCookies();
String stream =(String)ck[0].getValue();
String sem =(String)ck[1].getValue();
String strDirectory=null;
String link=null;
//agr prog lang aye to sem ko null kr do
if(stream.equals("proglang"))
    {
    strDirectory = "study//"+stream+"";
    link="study/"+stream+"/";
    }
else
    {
    //strDirectory = "study//"+stream+"//"+sem+"";
    strDirectory = "study//"+stream+"";
    //link="study/"+stream+"/"+sem+"/";
    link="study/"+stream+"/";
    }


    String name,type=null,filename=null,originalFilename,extension1,extension2;
  
      // MultipartRequest m = new MultipartRequest(request, "d://new//",1363717809);
    
    String uploadPath = request.getRealPath(""+strDirectory+"//");
    CharSequence kisko="\\";
    CharSequence kissy="//";
    uploadPath=uploadPath.replace(kisko, kissy);
    MultipartRequest m = new MultipartRequest(request,uploadPath,1363717809);
    //out.print("successfully uploaded to "+uploadPath+"<br>");




    Enumeration files = m.getFileNames();
//getting a few details about each uploaded file
while (files.hasMoreElements()) {
   name = (String)files.nextElement();
   type = m.getContentType(name);
   filename = m.getFilesystemName(name);
   extension1 = filename.substring(filename.length() - 4, filename.length());
//out.println("<br />name:"+name);

//out.println("<br /> type:"+type);
//out.println("<br /> extension:"+extension1);

}


//String textarea =(String)ck[2].getValue();
//String textarea2 =(String)ck[3].getName();
//out.print("<br />"+textarea2);


String textarea = request.getParameter("textarea");
String data2 = request.getParameter("data2");
//put same record in database course table
try
        {
Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
        Statement stm=con.createStatement();
        String sql2= "INSERT INTO `opencourseware`.`course` (`id` ,`stream` ,`semester` ,`subject` ,`data` ,`type` ,`approved`)VALUES (NULL , '"+stream+"', '"+data2+"', "+textarea+", '"+link+filename+"', '"+type+"', 'yes');";
                int x=stm.executeUpdate(sql2);
        }
catch(Exception e)
    {
 out.println(e.getMessage());
    }

    %>

<div id="header">
<center>
  <table width="1236" height="107" border="0">
    <tr bgcolor="#663366">
      <td width="1226" bgcolor="#663366">  <img src="images/h2.jpg" /></td>
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
          <center>
              <h1>successfully uploaded</h1>
              <table border="0">
        <thead>
            <tr>
                <th><center>THANKS FOR UPLOADING</center></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Stream</td>
                <td><%out.print("<br />"+stream);%></td>
            </tr>
            <tr>
                <td>Subject</td>
                <td><%out.print("<br />"+data2);%></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%out.print("<br />"+textarea);%></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><% out.println("<a href='"+link+filename+"'>"+link+filename+"</a>");%></td>
            </tr>
            <tr>
                <td>Type</td>
                <td><% out.println(type);%></td>
            </tr>
        </tbody>
    </table>
     </center>
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
