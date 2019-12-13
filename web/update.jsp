<%-- 
    Document   : update
    Created on : Jun 5, 2016, 3:55:08 PM
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
        <form action="update1.htm">
            <table>
                <tr>
                    <td>Id</td>
                    <td>:</td>
                    <td><input type="text" name="id" value="${student.id}"/></td>
                </tr>
                
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td><input type="text" name="name" value="${student.name}"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>:</td>
                    <td><input type="text" name="email" value="${student.email}"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td><input type="password" name="password" value="${student.password}"/></td>
                </tr>
                <tr>
                    <td>Dob</td>
                    <td>:</td>
                    <td><input type="text" name="dob" value="${student.dob}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update"/></td>
                    <td></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
