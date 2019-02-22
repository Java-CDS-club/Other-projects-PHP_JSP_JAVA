<%-- 
    Document   : editbook
    Created on : Apr 16, 2013, 10:07:30 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
         <link href="css/editbook.css" rel="stylesheet" type="text/css">
    </head>
    <body background="images/back.gif">
          <%@page language="java" import="java.sql.*" %>

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


		<%
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
        Statement stm=con.createStatement();
        String s=(String)session.getAttribute("auth");
        String s1=request.getParameter("id");
        String s2=(String)request.getParameter("way");

if(s=="yes")
    {
       

            if(s2!=null && s2.equals("d"))
             {
             String qry="DELETE FROM book_detail WHERE id="+s1;
             stm.execute(qry);
             }
         else
             {
             out.println("Welcome administrator");
             }

         String s1_new=request.getParameter("new_book_name");
        String s2_new=request.getParameter("new_book_author");
        String s3_new=request.getParameter("new_book_price");
       if(s2!=null && s2.equals("edit"))
           {
           if(s1_new!=null && s2_new!=null)
               {
           try{
             String qry="UPDATE `book_store`.`book_detail` SET `book_name` = '"+s1_new+"',`book_author` = '"+s2_new+"',`book_price` = '"+s3_new+"' WHERE `book_detail`.`id` ="+s1+" LIMIT 1 ;";
             stm.execute(qry);
             }
           catch(SQLException sqe)
                   {
               out.println(sqe);
               }
           }
           }



      
        //
        //procedure to show table
        //
        ResultSet rst=stm.executeQuery("select * from book_detail order by id asc");
        out.println("<table border=1 cellpadding='1' bordercolor='#000000' bgcolor='#9999FF' id='table1'><tr bgcolor='#9966FF'><th>Id</th><th>Name</th><th>Author Name</th><th>Price</th><th>Edit</th></tr>");
        while(rst.next())
        {
        out.println("<tr>");
        out.println("<td>"+rst.getString("id")+"</td>");
        out.println("<td>"+rst.getString("book_name")+"</td>");
        out.println("<td>"+rst.getString("book_author")+"</td>");
        out.println("<td>"+rst.getString("book_price")+"</td>");
        out.println("<td><a href='editbook.jsp?id="+rst.getString("id")+"&way=edit'>edit</a></td>");
        out.println("</tr>");
        }



        //
        //select a particular id on link click
        //
        Statement stm3=con.createStatement();
        ResultSet rst3=stm3.executeQuery("select * from book_detail where id="+s1);
        String s3="",s4="",s5="";
        while(rst3.next())
        {
        s3 = rst3.getString("book_name");
        s4 = rst3.getString("book_author");
        s5 = rst3.getString("book_price");
        }
  
       out.println(" <form action='editbook.jsp' method='get'><input type='hidden' value='"+s1+"' name='id'>");
       out.println("<label id='l1'>Book Name:</label><input id=tf1 type='text' name='new_book_name' value='"+s3+"'><br>");
       out.println("<label id='l2'>Author Name:</label><input id=tf2 type='text' name='new_book_author' value='"+s4+"'><br>");
       out.println("<label id='l3'>Book Price:</label><input id=tf3 type='text' name='new_book_price' value='"+s5+"'><br>");
       out.println("<input type='hidden' value='edit' name='way'>");
       out.println("<input id=submit type='submit' value='update'></form>");
       out.println("");

               }
    else
        {
        out.println("only Administrator can access this page");
        }

    %>

<p align=centre><br></p>
    </body>
</html>
