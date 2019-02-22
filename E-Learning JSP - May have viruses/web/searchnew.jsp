<%-- 
    Document   : searchnew
    Created on : Apr 4, 2014, 10:57:38 AM
    Author     : ankur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script type="text/javascript">
            var stream,semester;
            function fun1()
            {
                var x=document.getElementById("stream");
                stream=x.value;
                
               
                if(stream=='proglang')
                    {
                     var x=document.getElementById("semester");
                     x.innerHTML="";  
                    
                     var x=document.getElementById("subject");
                     x.innerHTML="<select name='subject'><option>C++</option><option>java</option></select>";
                    }
                    else
                        {
                          var x=document.getElementById("semester");
                          x.innerHTML="<select id='semestervalue' name='semester'><option onClick='check1()'>first</option><option onClick='check1()'>second</option><option onClick='check1()'>third</option><option onClick='check1()'>fourth</option><option onClick='check1()'>fifth</option><option onClick='check1()'>sixth</option><option onClick='check1()'>seventh</option><option onClick='check1()'>eighth</option></select>";
                        }
                    
            }
            function check1()
            {
                //alert("ter maa");
                var x=document.getElementById("semestervalue");
                semester=x.value;
                if(stream=='cs')
                    {
                       
                        
                        if(semester =='first')
                        {
                            
                var x=document.getElementById("subject");
                x.innerHTML="<select name='subject'><option>Engineering Physics</option><option>Energy,Environment,Ecology & Society</option><option >Basic Mechanical Engg</option><option >Basic Civil Engg and Engg Mechanics</option><option >Basic Computer Engg</option><option >Language Lab and Seminars</option></select>";
                            
                        }
                        else if(semester=='second')
                        {
                       
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Engineering Chemistry</option><option>Engineering Mathematics-I</option><option>Communication Skills</option><option>Basic Electricals & Electronics Engg</option><option>Engineering Graphics</option><option>Work Shop Practice</option></select>";
                        }
                     else if(semester=='third')
                        {
                           var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Mathematics-II</option><option>Discrete Structures</option><option>Digital Circuit & System</option><option>Electronics Devices & Circuits</option><option>Data Structures</option><option>Computer Programming(Java)</option></select>";
                        }
                        else if(semester=='fourth')
                        {
                          
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Mathematics III</option><option>Computer System Organization</option><option>Object Oriented Technology</option><option>Analysis & Design of Algorithm</option><option>Analog & Digital Communication</option><option>Computer Programming–IV(.Net Technologies)</option></select>";
                        }
                        else if(semester=='fifth')
                        {
                          
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Data Communication</option><option>Operating System</option><option>DataBase Management System</option><option>Computer Graphics & Multimedia</option><option>Theory of Computation</option><option>Computer Programming V(Unix/Linux Lab)</option></select>";
                        }
                        else if(semester=='sixth')
                        {
                          
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Micro Processor and Interfacing</option><option>Principles Of Programming Languages</option><option>Software Engg & Project Management</option><option>Computer Networking</option><option>Advance Computer Architecture</option><option>Minor Project</option></select>";
                        }
                        else if(semester=='seventh')
                        {
                          
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Compiler Design</option><option>Distributed System</option><option>Cloud Computing</option><option>Elective -I</option><option>Major Project</option></select>";
                        }
                        else if(semester=='eighth')
                        {
                          
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Soft Computing</option><option>Web Engineering</option><option>Elective -II</option><option>Elective -III</option><option>Major Project</option></select>";
                        }
                        
                    }
                    
                    // for it
                    
                    
                    if(stream =='it')
                    {
                        
                        if(semester=='first')
                        {
              
                var x=document.getElementById("subject");
                x.innerHTML=" <select name='subject'><option>Engineering Chemistry</option><option>Engineering Mathematics-I</option><option>Communication Skills</option><option>Basic Electricals & Electronics Engg</option><option>Engineering Graphics</option><option>Work Shop Practice</option></select>";
                            
                        }
                        else if(semester=='second')
                        {
                           
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Engineering Physics</option><option>Energy,Environment,Ecology & Society</option><option >Basic Mechanical Engg</option><option >Basic Civil Engg and Engg Mechanics</option><option >Basic Computer Engg</option><option >Language Lab and Seminars</option></select>";
                        }
                     else if(semester=='third')
                        {
                           
                              var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Mathematics-II</option><option>Discrete Structures</option><option>OOPS Methodology</option><option>Electronics Devices & Circuits</option><option>Data Structures & Algorithm</option><option>Java Technology</option></select>";
                        }
                        else if(semester=='fourth')
                        {
                           
                           var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Mathematics III</option><option>Computer System Organization</option><option>Data Base Management System</option><option>Analysis & Design of Algorithm</option><option>Analog & Digital Communication</option><option>Computer Programming\u2013IV(.Net Technologies)</option></select>";
                        }
                        else if(semester=='fifth')
                        {
                           var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Data Communication</option><option>Information Storage & Management</option><option>Computer Networks</option><option>System Programming and operating system</option><option>Java Programming</option><option>Java Programming Lab</option></select>";
                        }
                        else if(semester=='sixth')
                        {
                            var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Distributed Systems</option><option>Computer Graphics & Multimedia</option><option>Internet Technology & Network Management</option><option>Web Technology</option><option>Software Engineering & Project Management</option><option>Software Engineering Lab</option></select>";
                        }
                        else if(semester=='seventh')
                        {
                            var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Object Oriented Analysis and Design</option><option>Wireless & Mobile Computing</option><option>Cloud Computing</option><option>Elective -I</option><option>Elective -II</option><option>Minor Project</option></select>";
                        }
                        else if(semester=='eighth')
                        {
                           var x=document.getElementById("subject");
                           x.innerHTML=" <select name='subject'><option>Information Security</option><option>Soft Computing</option><option>Elective -III</option><option>Elective -IV</option><option>Major Project</option></select>";
                        }
                    
          
                    }
              
                
            }
            
        </script>
        
        
    </head>
    <body>
         <form action="" method="get"> 
        <table border="1" width="1" cellspacing="1" cellpadding="1">
            
            <tbody>
                <tr>
               <td>
                   <select name="stream" id="stream" onclick="fun1()">
            <option>cs</option>
             <option>it</option>
              <option>proglang</option>
        </select>
               </td>

                    <td id='semester'>
        <select id='semestervalue' name='semester' ></select>
                        
                    </td>

                    <td id="subject">

                    </td>
                    <td>     <input type="submit" /> </td>
                </tr>
            </tbody>
        </table>
             </form>
        
        <%@page import="mypack.MyCon" %>
        <%@page import="java.sql.*" %>
         <%
        
        String data;
        
        Connection con;
        PreparedStatement ps;
        String stream=request.getParameter("stream");
        String semester=request.getParameter("semester");
        String subject=request.getParameter("subject");
        
        //out.println(sem);
        //out.println(sub);
          con=MyCon.getConnection();
          String sql;
    // sql="select * from course where stream='"+stream+"' and semester='"+semester+"' and subject='"+subject+"'";

         sql="select * from course where stream='"+stream+"' and subject='"+subject+"'";        
       
                             
          ps=con.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();
          String first = null;
         
          while(rs.next())
          {
              if(first==null)
              {
                 out.println("<table border='1'><thead><tr><th>stream</th>");
                if(stream.equals("proglang"))
                {
                    
                }
                 else
                 {
                      out.println("<th>semester</th>");
                 }
                    
                 out.println("<th>subject</th><th>link</th><th>type</th></tr></thead><tbody>");
                 first="set";
              }
                        out.println("<tr>");
                        out.println("<td>");
                        out.println(rs.getString("stream"));   
                        out.println("</td>");
                        
                 if(stream.equals("proglang"))
                {
                }
                 else
                 {
                        out.println("<td>");
                        out.println(rs.getString("semester"));
                        out.println("</td>");
                 }
                        
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
                        out.println("</tr>");
                }
          
          out.println("</tbody></table>");
       
        %>
        

       
    </body>
</html>
