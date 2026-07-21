package semana06.actividad;

import java.util.Scanner;

public class Proyecto04 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Ingrese el número de términos N: ");
        int n = scanner.nextInt();
        
        double suma = 0;
        int i = 1;
        
        System.out.print("Serie: ");
        do {
            suma += 1.0 / i;
            System.out.print("1/" + i);
            if (i < n) {
                System.out.print(" + ");
            }
            i++;
        } while (i <= n);
        
        System.out.println("\nSuma total: " + suma);
        scanner.close();
    }
}