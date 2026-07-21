package proyecto05;

import java.util.Scanner;

public class SueldoEmpleadoAFP {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double horasTrabajadas, tarifaHoraria, sueldoBruto, descuentoESSALUD, descuentoAFP, descuentoTotal, sueldoNeto;

        System.out.print("Ingrese las horas trabajadas: ");
        horasTrabajadas = scanner.nextDouble();
        System.out.print("Ingrese la tarifa horaria: ");
        tarifaHoraria = scanner.nextDouble();

        sueldoBruto = horasTrabajadas * tarifaHoraria;
        descuentoESSALUD = 0.09 * sueldoBruto;
        descuentoAFP = 0.10 * sueldoBruto;
        descuentoTotal = descuentoESSALUD + descuentoAFP;
        sueldoNeto = sueldoBruto - descuentoTotal;

        System.out.println("");
        System.out.println("--- Reporte de Sueldo ---");
        System.out.println("---");
        System.out.println("Horas trabajadas      : " + horasTrabajadas);
        System.out.println("Tarifa horaria        : " + tarifaHoraria);
        System.out.println("Sueldo bruto          : " + sueldoBruto);
        System.out.println("Descuento ESSALUD (9%) : " + descuentoESSALUD);
        System.out.println("Descuento AFP (10%)   : " + descuentoAFP);
        System.out.println("Descuento total       : " + descuentoTotal);
        System.out.println("Sueldo neto           : " + sueldoNeto);
        System.out.println("---");

        scanner.close();
    }
}