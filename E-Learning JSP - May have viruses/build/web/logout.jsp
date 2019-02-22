<%@page session="false" %>

<%

response.addHeader("cache-control", "no-cache");
HttpSession session=request.getSession(false);
if(session==null)
{
    response.sendRedirect("login.jsp");
    return;
}
session.invalidate();
session=null;

%>
<jsp:forward page="login.jsp"/>