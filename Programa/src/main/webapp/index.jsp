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
          
        <label for="correo">Correo Electr�nico:</label>
        <input type="email" id="correo" name="correo" required=""><br>

        <label for="contrase�a">Contrase�a:</label>
        <input type="password" id="contrase�a" name="contrase�a" required=""><br>

        <div class="botones">
          <input type="submit" value="Iniciar Sesi�n">
          <input type="button" value="Registrarse" onclick="location.href='formulario.jsp'">
          <input type="hidden" id="id" name="accion" value="inicio">

        </div>
        
      </form>
    </div>
    
  </body>
</html>
