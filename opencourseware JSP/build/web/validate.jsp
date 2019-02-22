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
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
        <link href="css/validate.css" rel="stylesheet" type="text/css">
    </head>
    <body background="images/back.gif">
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

        <%@page language="java" import="java.sql.*,java.util.*" session="true" %>

        <div id="fdiv">
          <%
        //from form
        String usr=request.getParameter("username");
        String pass=request.getParameter("password");
        //database connection
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        Statement stm=con.createStatement();
        ResultSet rst=stm.executeQuery("select * from registration where username='"+usr+"' and password='"+pass+"'");

  if(rst.next())
  {
            //exist ho to variable mai data aa gaye
                 String data1,data2;


                 String type = rst.getString("type");

            //set session for user name
                 session.setAttribute("user",usr);
                 out.println("WELCOME "+usr+"<br> you logged in as : "+type);

                if(type.equals("student"))
                    {
                    //out.println("student caught");
                    //make student class object
                    Student s=new Student(rst);
                    //fetch data after processing
                    data1=s.login();
                    data2=s.sname;
                    out.println(data1);
                    out.println(data2);
                    }
                else if(type.equals("faculty"))
                    {
                    //out.println("faculty caught");
                    //make  class object
                    Faculty f=new Faculty();
                    //fetch data after processing
                    String data=f.login();
                    out.println(data);
                    }
                 else if(type.equals("admin"))
                    {
                     session.setAttribute("auth","yes");
                     out.println("<script>setTimeout(location.href='admin.jsp',5000);</script>");
                     out.println("inside redirect :");
                    }

             
            //
            // below is previous code
            //
                
          /*      out.println("user verified<br>");
                out.println("you are sucessfully LOGGED IN<br>");
				out.println("Now you can buy Books using your credentials<br>");
				out.println("<a href=show.jsp>SHOW ALL BOOKS</a><br>");
				out.println("<a href=index.jsp>HOME PAGE</a><br>");
               
        */
               
                
  }
  else
  {
                out.println("user record not found<br><a href='register.jsp'>register as new user</a> or go back to <a href='login.jsp'>login page</a>");
  }

        %>
    </div>
    <div>
        <table border="1" width="1" cellspacing="1" cellpadding="1">
            <tbody>
                <tr>
                    <td>
         <table border="0" width="1" cellspacing="1" cellpadding="1">
            <tbody>
                <tr>
                    <td><a href="courses.jsp"><img src="images/cs.JPG" height="200" width="200"/>view courses</a></td>
                    <td><a href="courses.jsp"><img src="images/profile.JPG" height="200" width="200"/>update profile</a></td>
                </tr>
                <tr>
                    <td><a href=""><img src="images/FEEDBACK.JPG" height="200" width="200"/>feedback</a></td>
                    <td><a href="upload.jsp"><img src="images/test.JPG" height="200" width="200"/>upload</a></td>
                </tr>
                 <tr>
                    <td><a href="announcement.jsp"><img src="images/FEEDBACK.JPG" height="200" width="200"/>view announcements</a></td>
                    <td><a href="upload.jsp"><img src="images/test.JPG" height="200" width="200"/>upload</a></td>
                </tr>
            </tbody>
        </table>



                    </td>
                    <td>yha pr announcement</td>
                </tr>
            </tbody>
        </table>
        
    </div>

    </body>
</html>
