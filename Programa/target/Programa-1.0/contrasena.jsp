<%-- 
    Document   : contraseña
    Created on : 9/05/2023, 7:45:39 p. m.
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
            if (window.confirm('Su contraseña es incorrecta, intentelo de nuevo')) {    
                window.location.href = 'index.jsp';
            }
        }
        alerta();
    </script>
</body>
</html>
