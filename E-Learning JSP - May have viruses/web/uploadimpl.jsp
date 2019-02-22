<%-- 
    Document   : uploadimpl
    Created on : Mar 30, 2014, 5:49:30 PM
    Author     : ankur
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@page import="com.oreilly.servlet.MultipartRequest"%> 
  <%@page import="java.util.*"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
      
    <%
     String dir="d://new//";    
     MultipartRequest m= new MultipartRequest(request,dir,1363711111);
     out.print("successfully uploaded  ");
     Enumeration e=m.getFileNames();
      //Enumeration e1 = m.getParameterNames();
    String name=null;
    String content=null;
    //String content = getValue(request.getPart("stream"));
    
    while(e.hasMoreElements())
    {
    
    name=(String) e.nextElement();
    content=m.getContentType(name);
    }
    out.println(name);
      out.println(content);   
      int x=content.indexOf("image");
        out.println(x); 

if(x==0)
{
    dir=dir+"images//";
    
}      
else
{
   dir=dir+"video//";         
}
       // out.println(dir);
        //MultipartRequest i = new MultipartRequest(request,dir,1363711111);
                      
        
    %>   
    </body>
</html>
