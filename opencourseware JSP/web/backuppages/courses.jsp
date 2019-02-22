<%-- 
    Document   : courses
    Created on : Apr 13, 2014, 2:43:38 PM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page language="java" import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/abhi.css" rel="stylesheet" type="text/css">
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
        else if(z=='6')
     {
       location.href='testlist.jsp';
     }


}


</script>
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
<%

Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
    Statement stm = con.createStatement();
        //String s="INSERT INTO book_detail(`book_name` ,`book_author` ,`book_price`) VALUES ('kukujaora', '9039210587', '200')";
        //boolean a=stm2.execute(s);
       ResultSet rst=stm.executeQuery("select * from course where approved='yes' order by stream asc,semester asc");


          out.println("<table border='1' width='1200px' align='center' cellpadding='1' bordercolor='#000000' bgcolor='#FFFFCC' id='table1'><tr bgcolor='#9966FF'><th>Id</th><th>Stream</th><th>sub</th><th>type</th></tr>");

          while(rst.next())
            {
              String type=rst.getString("type");
              int id=rst.getInt("id");
              String link=rst.getString("data");
            out.println("<tr>");
            out.println("<td>"+rst.getInt("id")+"</td>");
            out.println("<td>"+rst.getString("stream")+"</td>");
            //out.println("<td>"+rst.getString("semester")+"</td>");
            out.println("<td>"+rst.getString("subject")+"</td>");
            if(type.equals("text/plain"))
            {
            out.println("<td><a href='"+link+"'><img src=images/txt.jpg height=40 width=40 /></a></td>");
            }
            else if(type.equals("text/html"))
               {
            out.println("<td><a href='"+link+"'><img src=images/html.jpg height=40 width=40 /></a></td>");
               }
            else if(type.equals("application/pdf"))
                {
             out.println("<td><a href='"+link+"'><img src=images/pdf.jpg height=40 width=40 /></a></td>");
                }
            else if(type.equals("image/jpeg"))
                {
             out.println("<td><a href='"+link+"'><img src=images/other.jpg height=40 width=40 /></a></td>");
                }
            else
                {
               out.println("<td><a href='"+link+"'><img src=images/other2.jpg height=40 width=40 /></a></td>");
                }
          // out.println("<td><a href='test.jsp?id="+id+"'>take test</a></td>");
            out.println("</tr>");
            }
  out.println("</table>");
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
