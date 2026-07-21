package semana06.actividad;

import java.util.Scanner;

public class Proyecto02{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Ingrese el número de términos: ");
        int n = scanner.nextInt();
        
        double suma = 0;
        int numerador = 2;
        int denominador = 5;
        
        System.out.println("Serie generada:");
        for (int i = 1; i <= n; i++) {
            System.out.print(numerador + "/" + denominador);
            suma += (double) numerador / denominador;
            
            if (i < n) {
                System.out.print(" + ");
            }
            
            numerador += 3;
            denominador += 4;
        }
        
        System.out.println("\n\nSuma de la serie: " + suma);
        scanner.close();
    }
}