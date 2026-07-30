package semana07;

import java.util.Scanner;
import java.util.Random;

public class EstadisticasArreglo {
    Scanner sc = new Scanner(System.in);
    Random rand = new Random();
    
    // VOID SIN PARÁMETROS
    public void estadisticasVoidSinParam() {
        System.out.print("Tamaño del arreglo: ");
        int tamaño = sc.nextInt();
        System.out.print("Mínimo: ");
        int min = sc.nextInt();
        System.out.print("Máximo: ");
        int max = sc.nextInt();
        
        int[] arreglo = new int[tamaño];
        for (int i = 0; i < tamaño; i++) {
            arreglo[i] = rand.nextInt(max - min + 1) + min;
        }
        
        calcularYMostrar(arreglo);
    }
    
    // VOID CON PARÁMETROS
    public void estadisticasVoidConParam(int[] arreglo) {
        calcularYMostrar(arreglo);
    }
    
    // CON RETORNO SIN PARÁMETROS
    public int[] estadisticasRetornoSinParam() {
        System.out.print("Tamaño del arreglo: ");
        int tamaño = sc.nextInt();
        System.out.print("Mínimo: ");
        int min = sc.nextInt();
        System.out.print("Máximo: ");
        int max = sc.nextInt();
        
        int[] arreglo = new int[tamaño];
        for (int i = 0; i < tamaño; i++) {
            arreglo[i] = rand.nextInt(max - min + 1) + min;
        }
        
        return calcularEstadisticas(arreglo);
    }
    
    // CON RETORNO CON PARÁMETROS
    public int[] estadisticasRetornoConParam(int[] arreglo) {
        return calcularEstadisticas(arreglo);
    }
    
    // Método auxiliar para mostrar
    private void calcularYMostrar(int[] arreglo) {
        int maximo = arreglo[0];
        int minimo = arreglo[0];
        int sumaAbs = 0;
        
        System.out.print("\nArreglo: ");
        for (int num : arreglo) {
            System.out.print(num + " ");
            if (num > maximo) maximo = num;
            if (num < minimo) minimo = num;
            sumaAbs += Math.abs(num);
        }
        
        System.out.println("\nMáximo: " + maximo);
        System.out.println("Mínimo: " + minimo);
        System.out.println("Suma de absolutos: " + sumaAbs);
    }
    
    // Método auxiliar para calcular estadísticas
    private int[] calcularEstadisticas(int[] arreglo) {
        int[] stats = new int[3];
        stats[0] = arreglo[0]; // max
        stats[1] = arreglo[0]; // min
        stats[2] = 0; // sumaAbs
        
        for (int num : arreglo) {
            if (num > stats[0]) stats[0] = num;
            if (num < stats[1]) stats[1] = num;
            stats[2] += Math.abs(num);
        }
        return stats;
    }
    
    public static void main(String[] args) {
        EstadisticasArreglo obj = new EstadisticasArreglo();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.estadisticasVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Tamaño: ");
        int t = obj.sc.nextInt();
        System.out.print("Mínimo: ");
        int min = obj.sc.nextInt();
        System.out.print("Máximo: ");
        int max = obj.sc.nextInt();
        int[] arr = new int[t];
        for (int i = 0; i < t; i++) {
            arr[i] = obj.rand.nextInt(max - min + 1) + min;
        }
        obj.estadisticasVoidConParam(arr);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        int[] s1 = obj.estadisticasRetornoSinParam();
        System.out.println("Máx: " + s1[0] + ", Mín: " + s1[1] + ", SumaAbs: " + s1[2]);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Tamaño: ");
        int t2 = obj.sc.nextInt();
        System.out.print("Mínimo: ");
        int min2 = obj.sc.nextInt();
        System.out.print("Máximo: ");
        int max2 = obj.sc.nextInt();
        int[] arr2 = new int[t2];
        for (int i = 0; i < t2; i++) {
            arr2[i] = obj.rand.nextInt(max2 - min2 + 1) + min2;
        }
        int[] s2 = obj.estadisticasRetornoConParam(arr2);
        System.out.println("Máx: " + s2[0] + ", Mín: " + s2[1] + ", SumaAbs: " + s2[2]);
        
        obj.sc.close();
    }
}