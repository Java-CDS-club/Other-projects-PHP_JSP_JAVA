<%-- 
    Document   : adminapproval
    Created on : Apr 17, 2014, 11:15:12 AM
    Author     : magic
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/abhi.css" rel="stylesheet" type="text/css" />
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
<%
String dtype=(String)session.getAttribute("user");
if((dtype!=""&&dtype!=null))
{
    out.print("location.href='logout.jsp';");
}
else
{
out.print("location.href='login.jsp';");
}

String button=(dtype!=""&&dtype!=null)?"logout":"login";
%>
     }
      else if(z=='3')
     {
       location.href='adminapproval.jsp?approval=course';
     }
      else if(z=='4')
     {
       location.href='adminapproval.jsp?approval=feedback';
     }
      else if(z=='5')
     {
       location.href='adminapproval.jsp?approval=user';
     }
      else if(z=='6')
     {
       location.href='addtest.jsp';
     }


}


</script>

    </head>
    <body>
        
        <div id="header">
<center>
  <table width="1236" height="107" border="0">
    <tr bgcolor="#663366">
      <td width="1226" bgcolor="#663366"><img src="images/h2.jpg" /></td>
    </tr>
    <tr bgcolor="#1941A5">
      <td height="40" bgcolor="#FFFFCC">
	    <center>
	      <table width="951" border="0">
            <tr>
              <td><input name="button" type='button' id='button' onclick="loc(1)" value='Home' /></td>
               <td><input name="button2" type='button' id='button' onclick="loc(3)" value='course approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value='feedback approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value='user approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(6)" value='create test' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(2)" value='<%=button%>' /></td>
            </tr>
          </table>
	    </center>	  </td>
    </tr>
  </table>
  </center>
</div>
<div id="content">
<center>
  <table width="1236" height="480" border="1">
    <tr>
      <td height="235" bgcolor="#FFFFCC">
          <center>
            <%
        String type=request.getParameter("approval");
        out.println(type);
        String id=request.getParameter("id");

        Connection con;
        PreparedStatement ps;
        ResultSet rs;

        //out.println(stream);
        //out.println(sem);
        //out.println(sub);
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
        Statement stm=con.createStatement();
          //
          // agr id has something reverse value



         String data;

         if(type.equals("course"))
         {
             if(id!=null)
             {
                  String sql1="select approved from course where id="+id+"";


                  rs = stm.executeQuery(sql1);
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

            int x = stm.executeUpdate(sql1);

             }




         String sql="select * from course ";

          ps=con.prepareStatement(sql);
                  rs = stm.executeQuery(sql);
          String first = null;

          while(rs.next())
          {
              if(first==null)
              {
                 out.println("<table border='1'><thead><tr bgcolor='#9966FF'><th>id</th><th>stream</th><th>subject</th><th>link</th><th>type</th><th>approved</th></tr></thead><tbody>");
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
                       // out.println("<td>");
                        //out.println(rs.getString("semester"));
                        //out.println("</td>");
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


                  rs = stm.executeQuery(sql1);

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


                  int x = stm.executeUpdate(sql1);

                   // ps=con.prepareStatement(sql1);
                 // int x = ps.executeUpdate();

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
                 out.println("<table border='1'><thead><tr bgcolor='#9966FF'><th>id</th><th>date</th><th>name</th><th>email</th><th>feedback</th><th>approve</th></tr></thead><tbody>");
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
                  String sql1="select type from user where id="+id+"";

                   ps=con.prepareStatement(sql1);

                  rs = stm.executeQuery(sql1);

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

                   sql1="UPDATE user SET type='"+dapprove+"' WHERE id="+id+"";


                  int x = stm.executeUpdate(sql1);

             }


String sqr="select username,contactno,email_address,id,type,country from user ";

          ps=con.prepareStatement(sqr);
          ResultSet rsr = ps.executeQuery();
          String third = null;

          while(rsr.next())
          {
              if(third==null)
              {
                 out.println("<table border='1'><thead><tr bgcolor='#9966FF'><th>id</th><th>name</th><th>email</th><th>contactNo</th><th>college</th><th>type</th></tr></thead><tbody>");
                 third="set";
              }
              String dapprove=rsr.getString("type");
              String did=rsr.getString("id");
                        out.println("<tr>");
                        out.println("<td>");
                        out.println(rsr.getString("id"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsr.getString("username"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsr.getString("email_address"));
                        out.println("</td>");

                        out.println("<td>");
                        data=rsr.getString("contactno");
                        out.print("<a href='"+data+"'>"+data+"</a>");
                        out.println();
                        out.print("");
                        out.println("</td>");
                        out.println("<td>");
                        out.println(rsr.getString("country"));
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<a href=adminapproval.jsp?approval=registration&id="+did+">"+dapprove+"</a>");
                        out.println("</td>");

                        out.println("</tr>");
          }

          out.println("</tbody></table>");


         }



        %>
      </center>
      </td>
    </tr>
  </table>
</center>
</div>
<div id="footer">
<center>
  <table width="1236" border="1">
    <tr bgcolor="#663366">
      <td width="1236">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>


    </body>
</html>
