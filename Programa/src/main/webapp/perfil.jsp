<%-- 
    Document   : perfil
    Created on : 12/05/2023, 4:44:13 p. m.
    Author     : Brayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perfil</title>
        <link rel="stylesheet" type="text/css" href="estilosperfil.css">
    </head>
    <body>
        <a href="inicio.jsp">
                <button class="boton">Inicio</button>
            </a>
        <h1>Perfil</h1>
        <form action="foto.jsp" method="post" enctype="multipart/form-data">
            <div id="foto_container">
                <img id="foto_preview" src="#" alt="Foto" style="display: none;">
            </div>
            <label for="foto">Foto:</label>
            <input type="file" id="foto" name="foto" accept="image/jpeg,image/png"><br><br>
            <label for="nombre">Nombre Completo:</label>
            <input type="text" id="nombre" name="nombre"><br><br>
            <label for="apellido">Apellidos:</label>
            <input type="text" id="apellido" name="apellido"><br><br>
            <label for="telefono">Teléfono o Celular:</label>
            <input type="tel" id="telefono" name="telefono"><br><br>
            <label for="direccion">Dirección:</label>
            <input type="text" id="direccion" name="direccion"><br><br>
            <label for="publicacion">Agregar una publicación:</label><br><br>
            <textarea id="publicacion" name="publicacion"></textarea><br><br>
            <label for="imagen_publicacion">Imagen:</label>
            <input type="file" id="imagen_publicacion" name="imagen_publicacion" accept="image/jpeg,image/png"><br><br>
            <input type="button" value="Enviar">
        </form>

    </body>
</html>