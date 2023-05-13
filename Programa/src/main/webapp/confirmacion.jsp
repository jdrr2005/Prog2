<%-- 
    Document   : confirmacion
    Created on : 8/05/2023, 8:25:45 p. m.
    Author     : Brayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Alerta</title>
    </head>
    <body>
        <script>
            function alerta() {
                if (window.confirm('Su registro a sido exitoso  ')) {
                    window.location.href = 'index.jsp';
                }
            }
            alerta();
        </script>
    </body>
</html>




