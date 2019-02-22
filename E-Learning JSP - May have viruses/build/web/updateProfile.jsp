<%-- 
    Document   : updateProfile
    Created on : Mar 31, 2014, 7:33:54 AM
    Author     : ankur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateProfileServlet" method="POST">
            
              <table border="0">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" value="" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value="" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="UpdateProfile" /></td>
                    <td></td>
                </tr>
            
        </table>

            
            
            
        </form>
    </body>
</html>
