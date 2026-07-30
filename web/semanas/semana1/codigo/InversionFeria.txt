package semanas.semana1.codigo;

import java.util.Scanner;

public class InversionFeria {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double montoTotal, alquiler, publicidad, transporte, servicios, decoracion, varios;

        System.out.print("Ingrese el monto total a invertir: ");
        montoTotal = scanner.nextDouble();

        alquiler    = 0.23 * montoTotal;
        publicidad  = 0.07 * montoTotal;
        transporte  = 0.26 * montoTotal;
        servicios   = 0.12 * montoTotal;
        decoracion  = 0.21 * montoTotal;
        varios      = 0.11 * montoTotal;

        System.out.println("");
        System.out.println("--- Reporte de Inversión ---");
        System.out.println("---");
        System.out.println("Monto Total          : " + montoTotal);
        System.out.println("Alquiler de espacio  : " + alquiler + " (23%)");
        System.out.println("Publicidad           : " + publicidad + " (7%)");
        System.out.println("Transporte           : " + transporte + " (26%)");
        System.out.println("Servicios feriales   : " + servicios + " (12%)");
        System.out.println("Decoración           : " + decoracion + " (21%)");
        System.out.println("Gastos varios        : " + varios + " (11%)");
        System.out.println("---");

        scanner.close();
    }
}