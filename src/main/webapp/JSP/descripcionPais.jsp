<%-- 
    Document   : descripcionPais
    Created on : 27-may-2020, 14:26:20
    Author     : Francisco_Antonio
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>

        <div class="jumbotron text-center">
            <h1>Husos horarios del Mundo.</h1>
            <p><h3>${pais}</h3> y all&iacute; son las <fmt:formatDate type="time" timeStyle="short" timeZone="${gmt}"  value="${fecha}" /></p>
        </div>
        <div class ="container text-center">
            <fmt:setLocale value="es_ES" scope="session"/>
            <fmt:setBundle basename="resource.gtm" var="idioma"/>
            <p>Hola = <fmt:message key="hola" bundle="${idioma}"/></p>
            <p>Adios = <fmt:message key="adios" bundle="${idioma}"/></p>



        <h2>Fecha:</h2>
        <ul class="list-unstyled">   
            <li>Fecha formato corto: <strong><fmt:formatDate type="date" dateStyle="short" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Fecha formato medio: <strong><fmt:formatDate type="date" dateStyle="medium" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Fecha formato largo: <strong><fmt:formatDate type="date" dateStyle="long" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Fecha formato completo: <strong><fmt:formatDate type="date" dateStyle="full" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Fecha formato personalizado: <strong><fmt:formatDate pattern = "MM/dd/yyyy"  value="${fecha}" /></strong></li>

        </ul>
        <br/>
        <h2>Horas:</h2>
        <ul class="list-unstyled">
            <li>Hora formato de hora: <strong><fmt:formatDate type="time" timeStyle="medium" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Hora formato de fecha y hora: <strong><fmt:formatDate type="both" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Hora formato corto de fecha y hora: <strong><fmt:formatDate type="both" timeStyle="short" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Hora formato medio de fecha y hora: <strong><fmt:formatDate type="both" timeStyle="medium" timeZone="${gmt}"  value="${fecha}" /></strong></li>
            <li>Hora formato largo de fecha y hora: <strong><fmt:formatDate type="both" timeStyle="long" timeZone="${gmt}"  value="${fecha}" /></strong></li> 
        </ul>
        <br/>

        <h2>Números:</h2>
        <ul class="list-unstyled">   
            <li><fmt:formatNumber type="currency" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" groupingUsed="true" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" maxIntegerDigits="3" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" maxFractionDigits="6" value="${numero}" /></li>
            <li><fmt:formatNumber type="percent" maxIntegerDigits="4" value="${numero}" /></li>
            <li><fmt:formatNumber type="number" pattern="####.###" value="${numero}" /></li>
        </ul>
        
            <a href="<c:url value = "JSP/paises.jsp" />" align="center" ><h3>Menú Principal</h3></a>
        
        </div>
    </body>
</html>
