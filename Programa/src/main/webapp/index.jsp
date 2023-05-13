<%-- 
    Document   : index.jsp
    Created on : 8/05/2023, 8:25:16 p. m.
    Author     : Brayan
--%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Planet Guardian</title>
    <link rel="stylesheet" href="EstilosPrincipal.css">
  </head>
  <body>
    
    <div class="contenedor">
      <h1>InfoEco</h1>
      <form action="contrPersona" method="post">
          
        <label for="correo">Correo Electrónico:</label>
        <input type="email" id="correo" name="correo" required=""><br>

        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required=""><br>

        <div class="botones">
          <input type="submit" value="Iniciar Sesión">
          <input type="button" value="Registrarse" onclick="location.href='formulario.jsp'">
          <input type="hidden" id="id" name="accion" value="inicio">

        </div>
        
      </form>
    </div>
    
  </body>
</html>
