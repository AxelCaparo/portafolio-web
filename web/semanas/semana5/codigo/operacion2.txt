/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package operaciones;
import java.util.Scanner;
/**
 *
 * @author rutt
 */
public class operacion2 {
    public static void main(String[] args) {
        Scanner sc = new  Scanner (System.in);
        System.out.println("ingresa el primer numero:");
        int num1 = sc.nextInt();
        System.out.println("ingresa el segundo numero:");
        int num2 = sc.nextInt();
        int suma = num1 + num2;
        System.out.println("el resultado es:" + suma );
        
    }
    
}
