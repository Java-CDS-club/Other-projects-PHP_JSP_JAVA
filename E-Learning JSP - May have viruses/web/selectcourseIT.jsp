<%-- 
    Document   : upload
    Created on : Mar 29, 2014, 4:48:30 PM
    Author     : Ankur
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>upload Page</title>
    </head>
    <body>
        <script type="text/javascript">
                streamonce=null;
                subjectonce=null;
            function final1()
            { 
             
               var b1=document.getElementById("sem");
               var y1=b1.value;
               if(streamonce=="ok" && y1!=null && y1!="")
                   {
                       alert("sub set hai");
                       return true;
                   }
                   alert("please select fields");
                   return false;
                         
            }
            var z;
            var stream;
            function sel(str)
            {
                streamonce="ok";
                
                stream=str;
                if(str=="" && str==null)
                    {
                        alert("select stream first");
                        return false;
                    }
                else
                    {
                // alag sy for pro lang
                
                if(str=='prog lang')
                    {
                        var b=document.getElementById("semradio1");
                         b.innerHTML="";
                         b=document.getElementById("semradio2");
                         b.innerHTML="";
                        
                        b=document.getElementById("sem");
                         b.innerHTML="<option>C++</option><option>java</option>";
                    }
                    else
                        {
                         var b=document.getElementById("semradio1");
                         b.innerHTML="<td>1st<input id='1' type='radio' name='semester' value='first' onclick='fun(1);'/></td><td>2nd<input type='radio' name='semester' value='second' onclick='fun(2);'/></td><td>3rd<input type='radio' name='semester' value='third' onclick='fun(3);' /></td><td>4th<input type='radio' name='semester' value='fourth'onclick='fun(4);' /></td>";
                         b=document.getElementById("semradio2");
                         b.innerHTML="<td>5th<input type='radio' name='semester' value='fifth' onclick='fun(5);' /></td><td>6th<input type='radio' name='semester' value='sixth' onclick='fun(6);'/></td><td>7th<input type='radio' name='semester' value='seventh' onclick='fun(7);'/> </td><td>8th<input type='radio' name='semester' value='eighth'onclick='fun(8);' /></td>";
                         var b=document.getElementById("sem");
                         b.innerHTML="";
                            
                        }
                         
                    }
            }
            function fun(z)
            {
    
            if(stream=="" || stream==null)
           {
               
               alert("select stream first");
               var b=document.getElementById("stream");
               b.focus();
               return false;
           }
             switch(z)
              {
                case 1:
                  {
                    
                    var b=document.getElementById("sem");
                   if(stream=='cs')
                       {
                            b.innerHTML="<option >Engineering Physics</option><option>Energy,Environment,Ecology & Society</option><option >Basic Mechanical Engg</option><option >Basic Civil Engg and Engg Mechanics</option><option >Basic Computer Engg</option><option >Language Lab and Seminars</option>";
                       }
                   else
                       {
                           b.innerHTML="<option>Engineering Chemistry</option><option>Engineering Mathematics-I</option><option>Communication Skills</option><option>Basic Electricals & Electronics Engg</option><option>Engineering Graphics</option><option>Work Shop Practice</option>";
                   
                       }
                  
                    
                   break;
                  }
                 
                  case 2:
                   {
                    var b=document.getElementById("sem");
                     if(stream=='cs')
                       {
                            b.innerHTML="<option>Engineering Chemistry</option><option>Engineering Mathematics-I</option><option>Communication Skills</option><option>Basic Electricals & Electronics Engg</option><option>Engineering Graphics</option><option>Work Shop Practice</option>";
                       }
                   else
                  {
                    b.innerHTML="<option>Engineering Physics</option><option>Energy,Environment,Ecology & Society</option><option >Basic Mechanical Engg</option><option >Basic Civil Engg and Engg Mechanics</option><option >Basic Computer Engg</option><option >Language Lab and Seminars</option>";
                   
                   }
                    break;
                } 
                    case 3:
                   {
                    var b=document.getElementById("sem");
                    if(stream=='cs')
                       {
                            b.innerHTML="<option>Mathematics-II</option><option>Discrete Structures</option><option>Digital Circuit & System</option><option>Electronics Devices & Circuits</option><option>Data Structures</option><option>Computer Programming(Java)</option>";
                       }
                   else
                  {
                    b.innerHTML="<option>Mathematics-II</option><option>Discrete Structures</option><option>OOPS Methodology</option><option>Electronics Devices & Circuits</option><option>Data Structures & Algorithm</option><option>Java Technology</option>";
                   
                   }
                   break;
                   }  
                   case 4:
                   {
                    var b=document.getElementById("sem");
                    if(stream=='cs')
                       {
                            b.innerHTML="<option>Mathematics III</option><option>Computer System Organization</option><option>Object Oriented Technology</option><option>Analysis & Design of Algorithm</option><option>Analog & Digital Communication</option><option>Computer Programming–IV(.Net Technologies)</option>";
                       }
                   else
                  {
                    b.innerHTML="<option>Mathematics III</option><option>Computer System Organization</option><option>Data Base Management System</option><option>Analysis & Design of Algorithm</option><option>Analog & Digital Communication</option><option>Computer Programming–IV(.Net Technologies)</option>";
                  }
                     break;
                   } 
                    case 5:
                   {
                    var b=document.getElementById("sem");
                    if(stream=='cs')
                       {
                            b.innerHTML="<option>Data Communication</option><option>Operating System</option><option>DataBase Management System</option><option>Computer Graphics & Multimedia</option><option>Theory of Computation</option><option>Computer Programming V(Unix/Linux Lab)</option>";
                       }
                   else
                  {
                    b.innerHTML="<option>Data Communication</option><option>Information Storage & Management</option><option>Computer Networks</option><option>System Programming and operating system</option><option>Java Programming</option><option>Java Programming Lab</option>";
               
                  }
                     break;
              }
                    case 6:
                   {
                    var b=document.getElementById("sem");
                    if(stream=='cs')
                       {
                            b.innerHTML="<option>Micro Processor and Interfacing</option><option>Principles Of Programming Languages</option><option>Software Engg & Project Management</option><option>Computer Networking</option><option>Advance Computer Architecture</option><option>Minor Project</option>";
                       }
                   else
                  {
                    b.innerHTML="<option>Distributed Systems</option><option>Computer Graphics & Multimedia</option><option>Internet Technology & Network Management</option><option>Web Technology</option><option>Software Engineering & Project Management</option><option>Software Engineering Lab</option>";
             
                  }
                     break;
              }
                    case 7:
                   {
                    var b=document.getElementById("sem");
                    if(stream=='cs')
                       {
                            b.innerHTML="<option>Compiler Design</option><option>Distributed System</option><option>Cloud Computing</option><option>Elective -I</option><option>Major Project</option>";
                       }
                   else
                  {
                    b.innerHTML="<option>Object Oriented Analysis and Design</option><option>Wireless & Mobile Computing</option><option>Cloud Computing</option><option>Elective -I</option><option>Elective -II</option><option>Minor Project</option>";
            
                    }
                    break;
                   } 
                    case 8:
                   {
                    var b=document.getElementById("sem");
                     if(stream=='cs')
                       {
                            b.innerHTML="<option>Soft Computing</option><option>Web Engineering</option><option>Elective -II</option><option>Elective -III</option><option>Major Project</option>";
                       }
                   else
                  {
                    b.innerHTML="<option>Information Security</option><option>Soft Computing</option><option>Elective -III</option><option>Elective -IV</option><option>Major Project</option>";
                 
                   }
                   break;
                   }
                   default:alert("kkkkk");
              }
           }
            
        </script>
        <form action="insertimage.jsp" method="post" enctype="multipart/form-data" onsubmit="return final1()"> 
        <table border="1" cellspacing="10" cellpadding="20">
            <thead>
                <tr>
                    <th colspan="4">Upload File<br />
                    <input type="radio" id="stream" name="stream" value="cs" onclick="sel('cs')">cs</input>
                    <input type="radio" id="stream" name="stream" value="it" onclick="sel('it')">it</input>
                    <input type="radio" id="stream" name="stream" value="prog lang" onclick="sel('prog lang')" >prog lang</input>
                    </th>
                   
                </tr>
            </thead>
            <tbody>
                <tr id="semradio1">
                    <td>1st<input id='1' type='radio' name='semester' value='first' onclick='fun(1);'/></td>
                    <td>2nd<input type='radio' name='semester' value='second' onclick='fun(2);'/></td>
                    <td>3rd<input type='radio' name='semester' value='third' onclick='fun(3);' /></td>
                    <td>4th<input type='radio' name='semester' value='fourth'onclick='fun(4);' /></td>
                </tr>
                <tr id="semradio2">
                    <td>5th<input type='radio' name='semester' value='fifth' onclick='fun(5);' /></td>
                    <td>6th<input type='radio' name='semester' value='sixth' onclick='fun(6);'/></td>
                    <td>7th<input type='radio' name='semester' value='seventh' onclick='fun(7);'/> </td>
                    <td>8th<input type='radio' name='semester' value='eighth'onclick='fun(8);' /></td>
                </tr>
                <tr>
                    <th colspan="4" >  
                        <select name="subject" id="sem" value=""  ></select> 
                       
                    </th>
             
                </tr>
                <tr>
                    <th colspan="4">  <input type="file" name="upload" value="file"  /></th>
                </tr>
                <tr>
                    <th colspan="4">
                        <input type="submit" value="Submit"  style="width:80px;height:40px" />
                    </th>
                </tr>
            </tbody>
        </table>

        </form>
    </body>
</html>


