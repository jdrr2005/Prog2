<%-- 
    Document   : formulario
    Created on : 8/05/2023, 9:04:03 p. m.
    Author     : Brayan
--%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Formulario de Registro</title>
    <script> 
        alert("Bienvenido al formulario de registro, Por favor no dejar ningun campo vacio.");
    </script>
    <link rel="stylesheet" href="esti.css">
  </head>
  <body>
    <div class="contenedor">
      <h1>Registro</h1>
      <form action="contrPersona" method="post">
          
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required=""><br>

        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" required=""><br>

        <label for="correo">Correo Electrónico:</label>
        <input type="email" id="correo" name="correo" required=""><br>

        <label for="telefono">Teléfono:</label>
        <input type="tel" id="telefono" name="telefono" required=""><br>
        
        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required=""><br>
        
        <input type="hidden" id="id" name="accion" value="registro">

        <input type="submit" value="Registrarse">
        
    </form>
    </div>
  </body>
</html> 

