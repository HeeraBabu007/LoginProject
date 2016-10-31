<%-- 
    Document   : login
    Created on : Jul 15, 2016, 11:09:02 PM
    Author     : jajajajamwant
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>
<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root","root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='"+userid+"' and pass='"+pwd+"'");
    if(rs.next())
    {
        session.setAttribute("userid",userid);
        //
        response.sendRedirect("success.jsp");
    }
    else
    {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>    