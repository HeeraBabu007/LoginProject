<%-- 
    Document   : index
    Created on : Jul 15, 2016, 8:19:42 PM
    Author     : jajajajamwant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <centre>
                <table border="1"width="30%"cellpadding="3">
                    <thead>
                        <tr>
                            <th colspan="2">Login Here</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>User Name</td>
                            <td><input type="text"name="uname"value=""/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password"name="pass"value=""/></td>
                        </tr>
                        <tr>
                            <td><input type="submit"value="Login"/></td>
                            <td><input type="reset"value="Reset"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">Yet Not Registered!!<a href="reg.jsp">Register Here</a></td>
                        </tr>
                    </tbody>
                </table>
            </centre>
        </form>
    </body>
</html>
