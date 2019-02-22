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
       location.href='login.jsp';
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


       String s1=request.getParameter("firstname");
        String s2=request.getParameter("lastname");
        String s3=request.getParameter("email_address");
        String s4=request.getParameter("contactno");
        String s5=request.getParameter("country");
        String s6=request.getParameter("address");
        String s7=request.getParameter("username");
        String s8=request.getParameter("password");
        String s9=request.getParameter("security_question");

        if(s1==null || s2==null || s5==null)
            {
            s1=s2=s3=s4=s5=s6=s7=s8=s9="";
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
            <tr>
              <td><input name="button" type='button' id='button' onclick="loc(1)" value='Home' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(2)" value='Login' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(3)" value='Show Courses' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value=contactus /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value=feedback /></td>
            </tr>
          </table>
	    </center>	  </td>
    </tr>
  </table>
  </center>
</div>
<div id="content">
<center>
  <table width="1236" height="591" border="0">
    <tr>
      <td height="395">

                  <form method="get" action="register.jsp" name="register" onsubmit="return validateForm()">
            <div id="l1">FIRSTNAME:</div>
            <input type="text" name="firstname" id="c1" value="<%=s1%>" />
            <label id=m1>.</label>
            <br>
            <div id="l2">LASTNAME:</div>
            <input type="text" name="lastname" id="c2" value="<%=s2%>" />
            <label id=m2>.</label>
            <br>
            <div id="l3">EMAIL ADDRESS:</div>
            <input type="text" name="email_address" id="c3" value="<%=s3%>" />
            <label id=m3>.</label>
            <br>
            <div id="l4">CONTACT NO:</div>
            <input type="text" name="contactno" id="c4" value="<%=s4%>" />
            <label id=m4>.</label>
            <br>
            <div id="l5">CITY:</div>
            <input type="text" name="country" id="c5" value="<%=s5%>" />
            <label id=m5>.</label>
            <br>
            <div id="l6">POSTAL ADDRESS:</div>
            <input type="text" name="address" id="c6" value="<%=s6%>" />
            <label id=m6>.</label>
            <br>

            <div id="l7">USERNAME:</div>
            <input type="text" name="username" id="c7" onclick="clear()">
            <label id=m7>.</label>
            <br>
            <div id="l8">PASSWORD:</div>
            <input type="password" name="password" id="c8">
            <label id=m8>.</label>
            <br>
            <div id="l9">YOUR ANY SECRET SENTENCE:</div>
            <input type="text" name="security_question" id="c9" value="<%=s9%>" />
            <label id=m9>.</label>
            <br>
            <div id="seclast">(it can be used for recovering forgotten password)<br></div>
            <input name="submit" type="submit" id="submit" value="submit">
            <input name="reset" type="reset" id="reset" value="reset">
            <br>


        </form>

	  </td>

      <td>
          <div id="jsp">
        <%



        if((s1==null && s8==null) ||(s1=="" && s8==""))
        {

                out.println("");
                s1=s2=s3=s4=s5=s6=s7=s8=s9="";

        }
        else
        {
        Cookie cukee=new Cookie("lastpage","register.jsp");

        cukee.setMaxAge(24 * 60 * 60);

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
        Statement stm=con.createStatement();
        try
                {
        boolean a;
        String qry="insert into user(firstname,lastname,email_address,contactno,country,address,username,password,security_question,type) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','student')";
        a=stm.execute(qry);
        con.close();
        out.println("<div><blink><font color=red size=5>new user registered sucessfully<br><a href=login.jsp>please go back and login</a></font></blink></div>");
        //out.println("<script>setTimeout(location.href='login.jsp',5000);</script>");
            }
        catch(SQLException che)
            {
            out.println("<div id=message><font color=red size=10>please select a different username</font></div>");

            }

        }
        %>
		</div>

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

