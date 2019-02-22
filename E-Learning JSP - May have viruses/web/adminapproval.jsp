<%-- 
    Document   : adminapproval
    Created on : Apr 13, 2014, 5:59:02 PM
    Author     : ankur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="mypack.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin approval Page</title>
    </head>
    <body>
        <h1>admin approval World!</h1>
        <%
        String type=request.getParameter("approval");
        out.println(type);
        String id=request.getParameter("id");
        
        Connection con;
        PreparedStatement ps;

        //out.println(stream);
        //out.println(sem);
        //out.println(sub);
          con=MyCon.getConnection();
          //
          // agr id has something reverse value
          
      
          
         String data;
         
         if(type.equals("course"))
         {
             if(id!=null)
             {
                  String sql1="select approved from course where id="+id+"";

                   ps=con.prepareStatement(sql1);
                  ResultSet rs = ps.executeQuery();
         
                   String dapprove=null;
                  while(rs.next())
                 {
                 dapprove=rs.getString("approved");
                               
                           
                 }
                   
                   if(dapprove.equals("yes"))
                   {
                       dapprove="no";
                   }
                   else
                  {
                      dapprove="yes"; 
                   }
                   //out.print(dapprove);
                   //ab database mai dal
                   
                   sql1="UPDATE course SET approved='"+dapprove+"' WHERE id="+id+"";
                   
                    ps=con.prepareStatement(sql1);
                  int x = ps.executeUpdate();
                  
             }
         
             
             
             
         String sql="select * from course ";

          ps=con.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();
          String first = null;
         
          while(rs.next())
          {
              if(first==null)
              {
                 out.println("<table border='1'><thead><tr><th>id</th><th>stream</th><th>semester</th><th>subject</th><th>link</th><th>type</th><th>approved</th></tr></thead><tbody>");
                 first="set";
              }
              String dapprove=rs.getString("approved");
              String did=rs.getString("id");
                        out.println("<tr>");
                         out.println("<td>");
                        out.println(rs.getString("id"));   
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rs.getString("stream"));   
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rs.getString("semester"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rs.getString("subject"));
                        out.println("</td>");
                        
                        out.println("<td>");
                        data=rs.getString("data");
                        out.print("<a href='"+data+"'>"+data+"</a>");
                        out.println();
                        out.print("");
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rs.getString("type"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<a href=adminapproval.jsp?approval=course&id="+did+">"+dapprove+"</a>");
                        out.println("</td>");
                      
                        out.println("</tr>");
          }
          
          out.println("</tbody></table>");

          
         }
         else if(type.equals("feedback"))
         {
             
             
             
             
             
             if(id!=null)
             {
                  String sql1="select approve from feedback where id="+id+"";

                   ps=con.prepareStatement(sql1);
                  ResultSet rs = ps.executeQuery();
         
                   String dapprove=null;
                  while(rs.next())
                 {
                 dapprove=rs.getString("approve");
                               
                           
                 }
                   
                   if(dapprove.equals("yes"))
                   {
                       dapprove="no";
                   }
                   else
                  {
                      dapprove="yes"; 
                   }
                   //out.print(dapprove);
                   //ab database mai dal
                   
                   sql1="UPDATE feedback SET approve='"+dapprove+"' WHERE id="+id+"";
                   
                    ps=con.prepareStatement(sql1);
                  int x = ps.executeUpdate();
                  
             }
         
             //
             String sq="select * from feedback ";

          ps=con.prepareStatement(sq);
          ResultSet rsf = ps.executeQuery();
          String second = null;
         
          while(rsf.next())
          {
              if(second==null)
              {
                 out.println("<table border='1'><thead><tr><th>id</th><th>date</th><th>name</th><th>email</th><th>feedback</th><th>approve</th></tr></thead><tbody>");
                 second="set";
              }
               String dapprove=rsf.getString("approve");
              String did=rsf.getString("id");
                        out.println("<tr>");
                        out.println("<td>");
                        out.println(rsf.getString("id"));   
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsf.getString("date"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsf.getString("name"));
                        out.println("</td>");
                        
                        out.println("<td>");
                        data=rsf.getString("email");
                        out.print("<a href='"+data+"'>"+data+"</a>");
                        out.println();
                        out.print("");
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsf.getString("feedback"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<a href=adminapproval.jsp?approval=feedback&id="+did+">"+dapprove+"</a>");
                        out.println("</td>");
                      
                        out.println("</tr>");
          }
          
          out.println("</tbody></table>");
         }
         else
         {
             
             if(id!=null)
             {
                  String sql1="select type from registration where id="+id+"";

                   ps=con.prepareStatement(sql1);
                  ResultSet rs = ps.executeQuery();
         
                   String dapprove=null;
                  while(rs.next())
                 {
                 dapprove=rs.getString("type");
                               
                           
                 }
                   
                   if(dapprove.equals("student"))
                   {
                       dapprove="faculty";
                   }
                   else
                  {
                      dapprove="student"; 
                   }
                   //out.print(dapprove);
                   //ab database mai dal
                   
                   sql1="UPDATE registration SET type='"+dapprove+"' WHERE id="+id+"";
                   
                    ps=con.prepareStatement(sql1);
                  int x = ps.executeUpdate();
                  
             }
         
            
String sqr="select name,contactNo,email,id,type,college from registration ";

          ps=con.prepareStatement(sqr);
          ResultSet rsr = ps.executeQuery();
          String third = null;
         
          while(rsr.next())
          {
              if(third==null)
              {
                 out.println("<table border='1'><thead><tr><th>id</th><th>name</th><th>email</th><th>contactNo</th><th>college</th><th>type</th></tr></thead><tbody>");
                 third="set";
              }
              String dapprove=rsr.getString("type");
              String did=rsr.getString("id");
                        out.println("<tr>");
                        out.println("<td>");
                        out.println(rsr.getString("id"));   
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsr.getString("name"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsr.getString("email"));
                        out.println("</td>");
                        
                        out.println("<td>");
                        data=rsr.getString("contactNo");
                        out.print("<a href='"+data+"'>"+data+"</a>");
                        out.println();
                        out.print("");
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsr.getString("college"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<a href=adminapproval.jsp?approval=registration&id="+did+">"+dapprove+"</a>");
                        out.println("</td>");
                      
                        out.println("</tr>");
          }
          
          out.println("</tbody></table>");
                    
             
         }
        
            
       
        %>
        
    </body>
</html>
