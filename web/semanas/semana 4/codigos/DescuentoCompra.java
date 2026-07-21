package proyecto04;

import java.util.Scanner;

public class DescuentoCompra {
    static Scanner scanner = new Scanner(System.in);
    static double importeCompra, descuento, importePagar;

    // Método void sin parámetros - Lee los datos
    static void leerDatos() {
        System.out.print("Ingrese el importe de la compra: S/. ");
        importeCompra = scanner.nextDouble();
    }

    // Método con valor de retorno con parámetros - Calcula el descuento según el monto
    static double calcularDescuento(double compra) {
        double descuentoAplicado = 0;
        double porcentaje = 0;
        
        // Sentencia selectiva if-else para determinar el descuento según el monto
        if (compra >= 500) {
            porcentaje = 0.25; // 25% de descuento
            System.out.println("*** Descuento del 25% (Compra >= S/.500) ***");
        } else if (compra >= 300) {
            porcentaje = 0.15; // 15% de descuento
            System.out.println("*** Descuento del 15% (Compra >= S/.300) ***");
        } else if (compra >= 100) {
            porcentaje = 0.10; // 10% de descuento
            System.out.println("*** Descuento del 10% (Compra >= S/.100) ***");
        } else {
            porcentaje = 0.05; // 5% de descuento
            System.out.println("*** Descuento del 5% (Compra < S/.100) ***");
        }
        
        descuentoAplicado = compra * porcentaje;
        return descuentoAplicado;
    }

    // Método void sin parámetros - Muestra el reporte
    static void mostrarReporte() {
        System.out.println("");
        System.out.println("--- Reporte de Compra ---");
        System.out.println("---");
        System.out.println("Importe de la compra : S/. " + importeCompra);
        System.out.println("Descuento aplicado   : S/. " + descuento);
        System.out.println("Importe a pagar      : S/. " + importePagar);
        System.out.println("---");
    }

    public static void main(String[] args) {
        leerDatos();  // Llamada al método void sin parámetros
        descuento = calcularDescuento(importeCompra);  // Llamada con valor de retorno
        importePagar = importeCompra - descuento;
        mostrarReporte();  // Llamada al método void sin parámetros
        scanner.close();
    }
}