<%-- 
    Document   : recoverpassword
    Created on : Mar 30, 2014, 10:49:48 AM
    Author     : ankur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Recovery Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <% 
        
           Connection con;
        PreparedStatement ps;
        String username="";
        String security="";
        String pass="";
        
              try {
                  
                  username=request.getParameter("username");
                  security=request.getParameter("security");
                  con=mypack.MyCon.getConnection();
                  ps=con.prepareStatement("select password from registration where username=? and security=? ");
                  ps.setString(1,request.getParameter("username"));
                  ps.setString(2,request.getParameter("security"));
                  ResultSet rs=ps.executeQuery();
            
                  if(rs.next())
                 {
                  pass=rs.getString("password");   
                  pass="<td>password is</td><td><input type='text' name='pass' value='"+pass+"' /></td>";
                 }
              
                    
   
            
            
               } 
               catch(Exception e)
              {
               e.printStackTrace();
               }


if(username==null && security==null)
    {   username="";
    security="";
    pass="" ;      
}
%>
        <form action="" method="post">
        <table border="0" align="center">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Enter your Username</td>
                    <td><input type="text" name="username" value="<%out.println(username); %>" /></td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td><select name="securityquestion">
                                <option>What is the name of your Birth place?</option>
                                <option>What was the Name of your First school?</option>
                                <option>Which is your favourite movie?</option>
                            </select></td>
                </tr>
                <tr>
                    <td>Answer of Security Question</td>
                    <td><input type="text" name="security" value="<%out.println(security); %>" /></td>
                </tr>
                 <tr>
<%out.println(pass); %>
                </tr>
                <tr>
                    
                     <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                </tr>
            </tbody>
            
        </table>

          </form>
    </body>
</html>
