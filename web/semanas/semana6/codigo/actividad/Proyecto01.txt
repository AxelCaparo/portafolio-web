package semana06.actividad;

import java.util.Scanner;

public class Proyecto01 {
    // 1. VOID SIN PARÁMETROS
    public static void saludo() {
        System.out.println("--- SERIE ARITMÉTICA (+7) ---");
    }

    // 2. RETORNO SIN PARÁMETROS
    public static int leerTerminos() {
        Scanner sc = new Scanner(System.in);
        System.out.print("¿Cuántos términos desea procesar?: ");
        return sc.nextInt();
    }

    // 3. RETORNO CON PARÁMETROS (Lógica de la serie)
    public static int generarYSumarSerie(int n) {
        int suma = 0;
        int termino = 3;
        for (int i = 1; i <= n; i++) {
            System.out.print(termino + (i == n ? "" : ", "));
            suma += termino;
            termino += 7;
        }
        System.out.println();
        return suma;
    }

    // 4. VOID CON PARÁMETROS
    public static void mostrarTotal(int t) {
        System.out.println("La suma total de la serie es: " + t);
    }

    public static void main(String[] args) {
        saludo();
        int n = leerTerminos();
        int sumaFinal = generarYSumarSerie(n);
        mostrarTotal(sumaFinal);
    }
}