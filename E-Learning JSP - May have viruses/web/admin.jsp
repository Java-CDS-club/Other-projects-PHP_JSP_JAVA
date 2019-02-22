<%-- 
    Document   : admin
    Created on : Apr 13, 2014, 5:50:40 PM
    Author     : ankur
--%>

<%@page import="model.*"%>
<%@page import="model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           Admin s=new Admin();
            
            String data=s.updateprofile();
            String t=s.searchcourse();
            String q=s.upload();
            String r=s.managedatabase();
            String w=s.logout();
            out.println(data);
            out.println(t);
            out.println(q);
            out.println(r);
            out.println(w);
           



        %>
    </body>
</html>
