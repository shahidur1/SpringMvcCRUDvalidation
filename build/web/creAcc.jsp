<%-- 
    Document   : creAcc
    Created on : Jun 5, 2016, 3:39:40 PM
    Author     : APCL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="save.htm" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td>:</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>:</td>
                    <td><input type="text" name="email"/></td>
                    <td><form:errors path="student.email"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td>Dob(yyyy-mm-dd)</td>
                    <td>:</td>
                    <td><input type="text" name="dob"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SingUP"/></td>
                    <td></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
