<%-- 
    Document   : feedback
    Created on : Mar 29, 2014, 1:38:24 PM
    Author     : ankur
--%>

<%@page import="model.Feedback"%>
<%@page import="dao.FeedbackImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback page</title>
        <style>
            #p1
            {
            background-color: yellowgreen;
            }
            
        </style>
    </head>
    <body>
    <center>
        <%@page import="java.sql.*" %>
        <%@page import="mypack.MyCon" %>

        <form action="" method="post">
        <table border="0" align="center">
        
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="mail" name="email" value="" /></td>
                </tr>
                <tr>
                    <td>Feedback</td>
                    <td><textarea name="feedback" rows="4" cols="20">
                        </textarea></td>
                </tr>
                <tr><td></td><td colspan="2"><input type="submit" value="submit" /></td></tr>
        </table>
        </form>
                
        <% 
         Connection con;
         PreparedStatement ps;
         
 
 try {
             con=mypack.MyCon.getConnection();
              FeedbackImpl fi=new FeedbackImpl();
              Feedback f=new Feedback(request.getParameter("name"),request.getParameter("email"),request.getParameter("feedback"),request.getParameter("approve"));
              
              fi.feedback(f);
             //ps=con.prepareStatement("select date,name,feedback from feedback where approve='yes'");
              ps = con.prepareStatement("select date,name,feedback from feedback where approve='yes' order by id desc");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                  out.println("<p id=p1>");
                     out.println(rs.getString("feedback")+"<br />");
                    
                    out.println(rs.getString("name")+"   ");
                    out.println(rs.getDate("date")+"<br />");
                  
                  out.println("</p><br />");
                   
                  
             }
            
            
              
            }
        catch(Exception e)
        {
            e.printStackTrace();
        }   
            
       

                                
         %>
        
    </center>
    </body>
</html>
