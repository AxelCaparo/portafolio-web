package semanas.semana1.codigo;

import java.util.Scanner;

public class Cilindro {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        final double PI = 3.1416;
        double radio, altura, area, volumen;

        System.out.print("Ingrese el radio del cilindro: ");
        radio = scanner.nextDouble();
        System.out.print("Ingrese la altura del cilindro: ");
        altura = scanner.nextDouble();

        area = 2 * PI * radio * (radio + altura);
        volumen = PI * Math.pow(radio, 2) * altura;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Radio   : " + radio);
        System.out.println("Altura  : " + altura);
        System.out.println("Área    : " + area);
        System.out.println("Volumen : " + volumen);
        System.out.println("---");

        scanner.close();
    }
}