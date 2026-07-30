package semanas.semana1.codigo;

import java.util.Scanner;

public class Cubo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double lado, area, volumen;

        System.out.print("Ingrese el lado del cubo: ");
        lado = scanner.nextDouble();

        area = 6 * Math.pow(lado, 2);
        volumen = Math.pow(lado, 3);

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Lado    : " + lado);
        System.out.println("Área    : " + area);
        System.out.println("Volumen : " + volumen);
        System.out.println("---");

        scanner.close();
    }
}