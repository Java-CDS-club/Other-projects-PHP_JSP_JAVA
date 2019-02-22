<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="mainbody" align="center">

                   <div align="left" style="position: absolute; margin-top: -50px; margin-left: 50px">
                       Welcome  <%=session.getAttribute("user") %>

                        <a style="text-decoration:none; position:absolute; margin-left:750px; margin-top: -20px" href="Logout.jsp" >Logout</a>                    </div>
            <div id="quiztime">
                <h5>Time Remaining <span id="countdown" class="timer" style="color: red"></span></h5>
            </div>
<script>
var seconds = 30;
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
        top.location.href = "page.jsp";
        document.getElementById('countdown').innerHTML ="Time Up";
    } else {
        seconds--;
    }
}

var countdownTimer = setInterval('secondPassed()', 1000);
</script>
            <form action="Quiz.jsp" method="POST">
                <div class="quizbdy" align="center"></div>

  <input type="hidden" name="Qno" value="try"/>
            </form>
        </div>
    </body>
</html>