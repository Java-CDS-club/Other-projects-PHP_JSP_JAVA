<%--
    Document   : validate
    Created on : Apr 13, 2014, 12:11:18 PM
    Author     : magic
--%>

<%@page import="myclasses.*"%>
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
<%
String user=(String)session.getAttribute("user");
%>
<%
        String usr=request.getParameter("username");
        String pass=request.getParameter("password");
        String ftype=request.getParameter("type");
        //database connection
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
        Statement stm=con.createStatement();
        ResultSet rst=stm.executeQuery("select * from user where username='"+usr+"' and password='"+pass+"' and type='"+ftype+"'");
        String dtype="";
        String msg="";
  if(rst.next())
  {
            //exist ho to variable mai data aa gaye
                 String data1,data2;


                 dtype = rst.getString("type");

            //set session for user name
                 session.setAttribute("user",usr);
                 session.setAttribute("password",pass);
                 session.setAttribute("type",ftype);



  }
  else
  {
                msg="";
  }




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
      else if(z=='6')
     {
       location.href='testlist.jsp';
     }


}


</script>

        <%@page language="java" import="java.sql.*,java.util.*" session="true" %>

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
              <td><input name="button2" type='button' id='button' onclick="loc(6)" value='Test' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(3)" value='Show Courses' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value=contactus /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value=feedback /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(2)" value='<%=button%>' /></td>
            </tr>
          </table>
            </center>
      </td>
    </tr>
  </table>
  </center>
</div>
<div id="content">
<center>
<table width="1136" height="400" border="1">
<tr>
    <td>
          <%
        //from form
String msg2=dtype!=""?"<center><font color=red size='5'>WELCOME "+usr+"<br> you logged in as : "+dtype+"</center></font><br/>":"<center><font color=red size=12>user record not found<br><a href='register.jsp'>register as new user</a> or go back to <a href='login.jsp'>login page</a></font></center>";
out.println(msg2);

            if(dtype.equals("student"))
                    {
            Student s=new Student(usr);

            String data=s.updateprofile();
            String t=s.searchcourse();
            String q=s.viewannouncement();
            String r=s.feedback();
            String w=s.logout();
            out.println(data);
            out.println(t);
           out.println(q);
            out.println(r);
            out.println(w);
                    }
                else if(dtype.equals("faculty"))
                    {
             Faculty s=new Faculty(usr);

            String data=s.updateprofile();
            String t=s.searchcourse();
            String q=s.upload();
            String r=s.feedback();
            String w=s.logout();
            out.println(data);
            out.println(t);
            out.println(q);
            out.println(r);
            out.println(w);

                    }
                 else if(dtype.equals("admin"))
                    {
                     session.setAttribute("auth","yes");
                     out.println("<script>setTimeout(location.href='admin_1.jsp',5000);</script>");
                     out.println("inside redirect :");
                    }


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
