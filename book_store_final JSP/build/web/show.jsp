<%-- 
    Document   : index
    Created on : Apr 15, 2013, 5:05:17 PM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/show.css" rel="stylesheet" type="text/css">
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
        <h1 id="heading">Welcome guest</h1>
        <%@page language="java" import="java.sql.*" %>
        <div id=content>
		<%

Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_store","root","vertrigo");
    Statement stm = con.createStatement();
    Statement stm2=con.createStatement();
        //String s="INSERT INTO book_detail(`book_name` ,`book_author` ,`book_price`) VALUES ('kukujaora', '9039210587', '200')";
        //boolean a=stm2.execute(s);
       ResultSet rst=stm.executeQuery("select * from book_detail order by book_name asc");
    

          out.println("<table border=1 align='center' cellpadding='1' bordercolor='#000000' bgcolor='#9999FF' id='table1' ><tr bgcolor='#9966FF'><th>Name</th><th>Author Name</th><th>Price</th><th>Purchase</th></tr>");
          while(rst.next())
            {
            out.println("<tr>");
            out.println("<td>"+rst.getString("book_name")+"</td>");
            out.println("<td>"+rst.getString("book_author")+"</td>");
            out.println("<td>"+rst.getString("book_price")+"</td>");
            out.println("<td><a href=buy.jsp?id="+rst.getString("id")+"&book_name="+rst.getString("book_name")+"&book_author="+rst.getString("book_author")+">buy the book</a></td>");
            out.println("</tr>");
            }
  out.println("</table>");
        %>
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
