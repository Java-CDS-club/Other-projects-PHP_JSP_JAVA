<%-- 
    Document   : result
    Created on : Apr 16, 2014, 8:53:43 PM
    Author     : magic
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                        <link href="css/abhi.css" rel="stylesheet" type="text/css" />
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
              <td><input name="button" type='button' id='button' onclick="loc(1)" value='Home' /></td>
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
  String id=request.getParameter("cid");
 out.print("Test Result for course id="+id+"<br>");
 int  score=0;
 int total=3;

   //
   // session k sath khel
   //
  String qlist=(String)session.getAttribute("qlist");
 //out.print("form session="+qlist+"<br>");
String[] qid=qlist.split("#");
//
//url sy fetch kro
String ans1=request.getParameter(qid[1]);
String ans2=request.getParameter(qid[2]);
String ans3=request.getParameter(qid[3]);

if(ans1==null)
    {
    ans1="<font color=red>unattempted</font>";
    }
if(ans2==null)
    {
    ans2="<font color=red>unattempted</font>";
    }
if(ans3==null)
    {
    ans3="<font color=red>unattempted</font>";
    }
//    out.print("qid[1]"+qid[1]+" you ans was "+ans1+"<br>");
  //    out.print("qid[2]"+qid[2]+" you ans was "+ans2+"<br>");
    //    out.print("qid[3]"+qid[3]+" you ans was "+ans3+"<br>");




        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/opencourseware","root","root");
        Statement stm=con.createStatement();
        ResultSet rst=stm.executeQuery(" SELECT * FROM test where tid="+qid[1]+" ");

           while(rst.next())
               {
               String dquestion=rst.getString("question");
               String dtestans=rst.getString("testans");
              /*if(ans1.equals(dtestans))
                  {
                   out.print("ans for qid[1] was correct <br>");
                  }
               else
                   {
                   out.print("ans for qid[1] was "+dtestans+"<br>");
                   }
                */
                score=ans1.equals(dtestans)?score+1:score;
             out.print("<table border='1'width='1226' bgcolor='#FFFFCC'>");
             out.print("<tr><td>"+dquestion+"</td></tr>");
             out.print(" <tr><td>you ans was :"+ans1+"</td></tr>");
             out.print(" <tr><td><font color=green>correct ans is: "+dtestans+"</font></td></tr>");
             out.print(" </table>");
               }

        //second q k liye

             rst=stm.executeQuery(" SELECT * FROM test where tid="+qid[2]+" ");

           while(rst.next())
               {
               String dquestion=rst.getString("question");
               String dtestans=rst.getString("testans");
              /*if(ans1.equals(dtestans))
                  {
                   out.print("ans for qid[1] was correct <br>");
                  }
               else
                   {
                   out.print("ans for qid[1] was "+dtestans+"<br>");
                   }
                */
               score=ans2.equals(dtestans)?score+1:score;

             out.print("<table border='1'width='1226' bgcolor='#FFFFCC'>");
             out.print("<tr><td>"+dquestion+"</td></tr>");
             out.print(" <tr><td>you ans was :"+ans2+"</td></tr>");
             out.print(" <tr><td><font color=green>correct ans is: "+dtestans+"</font></td></tr>");
             out.print(" </table>");
               }

             // 3 rd q k liye

           rst=stm.executeQuery(" SELECT * FROM test where tid="+qid[3]+" ");

           while(rst.next())
               {
               String dquestion=rst.getString("question");
               String dtestans=rst.getString("testans");
              /*if(ans1.equals(dtestans))
                  {
                   out.print("ans for qid[1] was correct <br>");
                  }
               else
                   {
                   out.print("ans for qid[1] was "+dtestans+"<br>");
                   }
                */
                score=ans3.equals(dtestans)?score+1:score;
             out.print("<table border='1'width='1226' bgcolor='#FFFFCC'>");
             out.print("<tr><td>"+dquestion+"</td></tr>");
             out.print(" <tr><td>you ans was :"+ans3+"</td></tr>");
             out.print(" <tr><td><font color=green>correct ans is: "+dtestans+"</font></td></tr>");
             out.print(" </table>");
               }

out.print("<br><font color=red size=14>your score is "+score+"<br></font>");
        %>
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
            alert(document.cookie);
        }


        </script>



    </body>
</html>
