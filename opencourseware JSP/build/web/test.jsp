<%-- 
    Document   : test
    Created on : Apr 13, 2014, 8:35:44 PM
    Author     : magic
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>test Page</title>
                <link href="css/abhi.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
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
// kitny question chiye
//
int setting=30;
//
//
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
      else if(z=='6')
     {
       location.href='testlist.jsp';
     }


}


</script>

<script>
var seconds = 60*3;
function secondPassed() {
    var minutes = Math.round((seconds - 30)/60);
    var remainingSeconds = seconds % 60;
    if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds;
    }
    document.getElementById('countdown').innerHTML = minutes + ":" + remainingSeconds + " mins";
    if (seconds == 0) {
        clearInterval(countdownTimer);
        alert("Time over");
        document.getElementById("myform").submit();
        //top.location.href = "page.jsp";
        document.getElementById('countdown').innerHTML ="Time Up";
    } else {
        seconds--;
    }
}

var countdownTimer = setInterval('secondPassed()', 1000);
</script>

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
              <td><input name="button2" type='button' id='button' onclick="loc(6)" value='Test' /></td>
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
  <table width="1236" height="480" border="1">
    <tr>
      <td height="235">


<%
int total=0;
        String id=request.getParameter("id");
        session.setAttribute("id",id);
        String qlist="";
        %>

        <form action="resultnew.jsp" method="post" id="myform">
        <%
        //random fun k liye

         String arng="arng";

         double x=Math.random();
         //out.println(x);
         int y=(int)(x*10);
         y=y%4;
         arng=arng+y;


        out.print("<center><font color=red size=9>Test For Course Id="+id+"</font></center><br>");
        %>

        <%

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
        Statement stm=con.createStatement();
         ResultSet rst=stm.executeQuery(" SELECT * FROM test where cid="+id+" ORDER BY "+arng+" asc LIMIT 0 , "+setting+"");
         while(rst.next())
               {
               String tid = rst.getString("tid");
               qlist=qlist+"#"+tid;
               }
    if(qlist.length()<1)
    {
       out.println("<center><font color=red size=9>Questions would be updated soon</font></center>");
    }
    else
      {
             %>
            <div id="quiztime">
                <h5>Time Remaining <span id="countdown" class="timer" style="color: red"></span></h5>
            </div>
             <%

      }
         //out.println(qlist.length());
        //
        // 3 question ki limit lga rkhi konsy bhi 3 ayegy
        //
        rst=stm.executeQuery(" SELECT * FROM test where cid="+id+" ORDER BY "+arng+" asc LIMIT 0 , "+setting+"");

           while(rst.next())
               {
               total++;
               String tid = rst.getString("tid");
              // qlist=qlist+"#"+tid;
               String question = rst.getString("question");
               String a = rst.getString("a");
               String b = rst.getString("b");
               String c = rst.getString("c");
               String d = rst.getString("d");
               out.println("<br>");
               out.println("<table border='1'width='1226' bgcolor='#FFFFCC'>");
               //out.println("<tr><td>["+tid+"] "+question+"</td></tr>");
               out.println("<tr><td>[Ques] "+question+"</td></tr>");
               out.println("</table>");
               out.println("<table border='0'>");
               out.println("<tr><td><input type='radio' name='"+tid+"' id='common'value='a' />"+a+"</td><td><input type='radio' name='"+tid+"' id='common'value='b' />"+b+"</td></tr>");
               out.println("<tr><td><input type='radio' name='"+tid+"' id='common'value='c' />"+c+"</td><td><input type='radio' name='"+tid+"' id='common'value='d' />"+d+"</td></tr>");
               out.println("</table>");
               out.println("<br>");

               }
    if(qlist.length()>=2)
    {
      out.println("<input type='hidden' name='cid' value='"+id+"'/>");
      out.println("<input type='submit' id='button' value='submit' />");
    }
     else
            {
            //  out.println("Questions would be updated soon");
            }
         // out.println("question fetched ="+qlist);
          session.setAttribute("qlist", qlist);
        %>

        <input type="hidden" name="total" value="<%=total%>" />
        
                
</form>
                
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



        <script type="text/javascript">
        function fun()
        {
        //    alert(document.cookie);
        }


        </script>








    </body>
</html>
