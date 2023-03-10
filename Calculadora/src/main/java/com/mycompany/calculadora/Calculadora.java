/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.calculadora;

import javax.swing.JOptionPane;

/**
 *
 * @author JOHN JAIRO
 */
public class Calculadora {

    public static void main(String[] args) {
        //Crear objeto
        ObjetoCalculadora calculadora = new ObjetoCalculadora();
        //Se asignan valores a los atributos de la clase
        calculadora.numero1 = Integer.parseInt(JOptionPane.showInputDialog("Digite el Numero 1"));
        calculadora.numero2 = Integer.parseInt(JOptionPane.showInputDialog("Digite el Numero 2"));
        //JOptionPane.showMessageDialog(null,calculadora.numero1);
        //JOptionPane.showMessageDialog(null,calculadora.numero2);
        //Se ejecutan las operaciones
        calculadora.imprime();
        
    }
}
