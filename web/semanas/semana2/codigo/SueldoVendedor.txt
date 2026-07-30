package proyecto04;

import java.util.Scanner;

public class SueldoVendedor {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        final double SUELDO_BASICO = 300;
        double importeVendido, comision, sueldoBruto, descuento, sueldoNeto;

        System.out.print("Ingrese el importe total vendido en el mes: ");
        importeVendido = scanner.nextDouble();

        comision = 0.09 * importeVendido;
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

        scanner.close();
    }
}