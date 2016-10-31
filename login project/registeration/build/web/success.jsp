<%-- 
    Document   : success
    Created on : Jul 15, 2016, 11:51:42 PM
    Author     : jajajajamwant
--%>

<%
    if((session.getAttribute("userid")==null)||(session.getAttribute("userid")=="")){
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%
}
else
{
%>
Welcome <%=session.getAttribute("userid")%>
<a href="logout.jsp">Log out</a>
<%
}
%>