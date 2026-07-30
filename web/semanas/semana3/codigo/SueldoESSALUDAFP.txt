package proyecto06;

import java.util.Scanner;

public class SueldoESSALUDAFP {
    static Scanner scanner = new Scanner(System.in);

    // Método con valor de retorno con parámetros - Calcula ESSALUD
    static double calcularESSALUD(double sueldoBruto) {
        return 0.09 * sueldoBruto;
    }

    // Método con valor de retorno con parámetros - Calcula AFP
    static double calcularAFP(double sueldoBruto) {
        return 0.10 * sueldoBruto;
    }

    // Método void con parámetros - Muestra el reporte
    static void mostrarReporte(double horasTrabajadas, double tarifaHoraria) {
        double sueldoBruto, descuentoESSALUD, descuentoAFP, descuentoTotal, sueldoNeto;

        sueldoBruto = horasTrabajadas * tarifaHoraria;
        descuentoESSALUD = calcularESSALUD(sueldoBruto);
        descuentoAFP = calcularAFP(sueldoBruto);
        descuentoTotal = descuentoESSALUD + descuentoAFP;
        sueldoNeto = sueldoBruto - descuentoTotal;

        System.out.println("");
        System.out.println("--- Reporte de Sueldo ---");
        System.out.println("---");
        System.out.println("Horas trabajadas       : " + horasTrabajadas);
        System.out.println("Tarifa horaria         : " + tarifaHoraria);
        System.out.println("Sueldo bruto           : " + sueldoBruto);
        System.out.println("Descuento ESSALUD (9%) : " + descuentoESSALUD);
        System.out.println("Descuento AFP (10%)    : " + descuentoAFP);
        System.out.println("Descuento total        : " + descuentoTotal);
        System.out.println("Sueldo neto            : " + sueldoNeto);
        System.out.println("---");
    }

    public static void main(String[] args) {
        double horasTrabajadas, tarifaHoraria;

        System.out.print("Ingrese las horas trabajadas: ");
        horasTrabajadas = scanner.nextDouble();
        System.out.print("Ingrese la tarifa horaria: ");
        tarifaHoraria = scanner.nextDouble();

        // Llamada al método void con parámetros
        mostrarReporte(horasTrabajadas, tarifaHoraria);

        scanner.close();
    }
}