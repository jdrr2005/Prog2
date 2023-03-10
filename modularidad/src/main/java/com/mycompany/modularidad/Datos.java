/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.modularidad;

import java.util.Scanner;

/**
 *
 * @author JOHN JAIRO
 */
public class Datos {
     //Atributos
    private double base = 0.0, altura = 0.0, radio = 0.0, areaCuadrado, areaCirculo;
    private final double pi=3.1416;
    //Metodos
    public void leerDatos(){
        Scanner sc= new Scanner(System.in);
        System.out.println("Digite la base");
        base=sc.nextDouble();
        System.out.println("Digite la altura");
        altura=sc.nextDouble();
        System.out.println("Digite el radio");
        radio=sc.nextDouble();
    }
        public double getAreaCirculo(){
        areaCirculo = pi* Math.pow(radio, 2);
        return areaCirculo;
    }
    public double getAreaCuadrado(){
        areaCuadrado = base*altura;
        return areaCuadrado;
    }
    public void imprimirResult(){
         System.out.println("El area del circulo es: "+ areaCirculo +"\nEl area del cuadrado es: "+ areaCuadrado);
    }
}
