<%-- 
    Document   : logout
    Created on : Apr 17, 2014, 5:16:29 PM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            //settimeout("location.href=home.jsp",10);
        </script>
        <%
        session.setAttribute("user",null);
        out.print("you are logged out");
        response.sendRedirect("home.jsp");
        %>

    </body>
</html>
