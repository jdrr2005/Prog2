<%-- 
    Document   : errordeInicio
    Created on : 8/05/2023, 11:31:02 p. m.
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
                if (window.confirm('Uste no se encuentra registrado, registrese y vuelva a intentarlo.')) {
                    window.location.href = 'formulario.jsp';
                }
            }
            alerta();
        </script>
    </body>
</html>
