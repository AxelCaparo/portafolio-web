package proyecto02;

import java.util.Scanner;

public class Descuento10_10 {
    // Variables globales
    static Scanner scanner = new Scanner(System.in);
    static double precio, importeCompra;
    static int cantidad;

    // Método tipo void sin parámetros - Lee los datos
    static void leerDatos() {
        System.out.print("Ingrese el precio del producto: ");
        precio = scanner.nextDouble();
        System.out.print("Ingrese la cantidad de unidades: ");
        cantidad = scanner.nextInt();
    }

    // Método con valor de retorno sin parámetros - Calcula el descuento total
    static double calcularDescuentoTotal() {
        double primerDescuento, segundoDescuento, descuentoTotal;
        importeCompra = precio * cantidad;
        primerDescuento = 0.10 * importeCompra;
        segundoDescuento = 0.10 * (importeCompra - primerDescuento);
        descuentoTotal = primerDescuento + segundoDescuento;
        return descuentoTotal;
    }

    public static void main(String[] args) {
        double descuentoTotal, importePagar;

        leerDatos();  // Llamada al método void sin parámetros

        // Llamada al método con valor de retorno sin parámetros
        descuentoTotal = calcularDescuentoTotal();

        importePagar = importeCompra - descuentoTotal;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Precio del producto  : " + precio);
        System.out.println("Cantidad de unidades : " + cantidad);
        System.out.println("Importe de la compra : " + importeCompra);
        System.out.println("Descuento total      : " + descuentoTotal);
        System.out.println("Importe a pagar      : " + importePagar);
        System.out.println("---");

        scanner.close();
    }
}