package semanas.semana1.codigo;

import java.util.Scanner;

public class NumeroInverso {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numero, inverso = 0;

        System.out.print("Ingrese un número de 5 dígitos: ");
        numero = scanner.nextInt();

        int temp = numero;
        while (temp > 0) {
            int digito = temp % 10;
            inverso = inverso * 10 + digito;
            temp /= 10;
        }

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Número original : " + numero);
        System.out.println("Número inverso  : " + inverso);
        System.out.println("---");

        scanner.close();
    }
}