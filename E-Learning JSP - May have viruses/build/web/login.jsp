<%-- 
    Document   : login
    Created on : Mar 28, 2014, 6:14:53 PM
    Author     : ankur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="LoginServlet" method="POST">
            <table border="0" align="center">
                    <tr>
                        <td>UserName</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                         
                         <td colspan="2" align="center"><input type="submit" value="Login" /></td>
                    </tr>
                    
                    <tr>
                         
                        <td  align="center"><a href="registration.jsp">Get Register</a></td>
                    </tr>
                     <tr>
                         
                        <td  align="center"><a href="recoverpassword.jsp">Recover Password</a></td>
                    </tr>
                   
                        
               
            </table>

           
        </form>
      </body>
</html>
