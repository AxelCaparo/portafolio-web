package proyecto01;

import java.util.Scanner;

public class CompraCamisas {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double precio, importeCompra, primerDescuento, segundoDescuento, descuentoTotal, importePagar;
        int cantidad;

        System.out.print("Ingrese el precio de la camisa: ");
        precio = scanner.nextDouble();
        System.out.print("Ingrese la cantidad de unidades adquiridas: ");
        cantidad = scanner.nextInt();

        importeCompra = precio * cantidad;
        primerDescuento = 0.07 * importeCompra;
        segundoDescuento = 0.07 * (importeCompra - primerDescuento);
        descuentoTotal = primerDescuento + segundoDescuento;
        importePagar = importeCompra - descuentoTotal;

        System.out.println("");
        System.out.println("--- Reporte ---");
        System.out.println("---");
        System.out.println("Precio de la camisa        : " + precio);
        System.out.println("Cantidad de unidades       : " + cantidad);
        System.out.println("Importe de la compra       : " + importeCompra);
        System.out.println("Primer descuento (7%)      : " + primerDescuento);
        System.out.println("Segundo descuento (7%)     : " + segundoDescuento);
        System.out.println("Descuento total            : " + descuentoTotal);
        System.out.println("Importe a pagar            : " + importePagar);
        System.out.println("---");

        scanner.close();
    }
}