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
public class Estudiante extends Persona{
    
    //Atributos de la subclase
    private double promedioNotas;
    private String carnet;
    private int numeroMaterias;
    public Estudiante(){     
    }
    public Estudiante(String nombre, String apellido, int edad, int peso, double promedioNotas, String carnet, int numeroMaterias){
        super (nombre, apellido, edad, peso);
        this.carnet=carnet;
        this.numeroMaterias=numeroMaterias;
        this.promedioNotas=promedioNotas;            
    }

    public double getPromedioNotas() {
        return promedioNotas;
    }

    public void setPromedioNotas(double promedioNotas) {
        this.promedioNotas = promedioNotas;
    }

    public String getCarnet() {
        return carnet;
    }

    public void setCarnet(String carnet) {
        this.carnet = carnet;
    }

    public int getNumeroMaterias() {
        return numeroMaterias;
    }

    public void setNumeroMaterias(int numeroMaterias) {
        this.numeroMaterias = numeroMaterias;
    }
    public void imprimirAsignacionPromedio (String nombre, double promedio){
        JOptionPane.showMessageDialog(null,"El estudiante " + nombre +" tiene un promedio de " + promedio);
    }
    public Estudiante ingresarDatosEstudiante(){
        Estudiante nuevoEstudiante=new Estudiante();
        String nombre = "";
        String apellido = "";
        int edad = 0;
        double peso = 0.0;
        int numeroMaterias=0;
        double nota=0, notaF=0;
        double promedioNotas=0;
        String carnet="";
        carnet=leerDatoTipoCadena("Digite carnet: ");
        nombre=leerDatoTipoCadena("Nombre estudiante ");
        apellido=leerDatoTipoCadena("Apellido estudinate ");
        edad = leerDatoTipoEntero("Ingrese la edad del estudiante: ");
        peso = leerDatoTipoReal("Ingrese el peso del estudiante: ");
        //Obtenemos los datos que no hacen parte de la clase
        numeroMaterias=leerDatoTipoEntero("Ingrese el numero de materias: ");
        for(int i=0; i<numeroMaterias; i++){
            nota=leerDatoTipoReal("Ingrese la nota ");
            notaF = notaF+nota;
        }
        promedioNotas = calcularPromedio(notaF,numeroMaterias);
        nuevoEstudiante.setNombre(nombre);
        nuevoEstudiante.setApellido(apellido);
        nuevoEstudiante.setEdad(edad);
        nuevoEstudiante.setPeso(peso);
        nuevoEstudiante.setCarnet(carnet);
        nuevoEstudiante.setNumeroMaterias(numeroMaterias);
        nuevoEstudiante.setPromedioNotas(promedioNotas);
        return nuevoEstudiante;
    }
    public double leerNotas(){
        double nota, notaF=0;
        for(int i=0; i<=numeroMaterias; i++){
        nota=leerDatoTipoReal("Ingrese la nota ");
        notaF += nota;   
        }
        return (notaF);
    }
    public double calcularPromedio(double notaF, int numeroMaterias){
        double promedio=0;
        promedio= notaF / numeroMaterias;
        return (promedio);     
    }
    public  void imprimirPromedio(){
        JOptionPane.showMessageDialog(null,"El estudiante "+ nombre+" tiene un promedio de: "+promedioNotas);
    }
    public void imprimirReporteNotas(){
        imprimirDatosPersona();
        JOptionPane.showMessageDialog(null, "El carnet del estudiante es: "+carnet );
        imprimirAsignacionPromedio(nombre, promedioNotas);
    }
    
    
}
