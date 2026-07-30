package proyecto04;

import java.util.Scanner;

public class DescuentoPasajes {
    static Scanner scanner = new Scanner(System.in);

    // Método con valor de retorno con parámetros - Calcula el descuento
    static double calcularDescuento(double importeCompra) {
        return 0.07 * importeCompra;
    }

    public static void main(String[] args) {
        double precioPasaje, importeCompra, descuento, importePagar;
        int cantidad;

        System.out.print("Ingrese el precio del pasaje: ");
        precioPasaje = scanner.nextDouble();
        System.out.print("Ingrese la cantidad de pasajes: ");
        cantidad = scanner.nextInt();

        importeCompra = precioPasaje * cantidad;

        // Llamada al método con valor de retorno con parámetros
        descuento = calcularDescuento(importeCompra);

        importePagar = importeCompra - descuento;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Precio del pasaje    : " + precioPasaje);
        System.out.println("Cantidad de pasajes  : " + cantidad);
        System.out.println("Importe de la compra : " + importeCompra);
        System.out.println("Descuento (7%)       : " + descuento);
        System.out.println("Importe a pagar      : " + importePagar);
        System.out.println("---");

        scanner.close();
    }
}