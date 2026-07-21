package proyecto01;

import java.util.Scanner;

public class TiendaDescuento11 {
    // Variables globales
    static Scanner scanner = new Scanner(System.in);
    static double precio, importeCompra, descuento, importePagar;
    static int cantidad;

    // Método tipo void sin parámetros - Lee los datos
    static void leerDatos() {
        System.out.print("Ingrese el precio del producto: ");
        precio = scanner.nextDouble();
        System.out.print("Ingrese la cantidad de unidades: ");
        cantidad = scanner.nextInt();
    }

    // Método tipo void sin parámetros - Calcula y muestra resultados
    static void calcularMostrar() {
        importeCompra = precio * cantidad;
        descuento = 0.11 * importeCompra;
        importePagar = importeCompra - descuento;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Precio del producto      : " + precio);
        System.out.println("Cantidad de unidades     : " + cantidad);
        System.out.println("Importe de la compra     : " + importeCompra);
        System.out.println("Descuento (11%)          : " + descuento);
        System.out.println("Importe a pagar          : " + importePagar);
        System.out.println("Obsequio de caramelos    : " + (cantidad * 2) + " caramelos");
        System.out.println("---");
    }

    public static void main(String[] args) {
        leerDatos();        // Llamada al método void sin parámetros
        calcularMostrar();  // Llamada al método void sin parámetros
        scanner.close();
    }
}