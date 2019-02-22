<%--
    Document   : index
    Created on : Apr 13, 2014, 10:56:38 AM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/abhi.css" rel="stylesheet" type="text/css" />



<script type="text/javascript">

    function fun()
    {

var a=document.getElementById("name").value;
if (a==null || a=="")
  {
z=document.getElementById("m1");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
  else
    {
z=document.getElementById("m1");
z.innerHTML="";
    }



var x=document.getElementById("email").value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (x=="" || atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
z=document.getElementById("m2");
z.innerHTML="<font color=red>invalid email eddress<font>";
  return false;
  }
    else
    {
z=document.getElementById("m2");
z.innerHTML="";
    }



var a=document.getElementById("feedback").value;
if (a==null || a=="")
  {
z=document.getElementById("m3");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
  else
    {
z=document.getElementById("m3");
z.innerHTML="";
    }


    }




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
       location.href='courses.jsp';
     }
      else if(z=='4')
     {
       location.href='contactus.jsp';
     }
      else if(z=='5')
     {
       location.href='feedback.jsp';
     }


}


</script>

<style>
#com
{
    color:red;
    background-color:#FFFFCC;
}
</style>

</head>

<body>
<div id="header">
<center>
  <table width="1236" height="107" border="0">
    <tr bgcolor="#663366">
      <td width="1226" bgcolor="#663366">  <img src="images/h2.jpg" /></td>
    </tr>
    <tr bgcolor="#1941A5">
      <td height="40" bgcolor="#FFFFCC">
	    <center>
	      <table width="951" border="0">
            <tr>
              <td><input name="button" type='button' id='button' onclick="loc(1)" value='Home' /></td>
               <td><input name="button2" type='button' id='button' onclick="loc(3)" value='Show Courses' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value=contactus /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value=feedback /></td>
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
      <td height="235">
          

              <center>
        <%@page import="java.sql.*" %>

<form action="" method="get" onsubmit="return fun()">
        <table border="0" align="center">

                <tr>
                    <td>Name</td>
                    <td><input type="text" id="name" name="name" class="text" /><label id=m1>.</label></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="mail" id="email" name="email" class="text" /><label id=m2>.</label></td>
                </tr>
                <tr>
                    <td>Feedback</td>
                    <td><textarea name="feedback" id="feedback" rows="4" cols="20" class="text"></textarea><label id=m3>.</label></td>
                </tr>
                <tr><td></td><td colspan="2"><input type="submit" value="submit" /></td></tr>
        </table>
</form>

        <%
         Connection con;
         PreparedStatement ps;


 try {

        String name=request.getParameter("name");
          String email=request.getParameter("email");
            String feedback=request.getParameter("feedback");


            if(name==null || name=="")
                {

                }
            else
                {
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
    Statement stm = con.createStatement();
     int x=stm.executeUpdate("insert into feedback values(NULL,now(),'"+name+"','"+email+"','"+feedback+"','yes')");
        //String s="INSERT INTO book_detail(`book_name` ,`book_author` ,`book_price`) VALUES ('kukujaora', '9039210587', '200')";
        //boolean a=stm2.execute(s);
    ResultSet  rs=stm.executeQuery("select date,name,feedback from feedback where approve='yes' order by id desc");

            //  Feedback f=new Feedback(request.getParameter("name"),request.getParameter("email"),request.getParameter("feedback"),request.getParameter("approve"));

             while(rs.next())
             {
                  out.println("<div id=com>");
                     out.println(rs.getString("feedback")+"<br />");

                    out.println(rs.getString("name")+"   ");
                    out.println(rs.getDate("date")+"<br />");

                  out.println("</div><br />");


             }

                }



            }
        catch(Exception e)
        {
            e.printStackTrace();
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
      <td width="1236">
          <br />
      </td>
    </tr>
  </table>
  </center>
</div>
</body>
</html>
