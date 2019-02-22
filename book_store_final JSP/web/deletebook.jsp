<%-- 
    Document   : deletebook
    Created on : Apr 18, 2013, 5:14:22 PM
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
         <link href="css/deletebook.css" rel="stylesheet" type="text/css">
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
        String s1=request.getParameter("id");
        String s2=(String)request.getParameter("way");
        String s=(String)session.getAttribute("auth");
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




        //
        //procedure to show table
        //
        ResultSet rst=stm.executeQuery("select * from book_detail order by id asc");
        out.println("<table border=1 align='center' cellpadding='1' bordercolor='#000000' bgcolor='#9999FF' id='table1'><tr bgcolor='#9966FF'><th>Id</th><th>name</th><th>author name</th><th>price</th><th>delete</th></tr>");
        while(rst.next())
        {
        out.println("<tr>");
        out.println("<td>"+rst.getString("id")+"</td>");
        out.println("<td>"+rst.getString("book_name")+"</td>");
        out.println("<td>"+rst.getString("book_author")+"</td>");
        out.println("<td>"+rst.getString("book_price")+"</td>");
        out.println("<td><a href='deletebook.jsp?id="+rst.getString("id")+"&way=d'>delete</a></td>");
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
                       }
    else
        {
        out.println("only Administrator can access this page");
        }


%>


    </body>
    </body>
</html>
