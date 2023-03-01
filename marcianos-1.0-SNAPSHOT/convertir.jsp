<%-- 
    Document   : convertir
    Created on : 1 mar 2023, 10:32:47
    Author     : JOHN JAIRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Convertido</title>
        <link href="marcianos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <script>
       
            alert("Su respuesta esta siendo procesada ❤");
        
    </script>
       
       <%
           double grad = Double.parseDouble(request.getParameter("grad"));
           double rad = Double.parseDouble(request.getParameter("rad"));           
           
           double grados=0, radianes=0;
           grados=(rad*180)/3.14159265359;
           radianes=(grad*3.14159265359)/180;
           
           if(grad!=0)out.println("La conversion de "+grad+" grados a radianes es: "+radianes+" rad😎");
           if(rad!=0)out.println("La conversion de "+rad+" radianes a grados es: "+grados+" grad😴");

        %>

    </body>
</html>
