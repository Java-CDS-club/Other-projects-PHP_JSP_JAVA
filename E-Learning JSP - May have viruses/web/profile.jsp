<%-- 
    Document   : profile
    Created on : Apr 13, 2014, 5:13:24 PM
    Author     : ankur
--%>

<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String name =(String)session.getAttribute("name");
        String email =(String)session.getAttribute("email");
        String type=request.getParameter("type");
        if(type.equals("student"))
        {
            
            Student s=new Student(name,email);
            
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
            
            
            
            out.println(s.semail);
        }
        else if(type.equals("faculty"))
        {
           
             Faculty s=new Faculty(name,email);
            
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
            
            
            
            out.println(s.femail);
            
            
        }
        
        
        
        
        
        %>
        
    </body>
</html>
