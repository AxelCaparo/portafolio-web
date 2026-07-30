package semanas.semana1.codigo;

import java.util.Scanner;

public class Circulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        final double PI = 3.1416;
        double radio, area, circunferencia;

        System.out.print("Ingrese el radio del círculo: ");
        radio = scanner.nextDouble();

        area = PI * Math.pow(radio, 2);
        circunferencia = 2 * PI * radio;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Radio         : " + radio);
        System.out.println("Área          : " + area);
        System.out.println("Circunferencia: " + circunferencia);
        System.out.println("---");

        scanner.close();
    }
}