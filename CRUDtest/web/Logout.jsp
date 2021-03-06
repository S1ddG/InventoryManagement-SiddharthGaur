<%-- 
    Document   : Logout
    Created on : 6 Mar, 2021, 1:44:04 AM
    Author     : gaurs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session = request.getSession();
            session.invalidate();
            response.sendRedirect("index.html");
        
        %>
    </body>
</html>
