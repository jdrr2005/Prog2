/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.herencia;

import javax.swing.JOptionPane;

/**
 *
 * @author JOHN JAIRO
 */
public class Herencia {
    public static void main(String[] args) {
    int opcion = 0;
    Persona sistemaInformacion = new Persona();
    try{
//Usamos la herencia de la superclase para acceder a los
//métodos de lectura de datos
    do{
    opcion = sistemaInformacion.leerDatoTipoEntero("Ingrese la opción 1 para procesar los datos del empleado, 2 para procesar los datos del estudiante 3 para salir: ");
        switch (opcion){
            case 1:
                JOptionPane.showMessageDialog(null,"Procesando datos del empleado");
                Empleado manejadorEmpleado = new Empleado();
                //Leemos los datos
                manejadorEmpleado =manejadorEmpleado.ingresarDatosEmpleado();
                //Mostramos el reporte de datos
                manejadorEmpleado.imprimirReporteEstadoEmpleado();
                break;
            case 2:
                JOptionPane.showMessageDialog(null,"Procesando datos del estudiante");
                Estudiante manejadorEstduante = new Estudiante();
                //Leemos los datos
                manejadorEstduante =manejadorEstduante.ingresarDatosEstudiante();
                //Mostramos el reporte de datos
                manejadorEstduante.imprimirReporteNotas();
            case 3:
                JOptionPane.showMessageDialog(null,"Saliendo del Sistema");
                break;
            default:
                    JOptionPane.showMessageDialog(null,"Opción inválida");
                     
        }
    }while (opcion >= 1 || opcion <= 3);//fin del do-while
}//Fin del try
    catch (Exception errorMain){
    JOptionPane.showMessageDialog(null,"Error en la digitación: ");
    errorMain.printStackTrace();
    }
}
    
}
