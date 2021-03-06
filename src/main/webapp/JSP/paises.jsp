<%-- 
    Document   : paises
    Created on : 27-may-2020, 14:25:12
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
        <title>Men&uacute; Paises del Mundo.</title>
    </head>
    <body>
        <div class="jumbotron text-center">
            <h1>Paises del mundo.</h1>
            <p>Pulsa en la imagen para acceder a la aplicaci&oacute;n.</p> 
        </div>
        <div class="container">
            <form action="Formato" method="post">
                <c:set var="paises" value="${paises}"/>
                <select class="form-control" name="pais">
                    <option value="-1" selected="true">Elige un país</option>
                    <c:forEach var="pais" items="${paises}">
                        <option value="${pais.value}-${pais.key}">${pais.key}</option>
                    </c:forEach>
                </select>
                <br><br>
            <div class="col text-center">    
                <button type="submit" class="btn btn-primary" name="enviar" value="Enviar"/>Enviar
                <button type="submit" class="btn btn-primary" name="menu" value="Menu"/>Salir
            </div>
            </form>


        </div>
    </body>
</html>
