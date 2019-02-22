<%-- 
    Document   : admin
    Created on : Apr 18, 2013, 12:30:04 AM
    Author     : black_queen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/admin.css" rel="stylesheet" type="text/css">
		 <link href="css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body background="images/back.gif">
        <h1 id="heading"> Hello Admin!</h1>
        <table border='1' align='center' cellpadding='1' bordercolor='#000000' bgcolor='#9999FF' id='table1'>
            <thead>
                <tr bgcolor="#9966FF">
                    <th>OPERATION DETAIL</th>
                    <th>OPERATION</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Add new book to database</td>
                    <td><a href="addbook.jsp">ADD BOOK</a></td>
                </tr>
                <tr>
                    <td>Edit existing book detail</td>
                    <td><a href="editbook.jsp">EDIT BOOK</a></td>
                </tr>
                 <tr>
                    <td>Delete existing book</td>
                    <td><a href="deletebook.jsp">DELETE BOOK</a></td>
                </tr>
                  <tr>
                    <td>Show all book from database</td>
                    <td><a href="show.jsp">SHOW BOOKS</a></td>
                </tr>
                  <tr>
                    <td>Home page</td>
                    <td><a href="index.jsp">HOME PAGE</a></td>
                </tr>
                   <tr>
                    <td>View Orders From all users</td>
                    <td><a href="seeorder.jsp">VIEW ORDERS</a></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
