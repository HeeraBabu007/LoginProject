<%-- 
    Document   : registration
    Created on : Jul 15, 2016, 9:09:10 PM
    Author     : jajajajamwant
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>


<%
    
   
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
     String user = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root","root");
    PreparedStatement ps=con.prepareStatement("insert into members values(?,?,?,?,?)");
		
		ps.setString(1,fname);
		ps.setString(2,lname);
		ps.setString(3,email);
                ps.setString(4,user);
		ps.setString(5,pwd);
		int i=ps.executeUpdate();
    if(i>4)
    {
        //session.setAttribute("userid",user);
        response.sendRedirect("welcome.jsp");
        //out.print("Registration Successful!"+"<a href='index.jsp'>Go to Login</a>");
    }
    else
    {
        response.sendRedirect("index.jsp");
    }

 %>
    
