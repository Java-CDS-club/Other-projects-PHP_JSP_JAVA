<%-- 
    Document   : addbook
    Created on : Apr 15, 2013, 10:50:41 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/addbook.css" rel="stylesheet" type="text/css">
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
        <%@page language="java" import="java.sql.*,java.util.*" %>
        <script>
function validateForm()
{
var a=document.getElementById("tf1").value;
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

var b=document.getElementById("tf2").value;
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
var c=document.getElementById("tf3").value;
if (c==null || c=="")
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
        </script>
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
<%
          try
                  {
          Cookie cuke=new Cookie("data","0");
        String s1=request.getParameter("book_name");

        String s2=request.getParameter("book_author");
     
        String s3=request.getParameter("book_price");

         String s=(String)session.getAttribute("auth");
       if(s=="yes")
    {

        if((s1!=null && s2!=null )&& s3!=null )
        {
        if((s1!="" && s2!="" )&& s3!="")

        {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
        Statement stm=con.createStatement();
        boolean a;
                String s1s =(String)s1.substring(0,1);
                   String s2s =(String)s2.substring(0,1);

        String qry="insert into book_detail(book_name,book_author,book_price,book_name_first,book_author_first) values('"+s1+"','"+s2+"','"+s3+"','"+s1s+"','"+s2s+"')";
        a=stm.execute(qry);
        con.close();
        out.println("<label id=content>New Book Added sucessfully</label>");
        }
        }




       

			//out.println("<div id='content'>");
            out.println("<form method='get' action='addbook.jsp' name='addbook'  onsubmit='return validateForm()'>");
            out.println("<label id='l1'>Book Name:</label><input id='tf1' type='text' name='book_name'><label id='m1'>.</label><br>");
            out.println("<label id='l2'>Author name:</label><input id='tf2' type='text' name='book_author'><label id='m2'>.</label><br>");
            out.println("<label id='l3'>Price:</label><input id='tf3' type='text' name='book_price'><label id='m3'>.</label><br>");
            out.println("<input id=submit type='submit' value='submit'><br></form>");
			//out.println("</div>");

            }
         else
             {
             out.println("only Administrator can access this page");
             }
}
          catch(Exception e)
                  { out.print(e);
              }
 %>
<input type='button' id=b4 value=contactus onclick="loc4()" />
          

    </body>
</html>
