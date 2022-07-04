<%-- 
    Document   : error500.jsp
    Created on : 10-jun-2022, 20:07:55
    Author     : juanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/error500.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="main-error-page text-center">
            <img src="images/404.gif">

            <h1 class="error-title">
                Ups! <br>Algo anda mal
            </h1>
            <h2 class="error-subtitle">
                la pagina que andas buscando no existe
            </h2>
            <script>
                document.write('<a href="' + document.referrer + '">Regresar</a>');
            </script>

        </div>

    </body>
</html>
