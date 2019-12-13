<%-- 
    Document   : login
    Created on : Jun 5, 2016, 3:30:25 PM
    Author     : APCL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="chek.htm">
            <table>
                <tr>
                    <td>Id</td>
                    <td>:</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                
                
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td><input type="password" name="password"/></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login"/></td>
                    <td></td>
                </tr>
            </table>
            
        </form>
        
        <a href="creAcc.jsp">Sign Up</a>
    </body>
</html>
