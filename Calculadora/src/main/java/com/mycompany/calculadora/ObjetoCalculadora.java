/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.calculadora;

import javax.swing.JOptionPane;

/**
 *
 * @author JOHN JAIRO
 */
public class ObjetoCalculadora {
        //Atributos
        protected int numero1;
        protected int numero2;
        protected int resultado = 0;

    public void setNumero1(int numero1) {
            if(this.numero1>0){
               this.numero1 = numero1;       
        }
        
    }

    public int getNumero1() {
            return numero1;
    }

    public void setNumero2(int numero2) {
        if(numero2>0){
            this.numero2 = numero2;   
        }
    }
    
    
    public int getNumero2() {
            return numero2; 
        }
    
        
        
        //Llamado clase padre
    public ObjetoCalculadora() {
        super();
        }

        //Metodos
    
    public int calSuma ()
        {
        resultado = numero1 + numero2;
        return (resultado);
        }
    public int calResta ()
        {
        resultado = numero1 - numero2;
        return (resultado);
        }
    public int calMultiplicacion ()
        {
        resultado = numero1 * numero2;
        return (resultado);
        }
    public int calDivision ()
        {   
            if (numero2 != 0)
            {
            resultado = numero1 / numero2;
            }
            return (resultado);
        }
    public void imprime()
        {
            JOptionPane.showMessageDialog(null,"Suma: " + calSuma());
            JOptionPane.showMessageDialog(null,"Resta: "+ calResta());
            JOptionPane.showMessageDialog(null,"Multiplicación: " + calMultiplicacion());
            JOptionPane.showMessageDialog(null,"División: " + calDivision());
        }
}
