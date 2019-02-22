<%-- 
    Document   : registration
    Created on : Mar 26, 2014, 6:39:39 PM
    Author     : ankur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
          <script type="text/javascript">
              function myu()
              {
              var date="12-32-1298";
              alert(date); 
              var z = date.split("-", 40);
               alert(z);
               
                if(z[2]>=2016 && z[2]<=2000)
                    {
                        alert(z[2]);  
                    }
                    else
                        {
                              alert("year not valid"); 
                        }
              }
             
              
         function fun()
           { 
               
                 if(document.getElementById("name").value==null || document.getElementById("name").value=="")
                   {
                    alert("First name must be filled out");
                    return false;
                   }
            
            
                   var dob=document.getElementById("dob").value;
                   var pattern=/^([1-3]{1}[0-9]{1})-([0-1]{1}[0-9]{1})-([0-9]{4})$/;
                   if(document.getElementById("dob").value==null || document.getElementById("dob").value=="")
                   {
                    alert("DOB must be filled out");
                    return false;
                   }
                  else if(dob==null || dob=="" || !pattern.test(dob))
                        {
                            alert("Invalid date of birth");
                            return false;
                        }
                
                     if(document.getElementById("gender0").checked==false && document.getElementById("gender1").checked==false && document.getElementById("gender2").checked==false)
                                 {
                                  alert("Please fill the gender field");
                                   return false;
                                  }
  
                     if(document.getElementById("address").value==null || document.getElementById("address").value=="")
                     {
                      alert("Please fill the address field");
                     return false;
                     }
       
                   if(document.getElementById("username").value==null || document.getElementById("username").value=="")
                   {
                    alert("Please fill the username field");
                    return false;
                   }
                   
                     if(document.getElementById("password").value==null || document.getElementById("password").value=="")
                        {
                          alert("Please fill the password field");
                          return false;
                        }
                      else if(document.getElementById("password").value.length>15)
                          {
                              alert("password cannot be greater than 15 characters")
                          }
                          
        
                       if(document.getElementById("cpassword").value==null || document.getElementById("cpassword").value=="")
                        {
                          alert("Please fill the confirm password field");
                          return false;
                        }
        
                 if(document.getElementById("password").value==document.getElementById("cpassword").value)
                {
                     
                 }
                else
                    {
                    alert("Password  do not match!!Please Enter the correct Password");
                    return false;
                    }
            
             if(document.getElementById("contactNo").value==null || document.getElementById("contactNo").value=="")
             {
                 alert("Please fill the contact no  field");
                  return false;
             }
              else
                   {
                        if(isNaN(document.getElementById("contactNo").value) )
                        {
                             alert("Enter numeric value only");
                             return false;
                        }
                       else
                        {
                            if(document.getElementById("contactNo").value.length!=10)
                           {
                              alert("Contact Number must be of 10 character");
                              return false;
                           }
                        }
                    }
        
               var em=document.getElementById("email").value;
             if(document.getElementById("email").value==null || document.getElementById("email").value=="")
             {
                 alert("Please fill the Email no  field");
                  return false;
             }
               
                if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(em))
                {
                   
                }
                else
                    {
                         alert("Invalid Email address")
                         return false;
                    }
              
                
    
                   if(document.getElementById("occupation").value==null || document.getElementById("occupation").value=="")
                   {
                    alert("occupation must be filled out");
                    return false;
                   }
       
                   if(document.getElementById("city").value==null || document.getElementById("city").value=="")
                   {
                    alert("city must be filled out");
                    return false;
                   }
     
                   if(document.getElementById("district").value==null || document.getElementById("district").value=="")
                   {
                    alert("District name must be filled out");
                    return false;
                   }
     
                   if(document.getElementById("state").value==null || document.getElementById("state").value=="")
                   {
                    alert("State name must be filled out");
                    return false;
                   }
        
                   if(document.getElementById("college").value==null || document.getElementById("college").value=="")
                   {
                    alert("College name must be filled out");
                    return false;
                   }
         
                   if(document.getElementById("security").value==null || document.getElementById("security").value=="")
                   {
                    alert("security answer must be given");
                    return false;
                   }
              
             }
        </script>
    
    </head>
    <body onload="myu()">
        <form  action="RegistrationServlet" method="POST" onsubmit="return fun();" >
            <table border="0" align="center">
               
                        <td>Name</td>
                        <td><input type="text" name="name" value="" id="name"/></td>
                    </tr>
                    <tr>
                        <td>Date of Birth(DD-MM-YYYY)</td>
                        <td><input type="date" name="dob" value="" id="dob" /></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><input type="radio" name="gender" value="male" id="gender0" />Male</td>
                        <td><input type="radio" name="gender" value="female" id="gender1"/>Female</td>
                        <td><input type="radio" name="gender" value="other" id="gender2"/>Other</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><textarea name="address" value="" size="50" id="address" ></textarea></td>
                    </tr>
                      <tr>
                        <td>UserName</td>
                        <td><input type="text" name="username" value="" id="username"  /></td>
                        </tr>
                      <tr>
                        <td>Create Password</td>
                        <td><input type="password" name="password" value="" id="password"/></td>
                    </tr>
                       <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="cpassword" value="" id="cpassword" /></td>
                    </tr>
                   
                      <tr>
                        <td>ContactNo</td>
                        <td><input type="text" name="contactNo" value="" id="contactNo"/></td>
                    </tr>
                      <tr>
                        <td>Email Address</td>
                        <td><input type="mail" name="email" value="" id="email" /></td>
                    </tr>
                      <tr>
                        <td>Occupation</td>
                        <td><input type="text" name="occupation" value="" id="occupation" /></td>
                    </tr>
                      <tr>
                        <td>City</td>
                        <td><input type="text" name="city" value="" id="city" /></td>
                    </tr>
                      <tr>
                        <td>District</td>
                        <td><input type="text" name="district" value="" id="district" /></td>
                    </tr>
                      <tr>
                        <td>State</td>
                        <td><input type="text" name="state" value="" id="state" /></td>
                    </tr>
                     <tr>
                        <td>College Name</td>
                        <td><input type="text" name="college" value="" id="college"/></td>
                    </tr>
                      <tr>
                        <td>Security Question</td>
                        <td><select name="securityquestion" >
                                <option>What is the name of your Birth place?</option>
                                <option>What was the Name of your First school?</option>
                                <option>Which is your favourite movie?</option>
                            </select></td>
                    </tr>
                   
                      <tr>
                        <td>Answer of Security Question</td>
                        <td><input type="text" name="security" value="" id="security" /></td>
                    </tr>
                    <tr>    
                    <tr>
                  
                        <td colspan="2" align="center"><input type="submit" value="Register!" /></td>
                    </tr>
              
            </table>
            
        </form>
    </body>
</html>
