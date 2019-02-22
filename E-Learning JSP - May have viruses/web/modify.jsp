<%-- 
    Document   : modify
    Created on : Mar 31, 2014, 8:15:32 AM
    Author     : ankur
--%>
<%@page import="model.Registration" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Registration r= (Registration) request.getAttribute("registration");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            #mytext{
               color:red;
                text-align: left;
            }
        </style>
         <script type="text/javascript">
            function fun()
            {
            var x=document.getElementById("password");
            var y=document.getElementById("cpassword");
           x=x.value;
           
           y=y.value;
            if(x==y)
                {
                 return true;    
                 }
                else
            {                
                    alert("Password  do not match!!Please Enter the correct Password");
                    return false;
                    }
                    return false;
            }
        </script>
    
    </head>
    <body>
         <form action="ModifyServlet" method="POST" onsubmit="return fun()">
            <table border="0" align="center"   id="mytext">
               
                        <td>Name</td>
                        <td><input type="text" name="name" value="<%= r.getName()%>"  /></td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td><input type="date" name="dob" value="<%= r.getDOB()%>" /></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><input type="text" name="gender" value="<%= r.getGender()%>" /></td>
                        
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><textarea name="address" rows="4" cols="20" cellpadding="0"><%=r.getAddress()%></textarea>
                            </td>
                    </tr>
                      <tr>
                        <td>UserName</td>
                        <td><input type="text" name="username" value="<%=r.getUserName()%>" readonly="true"/></td>
                        </tr>
                      <tr>
                        <td>Create Password</td>
                        <td><input type="text" name="password" value="<%= r.getPassword()%>" id="password"readonly="true"/></td>
                    </tr>
                       <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="cpassword" value="" id="cpassword" /></td>
                    </tr>
                   
                      <tr>
                        <td>ContactNo</td>
                        <td><input type="text" name="contactNo" value="<%= r.getContactNo()%>" /></td>
                    </tr>
                      <tr>
                        <td>Email Address</td>
                        <td><input type="mail" name="email" value="<%= r.getEmail()%>" /></td>
                    </tr>
                      <tr>
                        <td>Occupation</td>
                        <td><input type="text" name="occupation" value="<%= r.getOccupation()%>" /></td>
                    </tr>
                      <tr>
                        <td>City</td>
                        <td><input type="text" name="city" value="<%= r.getCity()%>" /></td>
                    </tr>
                      <tr>
                        <td>District</td>
                        <td><input type="text" name="district" value="<%= r.getDistrict()%>" /></td>
                    </tr>
                      <tr>
                        <td>State</td>
                        <td><input type="text" name="state" value="<%= r.getState()%>" /></td>
                    </tr>
                     <tr>
                        <td>College Name</td>
                        <td><input type="text" name="college" value="<%= r.getCollege()%>" /></td>
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
                        <td><input type="text" name="security" value="<%= r.getSecurity()%>" /></td>
                    </tr>
                  
                   
                    
                      
                    <tr>
                  
                        <td colspan="2" align="center"><input type="submit" value="Modify Record" /></td>
                    </tr>
              
            </table>

        </form>
    </body>
</html>
