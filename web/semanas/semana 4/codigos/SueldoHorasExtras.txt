package proyecto05;

import java.util.Scanner;

public class SueldoHorasExtras {
    static Scanner scanner = new Scanner(System.in);
    static double horasTrabajadas, tarifaHoraria, sueldoBruto, descuento, sueldoNeto;

    // Método void sin parámetros - Lee los datos
    static void leerDatos() {
        System.out.print("Ingrese las horas trabajadas: ");
        horasTrabajadas = scanner.nextDouble();
        System.out.print("Ingrese la tarifa horaria: S/. ");
        tarifaHoraria = scanner.nextDouble();
    }

    // Método con valor de retorno con parámetros - Calcula el sueldo
    static double calcularSueldo(double horas, double tarifa) {
        double sueldoBase, horasExtras, tarifaExtra = 0;
        double sueldoTotal = 0;
        
        // Sentencia selectiva if-else para calcular horas extras
        if (horas > 40) {
            horasExtras = horas - 40;
            sueldoBase = 40 * tarifa;
            tarifaExtra = tarifa * 1.5; // 50% más por horas extras
            sueldoTotal = sueldoBase + (horasExtras * tarifaExtra);
            System.out.println("*** Se aplicaron " + horasExtras + " horas extras (50% más) ***");
        } else {
            sueldoTotal = horas * tarifa;
            System.out.println("*** No hay horas extras ***");
        }
        
        return sueldoTotal;
    }

    // Método void sin parámetros - Muestra el reporte
    static void mostrarReporte() {
        System.out.println("");
        System.out.println("--- Reporte de Sueldo ---");
        System.out.println("---");
        System.out.println("Horas trabajadas   : " + horasTrabajadas);
        System.out.println("Tarifa horaria     : S/. " + tarifaHoraria);
        System.out.println("Sueldo bruto       : S/. " + sueldoBruto);
        System.out.println("Descuento (11%)    : S/. " + descuento);
        System.out.println("Sueldo neto        : S/. " + sueldoNeto);
        System.out.println("---");
    }

    public static void main(String[] args) {
        leerDatos();  // Llamada al método void sin parámetros
        sueldoBruto = calcularSueldo(horasTrabajadas, tarifaHoraria);
        descuento = 0.11 * sueldoBruto;
        sueldoNeto = sueldoBruto - descuento;
        mostrarReporte();  // Llamada al método void sin parámetros
        scanner.close();
    }
}