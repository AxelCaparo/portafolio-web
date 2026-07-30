package semana06;

import java.util.Scanner;

public class CalculadoraCompleta {

    // 1. Método VOID SIN PARÁMETROS
    // Se usa solo para mostrar información fija en pantalla.
    public static void mostrarMenu() {
        System.out.println("\nMenu de Opciones");
        System.out.println("[1] Suma");
        System.out.println("[2] Resta");
        System.out.println("[3] Multiplicación");
        System.out.println("[4] Division");
        System.out.println("[5] Salir");
        System.out.print("Ingrese opcion: ");
    }

    // 2. Método con RETORNO SIN PARÁMETROS
    // Se encarga de capturar la entrada del usuario y devolverla al main.
    public static int pedirDato() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese Numero: ");
        return sc.nextInt();
    }

    // 3. Método con RETORNO Y CON PARÁMETROS
    // Realiza el cálculo matemático y devuelve el resultado.
    public static int calcularSuma(int a, int b) {
        return a + b;
    }

    public static int calcularResta(int a, int b) {
        return a - b;
    }

    public static int calcularMultiplicacion(int a, int b) {
        return a * b;
    }

    // 4. Método VOID CON PARÁMETROS
    // Recibe el resultado y se encarga de darle formato a la salida.
    public static void mostrarResultado(String operacion, int resultado) {
        System.out.println("La " + operacion + " es: " + resultado);
    }

    public static void main(String[] args) {
        Scanner scMain = new Scanner(System.in);
        int opcion;

        do {
            // Llamada a método void sin parámetros
            mostrarMenu();
            opcion = scMain.nextInt();

            if (opcion >= 1 && opcion <= 4) {
                // Llamada a método con retorno sin parámetros
                int n1 = pedirDato();
                int n2 = pedirDato();

                switch (opcion) {
                    case 1:
                        // Llamada a retorno con parámetros y void con parámetros
                        int suma = calcularSuma(n1, n2);
                        mostrarResultado("Suma", suma);
                        break;
                    case 2:
                        int resta = calcularResta(n1, n2);
                        mostrarResultado("Resta", resta);
                        break;
                    case 3:
                        int mult = calcularMultiplicacion(n1, n2);
                        mostrarResultado("Multiplicación", mult);
                        break;
                    case 4:
                        if (n2 != 0) {
                            System.out.println("La Division es: " + (double)n1 / n2);
                        } else {
                            System.out.println("Error: No se puede dividir por 0.");
                        }
                        break;
                }
            }
        } while (opcion != 5);

        System.out.println("Programa terminado.");
    }
}