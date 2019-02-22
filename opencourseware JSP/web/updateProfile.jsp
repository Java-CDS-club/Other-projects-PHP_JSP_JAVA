<%--
    Document   : register
    Created on : Apr 13, 2014, 2:40:20 PM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/register.css" rel="stylesheet" type="text/css">
        <link href="css/abhi.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
        <%@page language="java" import="java.sql.*" %>
<script>
function validateForm()
{
var a=document.getElementById("c1").value;
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

var letters = /^[A-Za-z]+$/;
if(a.match(letters))
{
//
}
else
{
z=document.getElementById("m1");
z.innerHTML="<font color=red><b>only a-z A-Z allowed</font>";
return false;
}

var b=document.getElementById("c2").value;
if (b==null || b=="")
  {
z=document.getElementById("m2");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
    else
    {
z=document.getElementById("m2");
z.innerHTML="";
    }

var letters2 = /^[A-Za-z]+$/;
if(b.match(letters2))
{
//
}
else
{
z=document.getElementById("m2");
z.innerHTML="<font color=red><b>only a-z A-Z allowed</font>";
return false;
}

var x=document.getElementById("c3").value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (x=="" || atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
z=document.getElementById("m3");
z.innerHTML="invalid email eddress";
  return false;
  }
    else
    {
z=document.getElementById("m3");
z.innerHTML="";
    }


var Z=document.getElementById("c4").value;
if(Z=="" || isNaN(Z))
	{
y=document.getElementById("m4");
y.innerHTML="<b><font color=red>* required ONLY numbers allowed</font></b>";
return false;
	}
    else
    {
z=document.getElementById("m4");
z.innerHTML="";
    }


var e=document.getElementById("c5").value;
if (e==null || e=="")
  {
z=document.getElementById("m5");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
    else
    {
z=document.getElementById("m5");
z.innerHTML="";
    }


var y=document.getElementById("c6").value;
if (y==null || y=="")
  {
z=document.getElementById("m6");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
    else
    {
z=document.getElementById("m6");
z.innerHTML="";
    }

var y=document.getElementById("c7").value;
if (y==null || y=="")
  {
z=document.getElementById("m7");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
    else
    {
z=document.getElementById("m7");
z.innerHTML="";
    }

var y=document.getElementById("c8").value;
if (y==null || y=="")
  {
z=document.getElementById("m8");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
    else
    {
z=document.getElementById("m8");
z.innerHTML="";
    }

var y=document.getElementById("c9").value;
if (y==null || y=="")
  {
z=document.getElementById("m9");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
    else
    {
z=document.getElementById("m9");
z.innerHTML="";
    }

}
</script>


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
if(dtype!="")
{
    out.print("location.href='logout.jsp';");
}
else
{
out.print("location.href='login.jsp';");
}

String button=dtype!=""?"logout":"login";
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

        <%
        try
        {
            
        }
        catch(Exception e)
           {
            out.print(e);
            }


       String s1=request.getParameter("firstname");
        String s2=request.getParameter("lastname");
        String s3=request.getParameter("email_address");
        String s4=request.getParameter("contactno");
        String s5=request.getParameter("country");
        String s6=request.getParameter("address");
        String s7=(String)session.getAttribute("user");
        String s8=request.getParameter("password");
        String s9=request.getParameter("security_question");

        if(s1==null || s2==null || s5==null)
            {
            s1=s2=s3=s4=s5=s6=s7=s8=s9="";
            }
        %>


 <%
 int x=0;
String user=(String)session.getAttribute("user");
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
    Statement stm = con.createStatement();
       ResultSet rst=stm.executeQuery("select * from user where username='"+user+"'");

        String ts1=null,ts2=null,ts3=null,ts4=null,ts5=null,ts6=null,ts7=null,ts8=null,ts9=null;


          while(rst.next())
            {
       ts1=rst.getString("firstname");
     ts2=rst.getString("lastname");
       ts3=rst.getString("email_address");
      ts4=rst.getString("contactno");
    ts5=rst.getString("country");
       ts6=rst.getString("address");
    ts7=rst.getString("username");
    ts8=rst.getString("password");
   ts9=rst.getString("security_question");
            }
        %>

        <%
/*
out.print("<br>"+s1);
out.print("<br>"+ts1);
out.print("<br>"+s2);
out.print("<br>"+ts2);
out.print("<br>"+s3);
out.print("<br>"+ts3);
out.print("<br>"+s4);
out.print("<br>"+ts4);
out.print("<br>"+s5);
out.print("<br>"+ts5);
out.print("<br>"+s6);
out.print("<br>"+ts6);
out.print("<br>"+s7);
out.print("<br>"+ts7);
out.print("<br>"+s8);
out.print("<br>"+ts8);
out.print("<br>"+s9);
out.print("<br>"+ts9);
*/


        if(ts1.equals(s1) && ts2.equals(s2) && ts3.equals(s3) && ts4.equals(s4) && ts5.equals(s5) && ts6.equals(s6) && ts8.equals(s8))
        {
             //    out.println("no change is there");
        }
        else
        {
            x=0;

           // out.println("change query for"+s8);
            try
                 {
                //x=stm.executeUpdate("update user set firstname='"+s1+"',lastname='"+s2+"',email_address='"+s3+"',contactno='"+s4+"',country='"+s5+"',address='"+s6+"',password='"+s8+"',security_question='"+s9+"' where username='"+s7+"'");
                x=stm.executeUpdate("update user set firstname='"+s1+"',lastname='"+s2+"',email_address='"+s3+"',contactno='"+s4+"',country='"+s5+"',address='"+s6+"',password='"+s8+"',security_question='"+s9+"' where username='"+s7+"'");
                  }
            catch(Exception e )
                {
                out.println(e.getMessage());
                }
                 
              
               
        }
        %>


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
  <table width="1236" height="591" border="1">
    <tr>
      <td height="395">

                  <form method="get" action="updateProfile.jsp" name="register" onsubmit="return validateForm()">
            <div id="l1">FIRSTNAME:</div>
            <input type="text" name="firstname" id="c1" value="<%=ts1%>" />
            <label id=m1>.</label>
            <br>
            <div id="l2">LASTNAME:</div>
            <input type="text" name="lastname" id="c2" value="<%=ts2%>" />
            <label id=m2>.</label>
            <br>
            <div id="l3">EMAIL ADDRESS:</div>
            <input type="text" name="email_address" id="c3" value="<%=ts3%>" />
            <label id=m3>.</label>
            <br>
            <div id="l4">CONTACT NO:</div>
            <input type="text" name="contactno" id="c4" value="<%=ts4%>" />
            <label id=m4>.</label>
            <br>
            <div id="l5">CITY:</div>
            <input type="text" name="country" id="c5" value="<%=ts5%>" />
            <label id=m5>.</label>
            <br>
            <div id="l6">POSTAL ADDRESS:</div>
            <input type="text" name="address" id="c6" value="<%=ts6%>" />
            <label id=m6>.</label>
            <br>

            <div id="l7">USERNAME:</div>
            <input type="text" name="username" id="c7" value="<%=ts7%>"onclick="clear()" disabled="true">
            <label id=m7>.</label>
            <br>
            <div id="l8">PASSWORD:</div>
            <input type="password" name="password" id="c8">
            <label id=m8>.</label>
            <br>
            <div id="l9">YOUR ANY SECRET SENTENCE:</div>
            <input type="text" name="security_question" id="c9" value="<%=ts9%>" />
            <label id=m9>.</label>
            <br>
            <div id="seclast">(it can be used for recovering forgotten password)<br></div>
            <input name="submit" type="submit" id="submit" value="update">
            <input name="reset" type="reset" id="reset" value="reset">
            <br>
        </form>
	  </td>
<td><%
if(x!=0)
{
out.println("<div id='msgupdate'>user profile updtaed</div>");
}
%></td>
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

