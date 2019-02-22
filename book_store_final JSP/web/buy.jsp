
<%-- 
    Document   : buy.jsp
    Created on : Apr 15, 2013, 10:20:12 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/buy.css" rel="stylesheet" type="text/css">
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
	
	<script>
function validateForm()
{
var a=document.getElementById("t1").value;
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


//
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
//

var b=document.getElementById("t2").value;
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

    //
var letters = /^[A-Za-z]+$/;
if(b.match(letters))
{
//
}
else
{
z=document.getElementById("m1");
z.innerHTML="<font color=red><b>only a-z A-Z allowed</font>";
return false;
}
//

var x=document.getElementById("t3").value;
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


var Z=document.getElementById("t4").value;
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


var e=document.getElementById("t5").value;
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


var y=document.getElementById("t6").value;
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
}
</script>

           <div id="content" align="center">
             <p>&nbsp;</p>
             <p>&nbsp;</p>
             <p>
               <%@page language="java" import="java.sql.*" %>
               <%
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
        Statement stm=con.createStatement();

     String s1=request.getParameter("id");
     String s2=null,s3=null,s5=null;
     String qry="select * from book_detail where id="+s1;
     ResultSet rst = stm.executeQuery(qry);
     while(rst.next())
     {
     session.setAttribute("books",s1);
     s2=rst.getString("book_name");
     s3=rst.getString("book_author");
     s5=rst.getString("book_price");
     }
     String s4=(String)session.getAttribute("user");
      if(s4!=""&&s4!=null)
          {
          try
                  {
          out.println("welcome "+s4+"<br>");
          String qry12="select history from user where username='"+s4+"'";
          String history = null;
          ResultSet temp=stm.executeQuery(qry12);
          while(temp.next())
              {
              history=temp.getString("history");
              }
          String qry22="UPDATE `book_store`.`user` SET `history` = '"+s1+" "+history+"' WHERE `user`.`username`='"+s4+"'";
          int b =stm.executeUpdate(qry22);
          }
          catch(SQLException che)
               {
              out.println(che);
              }
          }
      else
          {
          out.println("welcome guest please fill up your details");
          }
     out.println("<br>");
     out.println("you have ordered :");
     out.println("<br>BOOK ID:"+s1);
      out.println("<br>BOOK NAME:"+s2);
       out.println("<br>AUTHOR NAME:"+s3);
       out.println("<br>BOOK PRICE:"+s5);
       out.println("<br>");

%>
             </p>
           </div>
    <form name=confirmation action=confirm.jsp?id=<%=s1%>&book_name=<%=s2%>&book_author=<%=s3%> method=get onsubmit="return validateForm()">
   <p align="center">&nbsp;</p>
   <p align="center">&nbsp;</p>
   <p align="center"><br>
      <div id="l1">FIRST NAME:</div>
            <input id="t1" type="text" name="firstname">
            <label id=m1>.</label>
            <br>
            <br>
           <div id="l2"> LAST NAME:</div>
            <input id="t2" type="text" name="lastname"><label id=m2>.</label>
            <br>
            <br>
           <div id="l4"> EMAIL ADDRESS:</div>
             <input id="t3" type="text" name="email_address"><label id=m3>.</label>
             <br>
            <br>
           <div id="l5"> CONTACT NO:</div>
            <input id="t4" type="text" name="contactno"><label id=m4>.</label>
            <br>
            <br>
           <div id="l6"> CITY:</div>
            <input id="t5" type="text" name="country" value="Indore"><label id=m5>.</label>
            <br>
            <br>
      <div id="addresslabel">COMPLETE POSTAL ADDRESS:</div>
            <textarea id="textarea1" name="address" rows="5" cols="50">
            </textarea><label id=m6>.</label>
            <br>
            <div id="addresslabel2">(address,city name,state name,postal code)</div>
            <br>
   
           <input id="button" type='submit' value='Procede For Payement'/>
      </p>
</form>

<script>
function loc11()
{
location.href='index.jsp';
}
</script>
<input type='button' id=b11 value='Home' onclick="loc11()" />

<script>
function loc12()
{
location.href='aboutus.jsp';
}
</script>
<input type='button' id=b12 value='About us' onclick="loc12()" />

<script>
function loc1()
{
location.href='login.jsp';
}
</script>
<input type='button' id=b1 value='User Login' onclick="loc1()" />
<script>
function loc2()
{
location.href='show.jsp';
}
</script>
<input type='button' id=b2 value='Show All Books' onclick="loc2()" />
<script>
function loc3()
{
location.href='searchbook.jsp';
}
</script>
<input name="button" type='button' id=b3 onClick="loc3()" value='Search Book' />
<script>
function loc4()
{
location.href='contactus.jsp';
}
</script>
<input type='button' id=b4 value=contactus onclick="loc4()" />
<label id=m7><a href=terms.jsp>view terms and conditions</a></label>


    </body>
</html>
