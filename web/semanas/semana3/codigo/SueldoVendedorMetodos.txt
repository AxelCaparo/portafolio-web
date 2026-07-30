package proyecto05;

import java.util.Scanner;

public class SueldoVendedorMetodos {
    static Scanner scanner = new Scanner(System.in);
    static final double SUELDO_BASICO = 300;

    // Método con valor de retorno con parámetros - Calcula la comisión
    static double calcularComision(double importeVendido) {
        return 0.09 * importeVendido;
    }

    // Método void con parámetros - Muestra el reporte
    static void mostrarReporte(double importeVendido) {
        double comision, sueldoBruto, descuento, sueldoNeto;

        comision = calcularComision(importeVendido);
        sueldoBruto = SUELDO_BASICO + comision;
        descuento = 0.11 * sueldoBruto;
        sueldoNeto = sueldoBruto - descuento;

        System.out.println("");
        System.out.println("--- Reporte de Sueldo ---");
        System.out.println("---");
        System.out.println("Sueldo básico (S/.300) : " + SUELDO_BASICO);
        System.out.println("Importe vendido        : " + importeVendido);
        System.out.println("Comisión (9%)          : " + comision);
        System.out.println("Sueldo bruto           : " + sueldoBruto);
        System.out.println("Descuento (11%)        : " + descuento);
        System.out.println("Sueldo neto            : " + sueldoNeto);
        System.out.println("---");
    }

    public static void main(String[] args) {
        double importeVendido;

        System.out.print("Ingrese el importe total vendido en el mes: ");
        importeVendido = scanner.nextDouble();

        // Llamada al método void con parámetros
        mostrarReporte(importeVendido);

        scanner.close();
    }
}