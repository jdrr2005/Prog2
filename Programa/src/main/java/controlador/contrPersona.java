package controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Personas;

/**
 *
 * @author Brayan
 */
@WebServlet(name = "contrPersona", urlPatterns = {"/contrPersona"})
public class contrPersona extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Aca traigo los datos
        String Nombre = request.getParameter("nombre");
        String Apellido = request.getParameter("apellido");
        String Correo = request.getParameter("correo");
        String Telefono = request.getParameter("telefono");
        String Contraseña = request.getParameter("contraseña");

        String accion = request.getParameter("accion");
        if (accion.equals("registro")) {
            /////////////////////////////////////////

            ////////////////////////////////////////
            ////Creo un objeto de tipo personas
            Personas persona = new Personas(Nombre, Apellido, Correo, Telefono, Contraseña);

            //////////////////////////////////////////////////
            //FORMULARIO DE REGISTRO- GUARDAR DATOS
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formulario", "root", "");

                String guardar = "INSERT INTO datos (nombre, apellido, correo, telefono, contraseña) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement ps = conexion.prepareStatement(guardar);

                ps.setString(1, Nombre);
                ps.setString(2, Apellido);
                ps.setString(3, Correo);
                ps.setString(4, Telefono);
                ps.setString(5, Contraseña);
                ps.executeUpdate();
                ps.close();
                conexion.close();
                response.sendRedirect("confirmacion.jsp");

            } catch (SQLException ex) {
                response.getWriter().println(ex.getMessage());
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(contrPersona.class.getName()).log(Level.SEVERE, null, ex);

            }
        } /////////////////////////////////////////////////
        //ACA VOY A VALIDAR EL REGISTRO A VER SI LOS DATOS ESTAN EN LA BASE DE DATOS
        else if (accion.equals("inicio")) {

            try {
                Correo = request.getParameter("correo");
                Contraseña = request.getParameter("contraseña");
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formulario", "root", "");
                String buscar = "SELECT COUNT(*) FROM datos WHERE correo = ?";

                PreparedStatement ps1 = conexion.prepareStatement(buscar);
                ps1.setString(1, Correo);
                ResultSet rs = ps1.executeQuery();

                if (rs != null && rs.next() && rs.getInt(1) > 0) {

                    /// si mi correo existe voy a validar la contraseña y que pues sea correcta
                    String verificar = "SELECT COUNT(*) FROM datos WHERE correo = ? AND contraseña = ?";
                    PreparedStatement ps2 = conexion.prepareStatement(verificar);
                    ps2.setString(1, Correo);
                    ps2.setString(2, Contraseña);
                    ResultSet rs2 = ps2.executeQuery();

                    if (rs2 != null && rs2.next() && rs2.getInt(1) > 0) {

                        response.sendRedirect("inicio.jsp");
                        
                    } else {
                        response.sendRedirect("contrasena.jsp");
                    }
                } else {
                    response.sendRedirect("errorsesion.jsp");
                }

            } catch (SQLException ex) {
                response.getWriter().println(ex.getMessage());
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(contrPersona.class.getName()).log(Level.SEVERE, null, ex);

            }

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
