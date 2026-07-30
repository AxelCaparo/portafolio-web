package semanas.semana1.codigo;

import java.util.Scanner;

public class Rectangulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double base, altura, area, perimetro;

        System.out.print("Ingrese la base del rectángulo: ");
        base = scanner.nextDouble();
        System.out.print("Ingrese la altura del rectángulo: ");
        altura = scanner.nextDouble();

        area = base * altura;
        perimetro = 2 * (base + altura);

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Base      : " + base);
        System.out.println("Altura    : " + altura);
        System.out.println("Área      : " + area);
        System.out.println("Perímetro : " + perimetro);
        System.out.println("---");

        scanner.close();
    }
}