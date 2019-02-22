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

var a=document.getElementById("cid").value;
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



var a=document.getElementById("question").value;
if (a==null || a=="")
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



var a=document.getElementById("testans").value;
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
    var a=document.getElementById("a").value;
if (a==null || a=="")
  {
z=document.getElementById("m4");
z.innerHTML="<b><font color=red>* required</font></b>";
  return false;
  }
  else
    {
z=document.getElementById("m4");
z.innerHTML="";
    }
    var a=document.getElementById("b").value;
if (a==null || a=="")
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
    var a=document.getElementById("c").value;
if (a==null || a=="")
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
    var a=document.getElementById("d").value;
if (a==null || a=="")
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


}
// fun fun end
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
       location.href='adminapproval.jsp?approval=course';
     }
      else if(z=='4')
     {
       location.href='adminapproval.jsp?approval=feedback';
     }
      else if(z=='5')
     {
       location.href='adminapproval.jsp?approval=user';
     }
      else if(z=='6')
     {
       location.href='addtest.jsp';
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
                <td><input name="button" type='button' id='button' onclick="loc(1)" value='Home'  /></td>
               <td><input name="button2" type='button' id='button' onclick="loc(3)" value='course approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(4)" value='feedback approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(5)" value='user approval' /></td>
              <td><input name="button2" type='button' id='button' onclick="loc(6)" value='create test' /></td>
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
                    <td>Cid</td>
                    <td><input type="text" id="cid" name="cid" class="text" /><label id=m1>.</label></td>
                </tr>
                <tr>
                    <td>Question</td>
                    <td><textarea name="question" id="question" rows="4" cols="20" class="text"></textarea><label id=m2>.</label></td>
                </tr>
                <tr>
                    <td>testans</td>
                    <td><input type="text" id="testans" name="testans"  class="text" /><label id=m3>.</label></td>
                </tr>
                 <tr>
                    <td>Option a</td>
                    <td><input type="text" id="a" name="a" class="text" /><label id=m4>.</label></td>
                </tr>
                 <tr>
                    <td>Option b</td>
                    <td><input type="text" id="b" name="b" class="text" /><label id=m5>.</label></td>
                </tr>
                  <tr>
                    <td>Option c</td>
                    <td><input type="text" id="c" name="c"  class="text" /><label id=m6>.</label></td>
                </tr>
                   <tr>
                    <td>Option d</td>
                    <td><input type="text" id="d" name="d"  class="text" /><label id=m7>.</label></td>
                </tr>

                <tr><td></td><td colspan="2"><input type="submit" value="submit" /></td></tr>
        </table>
</form>

        <%
         Connection con;
         PreparedStatement ps;


 try {

        String cid=request.getParameter("cid");
          String question=request.getParameter("question");
            String testans=request.getParameter("testans");
            String feedback=request.getParameter("feedback");
            String a=request.getParameter("a");
            String b=request.getParameter("b");
            String c=request.getParameter("c");
            String d=request.getParameter("d");

            //random no k liye

         double x=Math.random();
         //out.println(x);
         int n1=(int)(x*100);
          x=Math.random();
         //out.println(x);
         int n2=(int)(x*100);
          x=Math.random();
         //out.println(x);
         int n3=(int)(x*100);
          x=Math.random();
         //out.println(x);
         int n4=(int)(x*100);
           x=Math.random();
         //out.println(x);
         int n5=(int)(x*100);


            if(cid==null || testans=="")
                {

                }
            else
                {
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
    Statement stm = con.createStatement();



  String sql=  "INSERT INTO `opencourseware`.`test` (`tid` ,`cid` ,`question` ,`testans` ,`a` ,`b` ,`c` ,`d` ,`arng0` ,`arng1` ,`arng2` ,`arng3` ,`arng4`)VALUES (NULL , '"+cid+"', '"+question+"', '"+testans+"', '"+a+"', '"+b+"', '"+c+"', '"+d+"', '"+n1+"', '"+n2+"', '"+n3+"', '"+n4+"', '"+n5+"');";
int x9=stm.executeUpdate(sql);

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
