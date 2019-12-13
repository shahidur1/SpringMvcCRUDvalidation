<%-- 
    Document   : res
    Created on : Jun 5, 2016, 3:54:56 PM
    Author     : APCL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <c:forEach items="${ai}" var="a">
                <tr>
                    <td>${a.id}</td>
                    <td>${a.name}</td>
                    <td>${a.email}</td>
                    <td>${a.password}</td>
                    <td>${a.dob}</td>
                    <td><a href="delete.htm?id=${a.id}">delete</a></td>
                    <td><a href="upPage.htm?id=${a.id}&name=${a.name}&email=${a.email}&password=${a.password}&dob=${a.dob}">edit</a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="login.jsp">Log out</a>
    </body>
</html>
