package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelo.Personas;

public class PersonasInteractuar {

    public static void insertar(Personas persona) {
        try {
           
            String url = "jdbc:mysql://localhost:3306/formulario";
            String usuario = "root";
            String contrasena = "";

            Connection conexion = DriverManager.getConnection(url, usuario, contrasena);
            String consulta = "INSERT INTO datos (nombre, apellido, correo, telefono) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conexion.prepareStatement(consulta);
            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getApellido());
            ps.setString(3, persona.getCorreo());
            ps.setString(4, persona.getTelefono());
            ps.executeUpdate();
            ps.close();
            conexion.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
