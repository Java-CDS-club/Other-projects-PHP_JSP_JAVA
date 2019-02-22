<%-- 
    Document   : searchbook
    Created on : Apr 15, 2013, 10:50:57 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/searchbook.css" rel="stylesheet" type="text/css">
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
        <div align="center">
          <%@page language="java" import="java.sql.*" %>
          
        </div>
        <h1 align="center">&nbsp;</h1>
        <h1 align="center">Advanced Search Book with multiple options:</h1>
        <form method="get" action="searchbook.jsp">
            <div align="center">
			<div id="l1">Book name:</div>
              <input id="t1" type="text" name="name">
              <div id=l4>OR</div>
              <br> 
            <div id="l2">Author name:</div>
            <input id="t2" type="text" name="author">
            <br>
             <div id="l5">OR</div>
             <br>
            <div id="l3">Id:</div>
            <input id="t3" type="text" name="book_id">
            <br>
            <input id="submit" type="submit" value="search" >
            </div>
        </form>
         <div align="center">
           <p>&nbsp;           </p>
           <p>&nbsp;</p>
           <p>&nbsp;</p>
           <p>
             <%
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
        Statement stm=con.createStatement();
        String name=request.getParameter("name");
        String author=request.getParameter("author");
        String book_id=request.getParameter("book_id");
        int found=0;

        if(name!="" || author!="")
            {
            if(name!="")
                {
            name = name+"%";
            }
            if(author!="")
                {
            author = author+"%";
            }
            //
            // if exact name of book and author matches
            //
        String qry="select * from book_detail where book_name like '"+name+"' or book_author like '"+author+"'";
        ResultSet rst=stm.executeQuery(qry);
        out.println("<table border=1 align='center' cellpadding='1' bordercolor='#000000' bgcolor='#9999FF' id='table1'>");
        out.println("<tr bgcolor='#9966FF'><th>ID</th><th>BOOK NAME</th><th>AUTHOR NAME</th><th>PRICE</th><th>Buy</th></tr>");
         while(rst.next())
             {
             found=1;
             String temp1=rst.getString("id");
             String temp2=rst.getString("book_name");
             String temp3=rst.getString("book_author");
             String temp4=rst.getString("book_price");

             out.println("<tr>");
             out.println("<td>"+temp1+"</td>");
             out.println("<td>"+temp2+"</td>");
             out.println("<td>"+temp3+"</td>");
             out.println("<td>"+temp4+"</td>");
             out.println("<td><a href=buy.jsp?id="+rst.getString("id")+"&book_name="+rst.getString("book_name")+"&book_author="+rst.getString("book_author")+">buy the book</a></td>");
             out.println("</tr>");
             }
        out.println("</table>");

  
        }
        
        else
            {
            if(book_id!="")
            {

            String qry="select * from book_detail where id='"+book_id+"'";
        ResultSet rst=stm.executeQuery(qry);
        out.println("<table border=1 align='center' cellpadding='1' bordercolor='#000000' bgcolor='#9999FF' id='table1'>");
        out.println("<tr bgcolor='#9966FF'><td>ID</td><td>BOOK NAME</td><td>AUTHOR NAME</td><td>PRICE</td></tr>");
         while(rst.next())
             {
             found=1;
             String temp1=rst.getString("id");
             String temp2=rst.getString("book_name");
             String temp3=rst.getString("book_author");
             String temp4=rst.getString("book_price");

             out.println("<tr>");
             out.println("<td>"+temp1+"</td>");
             out.println("<td>"+temp2+"</td>");
             out.println("<td>"+temp3+"</td>");
             out.println("<td>"+temp4+"</td>");
             out.println("</tr>");
             }
        out.println("</table>");
        
        }


        if(found==0)
            {
            out.println("would you want to have a glance at all other book stuffs<a href=show.jsp>show books</a>");
            }
}
 %>
             
           </p>
         </div>
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

    </body>
</html>
