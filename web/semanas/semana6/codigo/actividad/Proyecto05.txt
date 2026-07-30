package semana06.actividad;

import java.util.Scanner;

public class Proyecto05 {
    
    static class Producto {
        String descripcion;
        double precio;
        
        Producto(String descripcion, double precio) {
            this.descripcion = descripcion;
            this.precio = precio;
        }
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        Producto[] productos = {
            new Producto("Cuadernos LayConsa", 1.50),
            new Producto("Cuadernos Justus", 1.90),
            new Producto("Cuadernos StanFord", 3.50),
            new Producto("Cuadernos David", 2.50),
            new Producto("Cuadernos College", 3.00),
            new Producto("Cuadernos Alpha", 4.50)
        };
        
        System.out.println("=== VENTA DE CUADERNOS ===");
        System.out.println("Lista de productos:");
        for (int i = 0; i < productos.length; i++) {
            System.out.printf("%d. %s - S/. %.2f\n", (i+1), productos[i].descripcion, productos[i].precio);
        }
        
        System.out.print("\nSeleccione el número del producto: ");
        int opcion = scanner.nextInt() - 1;
        
        if (opcion < 0 || opcion >= productos.length) {
            System.out.println("Opción no válida");
            scanner.close();
            return;
        }
        
        System.out.print("Ingrese la cantidad: ");
        int cantidad = scanner.nextInt();
        
        if (cantidad <= 0) {
            System.out.println("Cantidad no válida");
            scanner.close();
            return;
        }
        
        double total = productos[opcion].precio * cantidad;
        
        System.out.println("\n=== DETALLE DE VENTA ===");
        System.out.println("Producto: " + productos[opcion].descripcion);
        System.out.println("Precio unitario: S/. " + productos[opcion].precio);
        System.out.println("Cantidad: " + cantidad);
        System.out.println("Total a pagar: S/. " + total);
        
        scanner.close();
    }
}