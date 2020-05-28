<%-- 
    Document   : index
    Created on : 28-may-2020, 13:30:24
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>PaisesFranciscoAMP</title>
    </head>
    <body>
        <div class="jumbotron text-center">
            <h1>Paises del mundo.</h1>
            <p>Pulsa en la imagen para acceder a la aplicaci&oacute;n.</p> 
        </div>
        
        <form action="Pais" method="post">
            <img src="IMG/mapaMundial.gif" class="rounded mx-auto d-block" alt="Cinque Terre" width="304" height="236"> 
            <br>
            <div class="col text-center">
                <button type="submit" name="paises" class="btn btn-info" value="Paises">Info Paises</button>
            </div>
        </form>
    </body>
</html>
