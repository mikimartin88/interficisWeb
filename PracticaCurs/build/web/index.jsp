<%-- 
    Document   : index
    Created on : 30-dic-2016, 20:07:25
    Author     : mmartin
--%>

<%@page import="baseDatos.PruebaBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            PruebaBD tmp = new PruebaBD();
            out.print(tmp.pintar());
        %>
    </body>
</html>
