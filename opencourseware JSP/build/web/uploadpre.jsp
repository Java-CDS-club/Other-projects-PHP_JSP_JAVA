<%--
    Document   : upload
    Created on : Apr 13, 2014, 9:34:44 PM
    Author     : magic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/abhi.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
       function fun()
        {
            var x=document.getElementById("stream");
            var y=x.value;
            //document.cookie="stream=ram";
            document.cookie = "stream="+y;

            var x=document.getElementById("sem");
            var y=x.value;
            document.cookie = "sem="+y;
            //alert(y);
            var x=document.getElementById("textarea");
            var y=x.value;
            //
            //since getvalue of cookie pura pad na paa rha
            //y=y.replace(" ","#myesc#");
            y=y.toString();

            var c=document.getElementById("sem");
            var q=c.value;

            document.cookie = "textarea="+y;
           // alert(y);
            var x=document.getElementById("form1");
            x.action="uploadimpl.jsp?textarea='"+y+"'&data2="+q+"";
            var y=x.action;
           // alert(y);
        }


        </script>

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


}
</script>

    </head>
    <body>

        <%
        String stream=request.getParameter("stream");
         String subject=request.getParameter("subject");

        %>



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
          <center>

             <form id="form1" action="uploadimpl.jsp" method="post" enctype="multipart/form-data" >

        <table border='1' bgcolor="#FFFFCC">
                <tr>
                    <td>Select File:</td>
                    <td><input type="file" id='button' name="fname" /><br/></td>
                </tr>
                <tr>
                    <td>Select stream:</td>
                    <td>
                        <input type="text" id="stream" value="<%=stream%>" disabled="true"/>
                    </td>
                 </tr>
                <tr>
          <td>Select Subject:</td>
          <td>
              <input type="text" id="sem" value="<%=subject%>" />
          </td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><textarea id="textarea" name="textarea"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" id='button' onclick="fun()"/></td>
                </tr>
        </table>
    </form>

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
      <td width="1236">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>


    </body>
</html>
