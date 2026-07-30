package semanas.semana1.codigo;

import java.util.Scanner;

public class ConversionTiempo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int totalSegundos, horas, minutos, segundos;

        System.out.print("Ingrese la cantidad de segundos: ");
        totalSegundos = scanner.nextInt();

        horas = totalSegundos / 3600;
        minutos = (totalSegundos % 3600) / 60;
        segundos = totalSegundos % 60;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Segundos totales : " + totalSegundos);
        System.out.println("Horas            : " + horas);
        System.out.println("Minutos          : " + minutos);
        System.out.println("Segundos         : " + segundos);
        System.out.println("---");

        scanner.close();
    }
}