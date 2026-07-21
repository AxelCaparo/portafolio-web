package semanas.semana1.codigo;

import java.util.Scanner;

public class Rombo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double baseMayor, baseMenor, altura, area;

        System.out.print("Ingrese la base mayor del rombo: ");
        baseMayor = scanner.nextDouble();
        System.out.print("Ingrese la base menor del rombo: ");
        baseMenor = scanner.nextDouble();
        System.out.print("Ingrese la altura del rombo: ");
        altura = scanner.nextDouble();

        area = ((baseMenor + baseMayor) * altura) / 2;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Base Mayor : " + baseMayor);
        System.out.println("Base Menor : " + baseMenor);
        System.out.println("Altura     : " + altura);
        System.out.println("Área       : " + area);
        System.out.println("---");

        scanner.close();
    }
}