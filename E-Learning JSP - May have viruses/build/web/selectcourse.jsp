<%-- 
    Document   : select course
    Created on : Mar 30, 2014, 1:43:48 PM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script type="text/javascript">
            var z;
            function fun(z)
            {
            
             switch(z)
              {
                case 1:
                  {
                   var b=document.getElementById("list");
        
                   b.innerHTML= "<li>Chemistery</li><li>ed</li>";
                   break;
                  }
                 
                  case 2:
                   {
                    var b=document.getElementById("list");
                    b.innerHTML="<ul><li>oper sys</li><li>cso</li></ul>";
                    break;
                   }
                   
                    case 3:
                   {
                    var b=document.getElementById("sem");
                    b.innerHTML="<option>oper sys</option><option>cso</option>";
                   break;
                   }
                    case 4:
                   {
                    var b=document.getElementById("sem");
                    b.innerHTML="<option>oper sys</option><option>cso</option>";
                    break;   
                   }
                    case 5:
                   {
                    var b=document.getElementById("sem");
                    b.innerHTML="<option>oper sys</option><option>cso</option>";
                    break;
                    }
                    case 6:
                   {
                    var b=document.getElementById("sem");
                    b.innerHTML="<option>oper sys</option><option>cso</option>";
                    break;
                    }
                    case 7:
                   {
                    var b=document.getElementById("sem");
                    b.innerHTML="<option>oper sys</option><option>cso</option>";
                    break;
                    }
                    case 8:
                   {
                    var b=document.getElementById("sem");
                    b.innerHTML="<option>oper sys</option><option>cso</option>";
                    break;
                   }
                   default:alert("kkkkkkkkkkkkk");
              }
           }
            
        </script>
        <form action="uploadimpl.jsp" method="post" enctype="mutlipart/form-data">
        <table border="1" cellspacing="10" cellpadding="20">
            <thead>
                <tr>
                    <th colspan="4">Select courses</th>
                   
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        1st<input id="1" type="radio" name="upload" value="1" onclick="fun(1);"/>
                    </td>
                    <td>
                        2nd<input type="radio" name="upload" value="2" onclick="fun(2);"/>
                    </td>
                    <td>
                        3rd<input type="radio" name="upload" value="3" onclick="fun(3);" />
                    </td>
                    <td>
                        4th<input type="radio" name="upload" value="4"onclick="fun(4);" />
                    </td>
                </tr>
                <tr>
                    <td>
                        5th<input type="radio" name="upload" value="5" onclick="fun(5);" />
                    </td>
                    <td>
                        6th<input type="radio" name="upload" value="6" onclick="fun(6);"/>
                    </td>
                    <td>
                        7th<input type="radio" name="upload" value="7" onclick="fun(7);"/>
                    </td>
                    <td>
                        8th<input type="radio" name="upload" value="8"onclick="fun(8);" />
                    </td>
                </tr>
                <tr>
                    <th colspan="4"><ul id="list"></ul></th>
                </tr>
                
                <tr></tr>
            </tbody>
        </table>

    </form> 
    </body>
</html>
