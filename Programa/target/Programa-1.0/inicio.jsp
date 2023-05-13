<%-- 
    Document   : inicio
    Created on : 8/05/2023, 11:30:39 p. m.
    Author     : Brayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <!--Titulo y relacion con el css, compatibilidad para moviles, etc -->

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Guardian Planet</title>
        <meta name="theme-color" content="#2091F9">
    </head>
    <link href="estilosinicio.css" rel="stylesheet" type="text/css"/>
    <body>

        <header class="base">
            <nav class="explorador elemento">
                <div class="nav__logo">
                    <h2 class="exploradortitu">Guardian Planet</h2>
                </div>
                <ul class="exploradordirec exploradordirecme">

                    <a href="nosotros.jsp">
                        <button class="boton">Nosotros</button>
                    </a>
                    <a href="foro.jsp">
                        <button class="boton">Foro</button>
                    </a>
                    <a href="perfil.jsp">
                        <button class="boton">Perfil</button>
                    </a>
                </ul>
            </nav>

            <section class="contenidobase elemento">
                <h1 class="titulobase">Bienvenidos a Guardian Planet, tu foro ambientalista</h1>
                <p class="parafobase">Guardian Planet es un foro ambientalista en el cual podras encontrar noticias, informacion importante y un lugar para dar tus puntos de vista en cuanto al tema medioambiental</p>
            </section>
        </header>

        <main>
            <section class="elemento info">
                <h2 class="subtitulo">¿Porque es bueno saber sobre los temas ambientales?</h2>
                <p class="parafoinfo">Es importante tener conocimientos sobre temas ambientales para entender 
                    mejor los problemas ambientales y las soluciones para abordarlos, tomar decisiones informadas en 
                    nuestra vida diaria y en el ámbito político.</p>

                <div class="menuino">
                    <article class="iconosinfo">
                        <img src="https://cdn-icons-png.flaticon.com/512/44/44043.png" class="pequeinfo">
                        <h3 class="tituloinfo">Toma de decisiones</h3>
                        <p class="parafoinfo">Podemos elegir productos más amigables con el medio ambiente o implementar comportamientos sostenibles en nuestra vida diaria si somos conscientes de los desafíos ambientales. Además, podemos participar en la política con conocimiento y apoyar leyes e iniciativas que protejan el medio ambiente.</p>
                        <br>
                        <br>
                    </article>

                    <article class="iconosinfo">
                        <img src="https://cdn-icons-png.flaticon.com/512/41/41411.png" class="pequeinfo">
                        <h3 class="tituloinfo">Preservacion</h3>
                        <p class="parafoinfo">Para que los humanos y el planeta en su conjunto sobrevivan, se deben proteger los recursos naturales. Comprender los problemas ambientales puede ayudarnos a comprender mejor cómo usar los recursos naturales de una manera que beneficie a todos.</p>
                        <br>
                        <br>
                    </article>

                    <article class="iconosinfo">
                        <img src="https://icones.pro/wp-content/uploads/2021/06/symbole-sante-noir.png" class="pequeinfo">
                        <h3 class="tituloinfo">Salud</h3>
                        <p class="parafoinfo">Dado que los problemas ambientales pueden tener un impacto en nuestra salud, es crucial entender cómo están relacionados con la salud humana. Comprender los problemas ambientales puede ayudarnos a tomar medidas para prevenir enfermedades y apoyar un ambiente saludable.</p>
                        <br>
                        <br>
                    </article>
                </div>
            </section>

            <section class="conocer">
                <div class="contenidoconocer elemento">
                    <div class="textoconocer">
                        <h2 class="subtitulo">El Día Mundial del Medio Ambiente 2023 se centrará en las soluciones a la contaminación por plásticos</h2>
                        <p class="parrafoconocer"> 
                            El Programa de las Naciones Unidas para el Medio Ambiente (PNUMA) y el gobierno de Côte d’Ivoire anunciaron que Côte d'Ivoire será el país anfitrión del Día Mundial del Medio Ambiente 2023, que se centrará en la contaminación por plásticos. Côte d'Ivoire ha prohibido el uso de bolsas plásticas desde 2014 y ha apoyado la transición hacia envases y embalajes reutilizables. El evento contará con el apoyo del gobierno de los Países Bajos, que ha implementado medidas ambiciosas para combatir la contaminación por plásticos. También se espera que se elabore un instrumento internacional jurídicamente vinculante sobre la contaminación por plásticos para fines de 2024. (UNEP,2023)</p>
                        <button class="boton" onclick="window.location.href = 'https://www.unep.org/es/noticias-y-reportajes/comunicado-de-prensa/el-dia-mundial-del-medio-ambiente-2023-se-centrara-en'">Mas informacion de esta noticia</button>
                    </div>

                    <figure class="fotoconocer">
                        <img src="https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/08/01180530/Plastico06.jpg">
                    </figure>
                </div>
            </section>

            <section class="col">
                <h2 class="subtitulo">Como utilizar adecuadamente las canecas de reciclaje </h2>

                <div class="tablacol">
                    <div class="canecas">
                        <h3 class="titulocol">Blanco</h3>

                        <div class="infocol">
                            <p>Plastico, vidrio, metales, papel y carton.</p>
                        </div>
                    </div>


                    <div class="canecas canecas2">

                        <h3 class="titulocol">Negro</h3>

                        <div class="infocol">
                            <p>Papel higienico, servilletas, comidas preparadas, tapabocas, guantes, etc</p>

                        </div>
                    </div>


                    <div class="canecas3">
                        <h3 class="titulocol">Verde</h3>

                        <div class="infocol">
                            <p>Residuos organicos aprovechables (cascaras de frutas, verduras y resto de alimetos crudos).</p>
                        </div>
                    </div>


                </div>
            </section>

            <section class="frase">
                <div class="contenidofrase elemento">
                    <section class="cuerpofrase cuerpofrase2" >
                        <div class="textofrase">

                            <p>"A medida que pasamos a las energías renovables y nos alejamos del petróleo y el gas en la energía, 
                                vamos a encontrar diferentes maneras de utilizar ese petróleo. Y los plásticos serán un problema cada vez mayor", Charron.</p>
                        </div>

                        <figure class="testimony__picture">
                            <img src="https://cloudfront-us-east-1.images.arcpublishing.com/infobae/7AIK25BDJZFOPPLSVMEU33EILE.jpg" class="testimony__img">
                        </figure>
                    </section>
                </div>
            </section>
            <section class="conocer">
                <div class="contenidoconocer elemento">
                    <div class="textoconocer">
                        <h2 class="subtitulo">Nuevo estudio de calidad de aire posiciona a Colombia en el puesto 72</h2>
                        <p class="parrafoconocer"> 
                            La contaminación del aire se ha convertido en una de las principales amenazas de muerte en todas las regiones del mundo. Sin embargo, varias Organizaciones Internacionales, como Greenpeace promueven acciones que ayudan a los Gobiernos locales a mitigar esta problemática. Es por esto, que cada año, la Organización IQAir junto con CREA (Centro de investigación  de Energía y Calidad del aire)  participaron como validadores de datos en el Informe de Calidad del Aire Global IQAir 2021, un reporte anual que muestra el panorama actual sobre el aire en 117 países del mundo analizando más de 6400 ciudades a nivel global.</p>
                        <button class="boton" onclick="window.location.href = 'https://www.greenpeace.org/colombia/noticia/issues/contaminacion/nuevo-estudio-de-calidad-de-aire-posiciona-a-colombia-en-el-puesto-72-%EF%BF%BC/'">Mas informacion de esta noticia</button>
                    </div>

                    <figure class="fotoconocer">
                        <img src="https://tecnologiaparalaindustria.com/wp-content/uploads/2021/02/Asegurar-la-calidad-del-aire-interior.jpg">
                    </figure>
                </div>
            </section>

            <section class="frase">
                <div class="contenidofrase elemento">
                    <section class="cuerpofrase cuerpofrase2" data-id="1">
                        <div class="textofrase">

                            <p> "La huella individual de contaminación es una medida asociada a la cantidad de CO2 (Dióxido de Carbono) que puede generar una persona diariamente, por medio de la realización de actividades relacionadas con el consumo de energía, agua, transporte, alimentación, entre otras", según el Minambiente. </p>
                        </div>

                        <figure class="testimony__picture">
                            <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRgunHgBC58KoRyfjYlXNopmPoSJJ9po3tI1G2JnN4TUjXbaDAz" class="testimony__img">
                        </figure>
                    </section>
                </div>
            </section>

            <section class="conocer">
                <div class="contenidoconocer elemento">
                    <div class="textoconocer">
                        <h2 class="subtitulo">¿Qué es el 'greenwashing' y cómo funciona?</h2>
                        <p class="parrafoconocer"> 
                            El greenwashing es una estrategia que algunas empresas han empleado para tratar de mostrarse ante el público como amigables con el medio ambiente; sin embargo, muchas veces no cumplen con este propósito, como lo afirma el portal ‘Ovacen’. (El tiempo,2023)</p>
                        <button class="boton" onclick="window.location.href = 'https://www.eltiempo.com/vida/medio-ambiente/que-es-el-greenwashing-y-como-funciona-754224'">Mas informacion de esta noticia</button>
                    </div>

                    <figure class="fotoconocer">
                        <img src="https://centrors.org/wp-content/uploads/2021/05/Greenwashing-%C2%BFQu%C3%A9-es-y-c%C3%B3mo-identificarlo-1.jpg">
                    </figure>
                </div>
            </section>
        </main>

    </body>

</html>