package proyecto03;

import java.util.Scanner;

public class PromedioFinal {
    static Scanner scanner = new Scanner(System.in);
    static double nota1, nota2, nota3, nota3Final, promedioFinal;

    // Método void sin parámetros - Lee los datos
    static void leerDatos() {
        System.out.print("Ingrese la nota de la Práctica 1 (0-20): ");
        nota1 = scanner.nextDouble();
        System.out.print("Ingrese la nota de la Práctica 2 (0-20): ");
        nota2 = scanner.nextDouble();
        System.out.print("Ingrese la nota de la Práctica 3 (0-20): ");
        nota3 = scanner.nextDouble();
    }

    // Método con valor de retorno con parámetros - Calcula el promedio
    static double calcularPromedio(double n1, double n2, double n3) {
        double nota3Modificada = n3;
        
        // Sentencia selectiva if - Incrementa 2 puntos si la nota3 es >= 10
        if (n3 >= 10) {
            nota3Modificada = n3 + 2;
            // Si la nota supera 20, se queda en 20 (nota máxima)
            if (nota3Modificada > 20) {
                nota3Modificada = 20;
            }
            System.out.println("*** Se incrementó 2 puntos a la Práctica 3 ***");
            System.out.println("Nota Práctica 3 original: " + n3);
            System.out.println("Nota Práctica 3 final   : " + nota3Modificada);
        } else {
            System.out.println("*** No se aplicó incremento (nota < 10) ***");
        }
        
        nota3Final = nota3Modificada;
        return (n1 + n2 + nota3Modificada) / 3;
    }

    // Método void sin parámetros - Muestra el reporte
    static void mostrarReporte() {
        System.out.println("");
        System.out.println("--- Reporte de Promedio Final ---");
        System.out.println("---");
        System.out.println("Práctica 1          : " + nota1);
        System.out.println("Práctica 2          : " + nota2);
        System.out.println("Práctica 3 original : " + nota3);
        System.out.println("Práctica 3 final    : " + nota3Final);
        System.out.println("Promedio Final      : " + promedioFinal);
        System.out.println("---");
        
        // Sentencia selectiva if para mostrar si aprobó o desaprobó
        if (promedioFinal >= 13) {
            System.out.println("¡APROBADO! Felicitaciones.");
        } else {
            System.out.println("DESAPROBADO. Debe mejorar.");
        }
        System.out.println("---");
    }

    public static void main(String[] args) {
        leerDatos();  // Llamada al método void sin parámetros
        
        // Llamada al método con valor de retorno con parámetros
        promedioFinal = calcularPromedio(nota1, nota2, nota3);
        
        mostrarReporte();  // Llamada al método void sin parámetros
        scanner.close();
    }
}