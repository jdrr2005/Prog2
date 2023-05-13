<%-- 
    Document   : foro
    Created on : 12/05/2023, 4:44:33 p. m.
    Author     : Brayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Página Ambientalista</title>
    <link rel="stylesheet" href="estilosforo.css">
    <link href="opinioncss.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
      
      <a href="inicio.jsp">
                <button class="boton">Inicio</button>
            </a>
    <main>
      <section id="reseñas">
        <div id="texto" class="texto">      
          <p>¡¡¡Recuerda poner tu nombre y no olvides dejar tu reseña o comentario acerca del cambio climatico y la contaminacion!!!</p>
        </div>
        <form>
          <label for="nombre">Nombre:</label>
          <input type="text" id="nombre" name="nombre"><br>
          <label for="publicacion">Publicación:</label>
          <textarea id="publicacion" name="publicacion"></textarea><br>
          <input class="boton" type="submit" value="Enviar">
        </form>

        <div id="texto" class="texto">
          <p>Aqui abajo ↓ veras lo que publicas</p>
        </div>

        <div id="publicaciones" class="publi"></div>

      </section>
    </main>

    <script>    
      const headersDeslizables = document.querySelectorAll('.header-deslizable');
      let indiceHeaderActivo = 0;

      function mostrarHeaderSiguiente() {
        headersDeslizables[indiceHeaderActivo].classList.remove('active');
        indiceHeaderActivo = (indiceHeaderActivo + 1) % headersDeslizables.length;
        headersDeslizables[indiceHeaderActivo].classList.add('active');
      }

      setInterval(mostrarHeaderSiguiente, 5000);

      const formularioPublicacion = document.querySelector('#reseñas form');
      const contenedorPublicaciones = document.querySelector('#publicaciones');

      formularioPublicacion.addEventListener('submit', function(evento) {
        evento.preventDefault();
        const nombre = formularioPublicacion.elements['nombre'].value;
        const publicacion = formularioPublicacion.elements['publicacion'].value;
        const nuevaPublicacion = document.createElement('div');
        nuevaPublicacion.innerHTML = `<p><strong>${nombre}</strong>: ${publicacion}</p>`;
        contenedorPublicaciones.appendChild(nuevaPublicacion);
        formularioPublicacion.reset();
      });
    </script>
  </body>
</html>
