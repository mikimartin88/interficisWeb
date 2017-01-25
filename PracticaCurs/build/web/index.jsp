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
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>Escribo esto pa que veas que ya lo he cloneado jeje</h2>
        <%
            PruebaBD tmp = new PruebaBD();
            out.print(tmp.pintar());
        %>
    </body>
</html>
