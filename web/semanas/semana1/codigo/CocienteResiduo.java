package semanas.semana1.codigo;

import java.util.Scanner;

public class CocienteResiduo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int dividendo, divisor, cociente, residuo;

        System.out.print("Ingrese el dividendo: ");
        dividendo = scanner.nextInt();
        System.out.print("Ingrese el divisor: ");
        divisor = scanner.nextInt();

        cociente = dividendo / divisor;
        residuo = dividendo % divisor;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Dividendo : " + dividendo);
        System.out.println("Divisor   : " + divisor);
        System.out.println("Cociente  : " + cociente);
        System.out.println("Residuo   : " + residuo);
        System.out.println("---");

        scanner.close();
    }
}