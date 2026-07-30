package proyecto02;

import java.util.Scanner;

public class SueldoEmpleado {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double horasTrabajadas, tarifaHoraria, sueldoBasico, bonificacion, sueldoBruto, descuento, sueldoNeto;

        System.out.print("Ingrese las horas trabajadas: ");
        horasTrabajadas = scanner.nextDouble();
        System.out.print("Ingrese la tarifa horaria: ");
        tarifaHoraria = scanner.nextDouble();

        sueldoBasico = horasTrabajadas * tarifaHoraria;
        bonificacion = 0.20 * sueldoBasico;
        sueldoBruto = sueldoBasico + bonificacion;
        descuento = 0.10 * sueldoBruto;
        sueldoNeto = sueldoBruto - descuento;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Horas trabajadas   : " + horasTrabajadas);
        System.out.println("Tarifa horaria     : " + tarifaHoraria);
        System.out.println("Sueldo básico      : " + sueldoBasico);
        System.out.println("Bonificación (20%) : " + bonificacion);
        System.out.println("Sueldo bruto       : " + sueldoBruto);
        System.out.println("Descuento (10%)    : " + descuento);
        System.out.println("Sueldo neto        : " + sueldoNeto);
        System.out.println("---");

        scanner.close();
    }
}