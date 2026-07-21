package proyecto03;

import java.util.Scanner;

public class SueldoEmpleadoMetodos {
    static Scanner scanner = new Scanner(System.in);

    // Método tipo void con parámetros - Calcula y muestra resultados
    static void calcularMostrar(double horasTrabajadas, double tarifaHoraria) {
        double sueldoBasico, bonificacion, sueldoBruto, descuento, sueldoNeto;

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
    }

    public static void main(String[] args) {
        double horasTrabajadas, tarifaHoraria;

        System.out.print("Ingrese las horas trabajadas: ");
        horasTrabajadas = scanner.nextDouble();
        System.out.print("Ingrese la tarifa horaria: ");
        tarifaHoraria = scanner.nextDouble();

        // Llamada al método void con parámetros
        calcularMostrar(horasTrabajadas, tarifaHoraria);

        scanner.close();
    }
}