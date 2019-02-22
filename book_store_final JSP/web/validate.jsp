<%-- 
    Document   : validate
    Created on : Apr 15, 2013, 10:34:07 PM
    Author     : black_queen
--%>

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
        <%@page language="java" import="java.sql.*,java.util.*" session="true" %>

        <div id="fdiv">
          <%
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
        Statement stm=con.createStatement();
        ResultSet rst=stm.executeQuery("select * from user");

        String usr=request.getParameter("username");
        String pass=request.getParameter("password");
        int set=0;
        while(rst.next())
            {
            String temp1 = rst.getString("username");
            String temp2 = rst.getString("password");
            
            if((usr.equals(temp1))&&(pass.equals(temp2)))
                {
                out.println("user verified<br>");
                out.println("you are sucessfully LOGGED IN<br>");
				out.println("Now you can buy Books using your credentials<br>");
				out.println("<a href=show.jsp>SHOW ALL BOOKS</a><br>");
				out.println("<a href=index.jsp>HOME PAGE</a><br>");
                session.setAttribute("user",usr);
                if(temp1.equals("admin"))
                    {
                     session.setAttribute("auth","yes");
                     out.println("<script>setTimeout(location.href='admin.jsp',5000);</script>");
                     out.println("inside redirect :");
                     out.println(temp1=="admin");
                    }
                set=1;
                out.println("WELCOME "+usr+"<br>");
                break;
                }
            }
               if(set==0)
                {
                out.println("user record not found<br><a href='register.jsp'>register as new user</a> or go back to <a href='login.jsp'>login page</a>");
                }

        %>
    </div>

    </body>
</html>
