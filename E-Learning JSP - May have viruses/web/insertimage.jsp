<%-- 
    Document   : insertimage
    Created on : Apr 3, 2014, 7:17:04 PM
    Author     : ankur
--%>
@MultipartConfig
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="mypack.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action ="search.jsp" method="post" enctype="multipart/form-data">
        <%
             Connection con;
             PreparedStatement ps;
      
           try
          {
             String stream="";
            String subject="";
            String semester="";
            String itemName="";
            boolean isMulltipart=ServletFileUpload.isMultipartContent(request);
            if(!isMulltipart)
            {
                
            }
            else
            {
                FileItemFactory factory=new DiskFileItemFactory();
                ServletFileUpload upload=new ServletFileUpload(factory);
                List items=null;
                try
                {
                    items=upload.parseRequest(request);
                }
                catch(FileUploadException e)
                {
                    e.getMessage();                                     
                }
                Iterator itr=items.iterator();
                while(itr.hasNext())
               {
                    FileItem item=(FileItem) itr.next();
                    if(item.isFormField())
                   {
                    String name=item.getFieldName();
                    out.println("name="+name);
                
                    String value=item.getString();
                    out.println("value="+value);
                    if(name.equals("stream")) 
                    {
                     stream =value;  
                                      
                    }
                    if(name.equals("semester")) 
                    {
                     semester =value;  
                    }
                     if(name.equals("subject")) 
                    {
                     subject =value;  
                                      
                    }                                                                                                       
                   }
                  else
                  {
                        try
                       {
                                                      
                          itemName=item.getName();
                          out.println("itm name="+itemName);
                          File savedFile=new File(config.getServletContext().getRealPath("/")+"\\new\\"+itemName);  
                          item.write(savedFile);                             
                                
                       } 
                      catch(Exception e)
                      { 
                          out.println("Error"+e.getMessage());    
                      }                                                                                              
                   }
            }  
                
           try
            {
                con=mypack.MyCon.getConnection();
                ps=con.prepareStatement("insert into upl values(?,?,?,?,?)");
                ps.setString(1, itemName);
                 ps.setString(2, stream);
                  ps.setString(3, semester);
                   ps.setString(4, subject);
                   ps.setString(5,"Download");
                   ps.executeUpdate();
            }                                                                                                                               
          
           catch(Exception e)
           {
             out.println("insertin error"+e.getMessage());
           } 
       
           }
        }
catch(Exception e)
{
 out.println(e.getMessage());
}                                    
                                    
       %>
        
       <input type="submit" value="View File" name="View" />
      </form>
        
       
    </body>
</html>
